#include <stdio.h>

#include "drm.h"
#include "include/sodium.h"
#include "platform.h"
#include "secrets.h"
#include "sleep.h"
#include "util.h"
#include "xaxidma.h"
#include "xil_exception.h"
#include "xil_mem.h"
#include "xintc.h"
#include "xparameters.h"
#include "xstatus.h"

//////////////////////// GLOBALS ////////////////////////
// Current user struct
user_md UserMD;

// DRM metadata struct
drm_md DeviceMD;

// Song metadata struct
song_md SongMD;

// Command channel struct
volatile cmd_channel *CMDChannel = (cmd_channel *)SHARED_DDR_BASE;

// LED colors and controller
u32 *led = (u32 *) XPAR_RGB_PWM_0_PWM_AXI_BASEADDR;
const struct color RED = {0x01ff, 0x0000, 0x0000};
const struct color YELLOW = {0x01ff, 0x01ff, 0x0000};
const struct color GREEN = {0x0000, 0x01ff, 0x0000};
const struct color BLUE = {0x0000, 0x0000, 0x01ff};

// audio DMA access
static XAxiDma sAxiDma;

//////////////////////// INTERRUPT HANDLING ////////////////////////

// shared variable between main thread and interrupt processing thread
volatile static int InterruptProcessed = FALSE;
static XIntc InterruptController;

void myISR(void) { InterruptProcessed = TRUE; }

int initMicroBlaze() {
    u32 status;

    // Initialize MicroBlaze platform
    init_platform();
    microblaze_register_handler((XInterruptHandler) myISR, (void *) 0);
    microblaze_enable_interrupts();

    // Initialize the interrupt controller driver so that it is ready to use.
    status = XIntc_Initialize(&InterruptController, XPAR_INTC_0_DEVICE_ID);
    if (status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    // Set up the Interrupt System.
    status = SetUpInterruptSystem(&InterruptController, (XInterruptHandler) myISR);
    if (status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    // Configure the DMA
    status = fnConfigDma(&sAxiDma);
    if (status != XST_SUCCESS) {
        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: DMA configuration failed!");
        return XST_FAILURE;
    }

    // Start the LED
    enableLED(led);

    setState(STOPPED);

    return status;
}

//////////////////////// HELPER FUNCTIONS ////////////////////////
// Set state of drm and LED color
void __attribute__((noinline,section(".chacha20_setState")))setState(STATE state) {
    DeviceMD.state = state;
    switch (state) {
        case WORKING:
            setLED(led, YELLOW);
            break;
        case PLAYING:
            setLED(led, GREEN);
            break;
        case PAUSED:
            setLED(led, BLUE);
            break;
        case STOPPED:
        default:
            setLED(led, RED);
            break;
    }
}

int __attribute__((noinline,section(".chacha20_loadSong")))loadSong() {

}

int __attribute__((noinline,section(".chacha20_decryptSong")))decryptSong() {

}

/**
 * @brief Checks whether the user can access the song.
 * @return access status
 */
int __attribute__((noinline,section(".chacha20_checkAuth")))checkAuth() {
    int user_access = 0;
    int region_access = 0;
    /* Check user is logged in */
    if (!UserMD.logged_in) {
        /* Check user is owner or shared user */
        if (!sodium_memcmp(SongMD.owner, UserMD.name, sizeof(SongMD.owner))) {
            user_access = 0;
            for (int i = 0; i < PROVISIONED_USERS; i++) {
                if (sodium_memcmp(SongMD.shared[i], UserMD.name, sizeof(SongMD.shared[i]))) {
                    user_access = 1;
                    break;
                }
            }
        } else { user_access = 1; }
    }

    /* Check song region matches player */
    for (int i = 0; i < SongMD.region_num; i++) {
        for (int j = 0; j < PROVISIONED_REGIONS; j++) {
            /* TODO: Somebody double-check my logic here */
            if (sodium_memcmp(SongMD.region_list[i], region_data[i].name, MAX_REGION_SZ)) {
                region_access = 1;
                break;
            }
        }
    }

    if (!user_access) { xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: User has no access!"); }
    if (!region_access) { xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: Region locked!"); }

    return (user_access && region_access);
}

//////////////////////// COMMAND FUNCTIONS ////////////////////////
/**
 * @brief Logs in a user with the correct username and pin
 * @param username - the user's username, (len: 1-15, chars: a-z, A-Z)
 * @param pin - the user's pin, (len: 8-64, chars: 0-9)
 */
void __attribute__((noinline,section(".chacha20_logOn")))logOn(char *username, char *pin) {
    // check if logged in
    if (UserMD.logged_in) {
        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: User already logged-in.");
        return;
    } else {
        // search username
        for (int i = 0; i < PROVISIONED_USERS; i++) {
            if (sodium_memcmp(user_data[i].name, username, sizeof(user_data[i].name))) {
                // generate and search hash
                if (crypto_pwhash_str_verify(user_data[i].pin_hash, pin, strlen(pin))) {
                    UserMD.name = user_data[i].name;
                    UserMD.pin_hash = user_data[i].pin_hash;
                    UserMD.hw_secret = user_data[i].hw_secret;
                    UserMD.pub_key = user_data[i].pub_key;
                    UserMD.pvt_key_enc = user_data[i].pvt_key;
                    UserMD.logged_in = 1;
                }
                xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: User not found");
                sodium_memzero(&UserMD, sizeof(UserMD));
                // delay failed attempt by 5 seconds
                sleep(LOGIN_DELAY);
            }
        }
    }
}

/**
 * @brief Logs current user off.
 */
void __attribute__((noinline,section(".chacha20_logOff")))logOff() {
    // check if logged in
    if (UserMD.logged_in) {
        xil_printf("%s%s\r\n", MB_PROMPT, "INFO: Logging out...");
        sodium_memzero(&UserMD, sizeof(UserMD));
    } else {
        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: Not logged in");
        return;
    }
}

/**
 * @brief Allows owner to share access of the song to another user.
 * @param recipient - the user in which the owner wants to share song access to.
 */
void __attribute__((noinline,section(".chacha20_share")))share(char *recipient) {
    int index = -1;
    int check_1 = 0;
    int check_2 = 1;
    int check_3 = 0;

    /* Check song is loaded */
    if (!SongMD.loaded) {
        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: No song loaded!");
        sodium_memzero(&SongMD, sizeof(SongMD));
        return;
    }
    
    /* Check user is logged in */
    if (!UserMD.logged_in) {
        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: Not logged in!");
        sodium_memzero(&SongMD, sizeof(SongMD));
        return;
    }
    
    /* Check user is the song owner */
    if (!sodium_memcmp(SongMD.owner, UserMD.name, sizeof(SongMD.owner))) {
        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: Not song owner!");
        sodium_memzero(&SongMD, sizeof(SongMD));
        return;
    }
    
    /* Loop through every user in database */
    for (int i = 0; i < PROVISIONED_USERS; i++) {
        /* check recipient exists */
        if (sodium_memcmp(user_data[i].name, recipient, sizeof(user_data[i].name))) { check_1 = 1; }
        
        /* Check recipient doesn't already have access */
        if (sodium_memcmp(SongMD.shared[i], recipient, sizeof(SongMD.shared[i]))) { check_2 = 0; }
        
        /* Check for an empty spot */
        if (sodium_memcmp(SongMD.shared[i], NULL, sizeof(SongMD.shared[i]))) { check_3 = 1; index = i; }
    }
    
    /* This odd code prevents ugly nested if-statements and multiple loops*/
    if (!check_1){
        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: User does not exist!");
        sodium_memzero(&SongMD, sizeof(SongMD));
        return;
    }
    if (check_2){
        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: User already has access!");
        sodium_memzero(&SongMD, sizeof(SongMD));
        return;
    }
    if (!check_3) {
        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: Too many shared users!");
        sodium_memzero(&SongMD, sizeof(SongMD));
        return;
    }
    if (index < 0) {
        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: Something went terribly wrong.");
        sodium_memzero(&SongMD, sizeof(SongMD));
        return;
    }

    /* Add recipient to list if conditions are met */
    strcpy(SongMD.shared[index], recipient);

    /*
     * TODO: write shared list somewhere...
     * - song metadata?
     * - ext file?
     */
}

/**
 * @brief List the users and regions that a song has been provisioned for.
 */
void __attribute__((noinline,section(".chacha20_querySong")))querySong() {
    // check if logged in
    if (!UserMD.logged_in) {
        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: Not logged in");
        return;
    }
    
    /* Check song is loaded */
    if (!SongMD.loaded) {
        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: No song loaded!");
        sodium_memzero(&SongMD, sizeof(SongMD));
        return;
    }
    
    /* Print song regions */
    xil_printf("%s%s", MB_PROMPT, "Regions:");
    for (int i = 0; i < SongMD.region_num; i++) {
        if (SongMD.region_list[i] != NULL) {
            xil_printf(" %s", SongMD.region_list[i]);
        } else if (SongMD.region_list[i] != NULL && i == SongMD.region_num -1) {
            xil_printf(" %s", SongMD.region_list[i]);
        }
    }
    
    /* Print song owner */
    xil_printf("%s%s %s", MB_PROMPT, "Owner:", SongMD.owner);
    
    /* Print shared users */
    xil_printf("%s%s", MB_PROMPT, "Authorized users:");
    for (int i = 0; i < PROVISIONED_USERS; i++) {
        if (SongMD.shared[i] != NULL) {
            xil_printf(" %s,", SongMD.shared[i]);
        } else if (SongMD.shared[i] != NULL && i == PROVISIONED_USERS -1) {
            xil_printf(" %s", SongMD.shared[i]);
        }
    }
    xil_printf("\r\n");
}

void __attribute__((noinline,section(".chacha20_queryPlayer")))queryPlayer() {
    /* Print player regions */
    xil_printf("%s%s", MB_PROMPT, "Regions:");
    for (int i = 0; i < PROVISIONED_REGIONS; i++) {
        if (region_data[i].name != NULL) {
            xil_printf(" %s,", region_data[i].name);
        } else if (region_data[i].name != NULL && i == PROVISIONED_REGIONS -1) {
            xil_printf(" %s", region_data[i].name);
        }
    }

    /* Print device users */
    xil_printf("%s%s", MB_PROMPT, "Authorized users:");
    for (int i = 0; i < PROVISIONED_USERS; i++) {
        if (user_data[i].name != NULL && i < PROVISIONED_USERS -1) {
            xil_printf(" %s,", user_data[i].name);
        } else if (user_data[i].name != NULL && i == PROVISIONED_USERS -1) {
            xil_printf(" %s", user_data[i].name);
        }
    }
    xil_printf("\r\n");
}

void __attribute__((noinline,section(".chacha20_digitalOut")))digitalOut(char* songBuffer) {
    /* Check authorization */
    if (checkAuth()) {
        /* Export full song */
        //xil_printf("%s", "Dumping song (%dB)...", MB_PROMPT, c->song.wav_size);
    } else {
        xil_printf("%s%s\r\n", MB_PROMPT, "Only playing 30 seconds");

    }
    xil_printf("%s%s" MB_PROMPT, "Song dump finished\r\n");
}

void __attribute__((noinline,section(".chacha20_play")))play() {
    u32 counter = 0, rem, cp_num, cp_xfil_cnt, offset, dma_cnt, length, *fifo_fill;

    /* Load song */
    if (loadSong()) {
        xil_printf("%s%s" MB_PROMPT, "ERROR: Song load failed!\r\n");
    }

    /* Check authorization */
    if (checkAuth()) {
        /* Play full song */
        length = SongMD.song_length;
    } else {
        /* Play sample song */
        length = PREVIEW_SZ;
    }

    rem = length;
    fifo_fill = (u32 *)XPAR_FIFO_COUNT_AXI_GPIO_0_BASEADDR;

    // write entire file to two-block codec fifo
    // writes to one block while the other is being played
    setState(PLAYING);
    while (rem > 0) {
        // check for interrupt to stop playback
        while (InterruptProcessed) {
            InterruptProcessed = FALSE;

            switch (CMDChannel->cmd) {
                case PAUSE:
                    xil_printf("%s%s" MB_PROMPT, "Pausing...\r\n");
                    setState(PAUSED);
                    while (!InterruptProcessed)
                        continue; // wait for interrupt
                    break;
                case PLAY:
                    xil_printf("%s%s" MB_PROMPT, "Resuming...\r\n");
                    setState(PLAYING);
                    break;
                case STOP:
                    xil_printf("%s%s" MB_PROMPT, "Stopping playback...\r\n");
                    return;
                case RESTART:
                    xil_printf("%s%s" MB_PROMPT, "Restarting Song...\r\n");
                    rem = length; // reset song counter
                    setState(PLAYING);
                default:
                    break;
            }
        }

        // calculate write size and offset
        cp_num = (rem > CHUNK_SZ) ? CHUNK_SZ : rem;
        offset = (counter++ % 2 == 0) ? 0 : CHUNK_SZ;

        // do first mem cpy here into DMA BRAM
        Xil_MemCpy((void *)(XPAR_MB_DMA_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + offset),
                   (void *)(get_drm_song(CMDChannel->song) + length - rem), (u32)(cp_num));

        cp_xfil_cnt = cp_num;

        while (cp_xfil_cnt > 0) {

            // polling while loop to wait for DMA to be ready
            // DMA must run first for this to yield the proper state
            // rem != length checks for first run
            while (XAxiDma_Busy(&sAxiDma, XAXIDMA_DMA_TO_DEVICE) && rem != length &&
                   *fifo_fill < (FIFO_CAP - 32))
                ;

            // do DMA
            dma_cnt = (FIFO_CAP - *fifo_fill > cp_xfil_cnt) ? FIFO_CAP - *fifo_fill
                                                            : cp_xfil_cnt;
            fnAudioPlay(sAxiDma, offset, dma_cnt);
            cp_xfil_cnt -= dma_cnt;
        }
        rem -= cp_num;
    }
}

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wmissing-noreturn"

//////////////////////// MAIN FUNCTION ////////////////////////
int main() {

    if (initMicroBlaze() == XST_FAILURE) {
        return XST_FAILURE;
    }

    // Clear command channel
    // memset((void *)c, 0, sizeof(cmd_channel));

    xil_printf("%s%s\r\n", MB_PROMPT, "INFO: Audio DRM Module has booted!");

    // Run forever
    while (1) {
        // Wait for interrupt to start
        if (InterruptProcessed) {
            InterruptProcessed = FALSE;
            setState(WORKING);

            /*switch (command) { // TODO: Set command to something
                case LOGIN:
                    logOn(); // TODO: Add parameters?
                    break;
                case LOGOUT:
                    logOff();
                    break;
                case QUERY_SONG:
                    querySong();
                    break;
                case QUERY_PLAYER:
                    queryPlayer();
                    break;
                case SHARE:
                    share(); // TODO: Add parameters?
                    break;
                case PLAY:
                    play();
                    xil_printf("%s%s\r\n", MB_PROMPT, "INFO: Done Playing Song");
                    break;
                case DIGITAL_OUT:
                    digitalOut();
                    break;
                default:
                    xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: Not a command!");
                    break;
            }*/

            // Not sure why, but MITRE does this
            nsleep(5000); // Was previously 500us
            setState(STOPPED);
        }
    }

    // TODO: Set a way to reach this unreachable code
    cleanup_platform();
    return 0;
}

#pragma clang diagnostic pop
