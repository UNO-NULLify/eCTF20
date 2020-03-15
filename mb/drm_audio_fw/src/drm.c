#include <stdio.h>
#include <stdlib.h>
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
/* Current user struct */
user_md UserMD;

/* Song metadata struct */
song_md SongMD;

/* Player data struct */
player_md PlayerMD;

/* Crypto Struct*/
// crypto Crypto;

/* Player State */
STATE state;

/* Command channel struct */
volatile cmd_channel *CMDChannel = (cmd_channel *)SHARED_DDR_BASE;

/* Command register */
 volatile u32* cmdreg = 0x80000000;		//todo use XPAR definition

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
static volatile int InterruptProcessed = FALSE;
static XIntc InterruptController;

void myISR(void) { InterruptProcessed = TRUE; }

int initMicroBlaze() {
    int status;

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

u32 read_cr()
{
	//read cr bits and adjust to match command enum format
	return ((*cmdreg) & 0x00FF0000) >> 16;
	*cmdreg |= 0xFFFFFFFF;
}

//////////////////////// HELPER FUNCTIONS ////////////////////////
/**
 * @brief Set state of drm and LED color
 * @param state - The state of the player/drm
 */
void setState(STATE s) {
    state = s;
    switch (s) {
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
 * @brief Store the CMD channel to less volatile structs
 * @note I hate this.
 */
int cacheCMD(char s) {
    switch (s) {
        case LOGIN:
            break;
        case LOGOUT:
            break;
        case QUERY_SONG:
            memcpy((void *)PlayerMD.song, (void *)CMDChannel->song, sizeof(CMDChannel->song));
            verifySong();
            break;
        case QUERY_PLAYER:
            break;
        case SHARE:
            memcpy((void *)UserMD.recipient, (void*)CMDChannel->username, MAX_USERNAME_SZ);
            break;
        case PLAY:
            memcpy((void *)PlayerMD.song, (void *)CMDChannel->song, sizeof(CMDChannel->song));
            break;
        case DIGITAL_OUT:
            memcpy((void *)PlayerMD.song, (void *)CMDChannel->song, sizeof(CMDChannel->song));
            break;
        default:
            break;
    }

    /* Clear the cmd channel */
    crypto_wipe(&CMDChannel, sizeof(CMDChannel));

    return 1;
}

void verifySong() {
    uint8_t public_key[32], toSign[15000], signature[64], hashtest[64], offset;
    char pub_str[64] = ROOT_VERIFY;
    /* Convert from hex string to uint8_t */
    for(int i = 0; i < 64; i = i + 2)
    {
        if(pub_str[i] >= '0' && pub_str[i] <= '9')
        {
            public_key[i/2] = pub_str[i] - '0';
        }
        else{
            public_key[i/2] = pub_str[i] - 'a' + 10;
        }

        public_key[i/2] = public_key[i/2] << 4;

        if(pub_str[i+1] >= '0' && pub_str[i+1] <= '9')
        {
            public_key[i/2] += pub_str[i+1] - '0';
        }
        else{
            public_key[i/2] += pub_str[i+1] - 'a' + 10;
        }
        xil_printf("\n\npublic key: %c\n\n", pub_str[i]);
    }

    /* Skip to end of shared_info */
    memcpy(toSign, SongMD.wav, sizeof(toSign - 1000));
    xil_printf("\n\nendfullsong:%ld\n\n", SongMD.endFullSong);
    memcpy(&toSign[14000], SongMD.wav + SongMD.endFullSong, 1000);

    memcpy(signature, SongMD.wav - 64, sizeof(signature));
    xil_printf("\n\nSIZE: %ld\n%d:%d:%d\n", sizeof signature, signature[0], signature[47], signature[63]);


    crypto_blake2b(hashtest, toSign, sizeof(toSign));
    xil_printf("\n\ntosign test: %d %d %d %d %d\n\n", toSign[0], toSign[14004], toSign[14001], toSign[14999], toSign[14000]);
    xil_printf("\n\nHASHTEST %d\n\n", hashtest[0]);
    /* 0 == Success, else == failure */
    int yay = crypto_check(signature, public_key, toSign, sizeof(toSign));
    xil_printf("\nyay =%d \n", yay);

    if(yay == 0){
        printf("Signature Verified!\n");
    }
      else
    {
           printf("TAMPER DETECTED\n");
    }
}

//////////////////////// MAIN FUNCTION ////////////////////////
int main() {
    *cmdreg |= 0xFFFFFFFF;

    if (initMicroBlaze() == XST_FAILURE) {
        return XST_FAILURE;
    }

    /* Initialize ALL THE STRUCTS! */
    crypto_wipe(&CMDChannel, sizeof(CMDChannel));
    crypto_wipe(&SongMD, sizeof(SongMD));
    crypto_wipe(&UserMD, sizeof(UserMD));
    crypto_wipe(&PlayerMD, sizeof(PlayerMD));

    xil_printf("%s%s\r\n", MB_PROMPT, "INFO: Audio DRM Module has booted!");

    // Run forever
    while (1) {
        // Wait for interrupt to start
        if (InterruptProcessed) {
            uint32_t cmd = read_cr();
            InterruptProcessed = FALSE;
            setState(WORKING);
            xil_printf("Command: %08X\r\n", cmd);

            switch (cmd) {
                case LOGIN:
                    /* Cache CMD channel _differently_ */
                    if (!cacheCMD(LOGIN)) {
                        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: Failed to copy CMD Channel!");
                        break;
                    }
                    break;
                case LOGOUT:
                    /* Cache CMD channel _differently_ */
                    if (!cacheCMD(LOGOUT)) {
                        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: Failed to copy CMD Channel!");
                        break;
                    }
                    break;
                case QUERY_SONG:
                    /* Cache CMD channel _differently_ */
                    if (!cacheCMD(QUERY_SONG)) {
                        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: Failed to copy CMD Channel!");
                        break;
                    }
                    break;
                case QUERY_PLAYER:
                    /* Cache CMD channel _differently_ */
                    if (!cacheCMD(QUERY_PLAYER)) {
                        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: Failed to copy CMD Channel!");
                        break;
                    }
                    break;
                case SHARE:
                    /* Cache CMD channel _differently_ */
                    if (!cacheCMD(1)) {
                        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: Failed to copy CMD Channel!");
                        break;
                    }
                    break;
                case PLAY:
                    /* Cache CMD channel _differently_ */
                    if (!cacheCMD(PLAY)) {
                        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: Failed to copy CMD Channel!");
                        break;
                    }
                    xil_printf("%s%s\r\n", MB_PROMPT, "INFO: Done Playing Song");
                    break;
                case DIGITAL_OUT:
                    /* Cache CMD channel _differently_ */
                    if (!cacheCMD(DIGITAL_OUT)) {
                        xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: Failed to copy CMD Channel!");
                        break;
                    }
                    break;
                default:
                    xil_printf("%s%s\r\n", MB_PROMPT, "ERROR: Not a command!");
                    crypto_wipe(&CMDChannel, sizeof(CMDChannel));
                    break;
            }

            // Not sure why, but MITRE does this
            nsleep(5000); // Was previously 500us
            setState(STOPPED);
        }
    }

    cleanup_platform();
    return 0;
}
