#include <stdio.h>

#include "drm.h"
#include "monocypher.h"
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

/* Command channel struct */
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
/**
 * @brief Set state of drm and LED color
 * @param state - The state of the player/drm
 */
void setState(STATE state) {
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

/**
 * Store the CMD channel to less volatile structs
 */
int cacheCMD(int share) {
    if (share == 1) {
        /* Store the command */
        DeviceMD.cmd = CMDChannel->cmd;
        /* Store the drm state */
        DeviceMD.state = CMDChannel->drm_state;
        /* Store the current username */
        UserMD.CMDChannel->username;
        /* Hash the current user pin */
        uint8_t hash[32];
        crypto_argon2i(hash, 32, malloc(8 * 1024), 8, 3, CMDChannel->pin, MAX_PIN_SZ, salt, 16);
        /* Store the current user hash */
        UserMD.pin_hash = hash;
        /* TODO: Store the song */
        //CMDChannel->song;
    } else if (share == 0) { UserMD.recipient = CMDChannel->username; }

    /* Clear the cmd channel */
    crypto_wipe(CMDChannel, sizeof(CMDChannel));

    return 1;
}

int loadSong() {

}

int decryptSong() {

}

/**
 * @brief Checks whether the user can access the song.
 * @return access status
 */
int checkAuth() {
    int user_access = 0;
    int region_access = 0;
    /* Check user is logged in */
    if (UserMD.logged_in) {
        /* Check user is owner or shared user */
        if (!crypto_verify64(SongMD.owner, UserMD.name)) {
            user_access = 0;
            for (int i = 0; i < PROVISIONED_USERS; i++) {
                if (crypto_verify64(SongMD.shared[i], UserMD.name)) {
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
            if (crypto_verify64(SongMD.region_list[i], region_data[i].name)) {
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
void logOn() {
    // check if logged in
    if (UserMD.logged_in) {
        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: User already logged-in.");
        return;
    } else {
        // search username
        for (int i = 0; i < PROVISIONED_USERS; i++) {
            if (crypto_verify64(user_data[i].name, UserMD.name)) {
            	uint8_t hash[32];
            	uint8_t salt[16];

            	// check hash
            	if (crypto_verify32(user_data[i].pin_hash, UserMD.pin_hash)) {
            		UserMD.name = user_data[i].name;
            		UserMD.pin_hash = user_data[i].pin_hash;
            		UserMD.hw_secret = user_data[i].hw_secret;
            		UserMD.pub_key = user_data[i].pub_key;
            	    UserMD.pvt_key_enc = user_data[i].pvt_key;
            		UserMD.logged_in = 1;
            	}
                xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: User not found");
                crypto_wipe(&UserMD, sizeof(UserMD));
                // delay failed attempt by 5 seconds
                sleep(LOGIN_DELAY);
            }
        }
    }
}

/**
 * @brief Logs current user off.
 */
void logOff() {
    // check if logged in
    if (UserMD.logged_in) {
        xil_printf("%s%s\r\n", MB_PROMPT, "INFO: Logging out...");
        crypto_wipe(&UserMD, sizeof(UserMD));
    } else {
        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: Not logged in");
        return;
    }
}

/**
 * @brief Allows owner to share access of the song to another user.
 * @param recipient - the user in which the owner wants to share song access to.
 */
void share() {
    int index = -1;
    int check_1 = 0;
    int check_2 = 1;
    int check_3 = 0;

    /* Cache CMD channel _differently_ */
    if (!cacheCMD(1)) {
        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: Failed to copy CMD Channel!");
        return;
    }

    /* Check song is loaded */
    if (!SongMD.loaded) {
        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: No song loaded!");
        crypto_wipe(&SongMD, sizeof(SongMD));
        return;
    }
    
    /* Check user is logged in */
    if (!UserMD.logged_in) {
        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: Not logged in!");
        crypto_wipe(&SongMD, sizeof(SongMD));
        return;
    }
    
    /* Check user is the song owner */
    if (!crypto_verify64(SongMD.owner, UserMD.name)) {
        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: Not song owner!");
        crypto_wipe(&SongMD, sizeof(SongMD));
        return;
    }
    
    /* Loop through every user in database */
    for (int i = 0; i < PROVISIONED_USERS; i++) {
        /* Check recipient exists */
        if (crypto_verify64(user_data[i].name, UserMD.recipient)) { check_1 = 1; }
        
        /* Check recipient doesn't already have access */
        if (crypto_verify64(SongMD.shared[i], UserMD.recipient)) { check_2 = 0; }
        
        /* Check for an empty spot */
        if (crypto_verify16(SongMD.shared[i], NULL)) { check_3 = 1; index = i; }
    }
    
    /* This odd code prevents ugly nested if-statements and multiple loops*/
    if (!check_1){
        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: User does not exist!");
        crypto_wipe(&SongMD, sizeof(SongMD));
        return;
    }
    if (check_2){
        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: User already has access!");
        crypto_wipe(&SongMD, sizeof(SongMD));
        return;
    }
    if (!check_3) {
        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: Too many shared users!");
        crypto_wipe(&SongMD, sizeof(SongMD));
        return;
    }
    if (index < 0) {
        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: Something went terribly wrong.");
        crypto_wipe(&SongMD, sizeof(SongMD));
        return;
    }

    /* Add recipient to list if conditions are met */
    strcpy(SongMD.shared[index], UserMD.recipient);

    xil_printf("%s%s%s\r\n", MB_PROMPT, "Song shared with:", UserMD.recipient);

    /*
     * TODO: write shared list somewhere...
     * - song metadata?
     * - ext file?
     */
}

/**
 * @brief List the users and regions that a song has been provisioned for.
 */
void querySong() {
    // check if logged in
    if (!UserMD.logged_in) {
        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: Not logged in");
        return;
    }
    
    /* Check song is loaded */
    if (!SongMD.loaded) {
        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: No song loaded!");
        crypto_wipe(&SongMD, sizeof(SongMD));
        return;
    }
    
    /* Print song regions */
    xil_printf("%s%s", MB_PROMPT, "Regions:");
    for (int i = 0; i < SongMD.region_num; i++) {
        if (SongMD.region_list[i] != NULL && i != PROVISIONED_REGIONS - 1) {
            xil_printf(" %s,", SongMD.region_list[i]);
        } else if (SongMD.region_list[i] != NULL && i == PROVISIONED_REGIONS - 1) {
            xil_printf(" %s", SongMD.region_list[i]);
        }
    }
    
    /* Print song owner */
    xil_printf("%s%s %s", MB_PROMPT, "Owner:", SongMD.owner);
    
    /* Print shared users */
    xil_printf("%s%s", MB_PROMPT, "Authorized users:");
    for (int i = 0; i < PROVISIONED_USERS; i++) {
        if (SongMD.shared[i] != NULL && i != PROVISIONED_USERS - 1) {
            xil_printf(" %s,", SongMD.shared[i]);
        } else if (SongMD.shared[i] != NULL && i == PROVISIONED_USERS -1) {
            xil_printf(" %s", SongMD.shared[i]);
        }
    }
    xil_printf("\r\n");
}

void queryPlayer() {
    /* Print player regions */
    xil_printf("%s%s", MB_PROMPT, "Regions:");
    for (int i = 0; i < PROVISIONED_REGIONS; i++) {
        if (region_data[i].name != NULL && i != PROVISIONED_REGIONS - 1) {
            xil_printf(" %s,", region_data[i].name);
        } else if (region_data[i].name != NULL && i == PROVISIONED_REGIONS -1) {
            xil_printf(" %s", region_data[i].name);
        }
    }

    /* Print device users */
    xil_printf("%s%s", MB_PROMPT, "Authorized users:");
    for (int i = 0; i < PROVISIONED_USERS; i++) {
        if (user_data[i].name != NULL && i != PROVISIONED_USERS - 1) {
            xil_printf(" %s,", user_data[i].name);
        } else if (user_data[i].name != NULL && i == PROVISIONED_USERS -1) {
            xil_printf(" %s", user_data[i].name);
        }
    }
    xil_printf("\r\n");
}

void digitalOut() { // TODO: How and what?
    /* Check authorization */
    if (checkAuth() ||  PREVIEW_SZ > SongMD.song_length) {
        /* Export full song */
        CMDChannel->song.file_size -= CMDChannel->song.md.md_size;
        CMDChannel->song.wav_size -= CMDChannel->song.md.md_size;
        xil_printf("%s", "Dumping song (%dB)...", MB_PROMPT, CMDChannel->song.wav_size);
    } else {
        xil_printf("%s%s\r\n", MB_PROMPT, "Only playing 30 seconds");
        CMDChannel->song.file_size -= CMDChannel->song.wav_size - PREVIEW_SZ;
        CMDChannel->song.wav_size = PREVIEW_SZ;
    }

    // move WAV file up in buffer, skipping metadata
    memmove((void *)&CMDChannel->song.md, (void *)get_drm_song(CMDChannel->song), CMDChannel->song.wav_size);

    xil_printf("%s%s" MB_PROMPT, "Song dump finished\r\n");
}

void play() {
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

            switch (DeviceMD.cmd) {
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
                   (void *)(get_drm_song(CMDChannel->song) + length - rem), (u32)(cp_num)); // TODO: what is?

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

    // TODO: Clear CMD Channel before accept?

    xil_printf("%s%s\r\n", MB_PROMPT, "INFO: Audio DRM Module has booted!");

    // Run forever
    while (1) {
        // Wait for interrupt to start
        if (InterruptProcessed) {
            InterruptProcessed = FALSE;
            setState(WORKING);

            switch (DeviceMD.cmd) {
                case LOGIN:
                    logOn();
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
                    share();
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
            }

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
