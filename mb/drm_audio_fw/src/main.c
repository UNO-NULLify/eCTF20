/*
 * eCTF Collegiate 2020 MicroBlaze Example Code
 * Audio Digital Rights Management
 */

#include <stdio.h>
#include "platform.h"
#include "xparameters.h"
#include "xil_exception.h"
#include "xstatus.h"
#include "xaxidma.h"
#include "xil_mem.h"
#include "util.h"
#include "secrets.h"
#include "xintc.h"
#include "constants.h"
#include "sleep.h"
#include "fsl.h"
#include "monocypher.h"



//////////////////////// GLOBALS ////////////////////////


// audio DMA access
static XAxiDma sAxiDma;

// LED colors and controller
u32 *led = (u32*) XPAR_RGB_PWM_0_PWM_AXI_BASEADDR;
const struct color RED =    {0x01ff, 0x0000, 0x0000};
const struct color YELLOW = {0x01ff, 0x01ff, 0x0000};
const struct color GREEN =  {0x0000, 0x01ff, 0x0000};
const struct color BLUE =   {0x0000, 0x0000, 0x01ff};

// change states
#define change_state(state, color) c->drm_state = state; setLED(led, color);
#define set_stopped() change_state(STOPPED, RED)
#define set_working() change_state(WORKING, YELLOW)
#define set_playing() change_state(PLAYING, GREEN)
#define set_paused()  change_state(PAUSED, BLUE)

#define NSEEKSAMPLES (48000 * 5 * BYTES_PER_SAMP)		//5 second seek, 48Khz, 2 bytes for ssample

// shared command channel -- read/write for both PS and PL
volatile cmd_channel *c = (cmd_channel*)SHARED_DDR_BASE;
volatile u32* cmdreg = 0x80000000;		//todo use XPAR definition

// internal state store
internal_state s;

//////////////////////// INTERRUPT HANDLING ////////////////////////
// shared variable between main thread and interrupt processing thread
volatile static int InterruptProcessed = FALSE;
static XIntc InterruptController;

void myISR(void) {
    InterruptProcessed = TRUE;
}
//////////////////////// UTILITY FUNCTIONS ////////////////////////

void byte_me(uint8_t *dest, char *src, size_t src_len)
{
  for(int i = 0; i < src_len; i +=2)
  {
    if(src[i] >= '0' && src[i] <= '9')
     {
       dest[i/2] = src[i] - '0';
     }
     else
     {
       dest[i/2] = src[i] - 'a' + 10;
     }

    dest[i/2] = dest[i/2] << 4;

    if(src[i+1] >= '0' && src[i+1] <= '9')
    {
      dest[i/2] += src[i+1] - '0';
    }
    else{
      dest[i/2] += src[i+1] - 'a' + 10;
    }
  }
}

u32 read_cr()
{
	//read cr bits and adjust to match command enum format
	u32 cmd = *cmdreg;
	return (cmd & 0x00FF0000) >> 16;
	*cmdreg |= 0xFFFFFFFF;		//???

}


// returns whether an rid has been provisioned
int is_provisioned_rid(char rid) {
    for (int i = 0; i < PROVISIONED_REGIONS; i++) {
        if (rid == region_data[i].id) {
            return TRUE;
        }
    }
    return FALSE;
}


// looks up the region name corresponding to the rid
int rid_to_region_name(char rid, char **region_name, int provisioned_only) {
    for (int i = 0; i < PROVISIONED_REGIONS; i++) {
        if (rid == region_data[i].id &&
            (!provisioned_only || is_provisioned_rid(rid))) {

            *region_name = (char *)region_data[i].name;

            return TRUE;
        }
    }

    mb_printf("Could not find region ID '%d'\r\n", rid);
    *region_name = "<unknown region>";
    return FALSE;
}


// looks up the rid corresponding to the region name
int region_name_to_rid(char *region_name, char *rid, int provisioned_only) {
    for (int i = 0; i < PROVISIONED_REGIONS; i++) {

        if (!strcmp(region_name, region_data[i].name) &&

            (!provisioned_only || is_provisioned_rid(region_data[i].id))) {
            *rid = region_data[i].id;
            return TRUE;
        }
    }

    mb_printf("Could not find region name '%s'\r\n", region_name);
    *rid = -1;
    return FALSE;
}


// returns whether a uid has been provisioned
int is_provisioned_uid(char uid) {
    for (int i = 0; i < PROVISIONED_USERS; i++) {
        if (uid == user_data[i].id) {
            return TRUE;
        }
    }
    return FALSE;
}


// looks up the username corresponding to the uid
int uid_to_username(char uid, char **username, int provisioned_only) {
    for (int i = 0; i < PROVISIONED_USERS; i++) {
        if (uid == user_data[i].id &&
            (!provisioned_only || is_provisioned_uid(uid))) {
            *username = (char *)user_data[i].name;
            return TRUE;
        }
    }

    mb_printf("Could not find uid '%d'\r\n", uid);
    *username = "<unknown user>";
    return FALSE;
}


// looks up the uid corresponding to the username
int username_to_uid(char *username, char *uid, int provisioned_only) {
    for (int i = 0; i < PROVISIONED_USERS; i++) {
        if (!strcmp(username, user_data[i].name) &&
            (!provisioned_only || is_provisioned_uid(user_data[i].id))) {
            *uid = user_data[i].id;
            return TRUE;
        }
    }

    mb_printf("Could not find username '%s'\r\n", username);
    *uid = -1;
    return FALSE;
}


void load_song_md() {
    memcpy(&s.song_md, &c->song.md, sizeof(s.song_md));
}


// checks if the song loaded into the shared buffer is locked for the current user
int is_locked() {
    int locked = TRUE;

    // check for authorized user
    if (!s.logged_in) {
        mb_printf("No user logged in");
    } else {
        load_song_md();
        // check if user is authorized to play song
        if (s.uid == s.song_md.owner_id) {
            locked = FALSE;
        } else {
            for (int i = 0; i < PROVISIONED_USERS && locked; i++) {
                if (s.uid == s.song_md.sharedInfo[i]) {
                    locked = FALSE;
                }
            }
        }

        if (locked) {
            mb_printf("User '%s' does not have access to this song", s.username);
            return locked;
        }
        mb_printf("User '%s' has access to this song", s.username);
        locked = TRUE; // reset lock for region check

        // search for region match
        for (int i = 0; i < MAX_REGIONS && s.song_md.region_ids[i] != NULL; i++) {
            for (int j = 0; j < (u8)PROVISIONED_REGIONS; j++) {
                if (region_data[j].id == s.song_md.region_ids[i]) {
                    locked = FALSE;
                }
            }
        }

        if (!locked) {
            mb_printf("Region Match. Full Song can be played. Unlocking...");
        } else {
            mb_printf("Invalid region");
        }
    }
    return locked;
}

/*
// copy the local song metadata into buf in the correct format
// returns the size of the metadata in buf (including the metadata size field)
// song metadata should be loaded before call
int gen_song_md(char *buf) {
    buf[0] = ((5 + s.song_md.num_regions + s.song_md.num_users) / 2) * 2; // account for parity
    buf[1] = s.song_md.owner_id;
    buf[2] = s.song_md.num_regions;
    buf[3] = s.song_md.num_users;
    memcpy(buf + 4, s.song_md.region_ids, s.song_md.num_regions);
    memcpy(buf + 4 + s.song_md.num_regions, s.song_md.uids, s.song_md.num_users);
    return buf[0];
}
*/


//////////////////////// COMMAND FUNCTIONS ////////////////////////

// attempt to log in to the credentials in the shared buffer
void login() {
    if (s.logged_in) {
        mb_printf("Already logged in. Please log out first.\r\n");
        memcpy((void*)c->username, s.username, USERNAME_SZ);
        memcpy((void*)c->pin, s.pin, MAX_PIN_SZ);
    } else {
        for (int i = 0; i < PROVISIONED_USERS; i++) {
            // search for matching username
            if (!strcmp((void*)c->username, user_data[i].name)) {
                // check if pin matches
            	//secrets pin hash to bytes
            	uint8_t usr_pin_bytes[ARGON_HASH_SZ] = {0};
            	byte_me(usr_pin_bytes, user_data[i].pin_hash, strlen(user_data[i].pin_hash));
            	//
            	//make comparison hash
            	uint8_t cmp_hash[ARGON_HASH_SZ] = {0};
            	//work area
            	uint8_t *work_area;
            	work_area = (uint8_t *) malloc(ARGON_BLOCKS*1024);
            	memset(work_area, 0, sizeof(work_area));
            	if (work_area == NULL)
            	{
            		mb_printf("\nFailed to allocate the work area. Aborting.\n");
            		memset((void*)c->username, 0, USERNAME_SZ);
            		memset((void*)c->pin, 0, MAX_PIN_SZ);
            		return;
            	}
            	//salt bytes
            	uint8_t salt_bytes[ARGON_SALT_SZ] = {0};
            	byte_me(salt_bytes, user_data[i].salt, strlen(user_data[i].salt));
            	crypto_argon2i(cmp_hash,
            				   ARGON_HASH_SZ,
							   work_area,
							   ARGON_BLOCKS,
							   ARGON_ITTERS,
							   (void*)c->pin,
							   strlen((void*)c->pin),
							   salt_bytes,
							   ARGON_SALT_SZ);

                if (!crypto_verify32(cmp_hash, usr_pin_bytes)) {
                    //update states
                    s.logged_in = 1;
                    c->login_status = 1;
                    memcpy(s.username, (void*)c->username, USERNAME_SZ);
                    memcpy(s.pin, (void*)c->pin, MAX_PIN_SZ);
                    s.uid = user_data[i].id;
                    mb_printf("Logged in for user '%s'\r\n", c->username);
                    free(work_area);
                    return;
                } else {
                    // reject login attempt
                    mb_printf("Incorrect pin for user '%s'\r\n", c->username);
                    memset((void*)c->username, 0, USERNAME_SZ);
                    memset((void*)c->pin, 0, MAX_PIN_SZ);
                    free(work_area);
                    return;
                }
            }
        }

        // reject login attempt
        mb_printf("User not found\r\n");
        memset((void*)c->username, 0, USERNAME_SZ);
        memset((void*)c->pin, 0, MAX_PIN_SZ);
    }
}


// attempt to log out
void logout() {
    if (c->login_status) {
        mb_printf("Logging out...\r\n");
        s.logged_in = 0;
        c->login_status = 0;
        memset((void*)c->username, 0, USERNAME_SZ);
        memset((void*)c->pin, 0, MAX_PIN_SZ);
        s.uid = 0;
    } else {
        mb_printf("Not logged in\r\n");
    }
}


// handles a request to query the player's metadata
void query_player() {
    c->query.num_regions = PROVISIONED_REGIONS;
    c->query.num_users = PROVISIONED_USERS;

    for (int i = 0; i < PROVISIONED_REGIONS; i++) {

        strncpy((char *)q_region_lookup(c->query, i), region_data[i].name, strlen(region_data[i].name));

    }

    for (int i = 0; i < PROVISIONED_USERS; i++) {
        strncpy((char *)q_user_lookup(c->query, i), user_data[i].name, strlen(user_data[i].name));
    }

    mb_printf("Queried player (%d regions, %d users)\r\n", c->query.num_regions, c->query.num_users);
}

/*
//REFERENCE VERSION
// handles a request to query song metadata
void query_song() {
    char *name;

    // load song
    load_song_md();

    memset((void *)&c->query, 0, sizeof(query));

    c->query.num_regions = s.song_md.num_regions;
    c->query.num_users = s.song_md.num_users;

    // copy owner name
    uid_to_username(s.song_md.owner_id, &name, FALSE);
    strcpy((char *)c->query.owner, name);

    // copy region names
    for (int i = 0; i < s.song_md.num_regions; i++) {
        rid_to_region_name(s.song_md.region_ids[i], &name, FALSE);
        strcpy((char *)q_region_lookup(c->query, i), name);
    }

    // copy authorized uid names
    for (int i = 0; i < s.song_md.num_users; i++) {
        uid_to_username(s.song_md.uids[i], &name, FALSE);
        strcpy((char *)q_user_lookup(c->query, i), name);
    }

    mb_printf("Queried song (%d regions, %d users)\r\n", c->query.num_regions, c->query.num_users);
}
*/

//NEW VERSION
void query_song() {
    char *name;
    int num = 0;

    //load song
    load_song_md();
    mb_printf("load song worked!");

    memset((void *)&c->query, 0, sizeof(query));

    //copy owner to query struct
    uid_to_username(s.song_md.owner_id, &name, FALSE);
    strncpy((char *)c->query.owner, name, strlen(name));

    //count the number of users and put and copy the users
    for(int i = 0; i < MAX_USERS; i++) {
        if(s.song_md.sharedInfo[i] != NULL) {
            uid_to_username(s.song_md.sharedInfo[i], &name, FALSE);
            strncpy((char *)q_user_lookup(c->query, i), name, strlen(name));
            num++;
        }
    }
    c->query.num_users = num;
    num = 0;
    
    //count the number of regions and copy the regions
    for(int i = 0; i < MAX_REGIONS && s.song_md.region_ids[i] != NULL; i++) {
        rid_to_region_name(s.song_md.region_ids[i], &name, FALSE);
        strncpy((char *)q_region_lookup(c->query, i), name, strlen(name));
        num++;
    }
    c->query.num_regions = num;
}


/*
// add a user to the song's list of users
void share_song() {
    int new_md_len, shift;
    char new_md[256], uid;

    load_song_md();
    // reject non-owner attempts to share
    if (!s.logged_in) {
        mb_printf("No user is logged in. Cannot share song\r\n");
        c->song.wav_size = 0;
        return;
    } else if (s.uid != s.song_md.owner_id) {
        mb_printf("User '%s' is not song's owner. Cannot share song\r\n", s.username);
        c->song.wav_size = 0;
        return;
    } else if (!username_to_uid((char *)c->username, &uid, TRUE)) {
        mb_printf("Username not found\r\n");
        c->song.wav_size = 0;
        return;
    }

    // generate new song metadata
    s.song_md.uids[s.song_md.num_users++] = uid;
    new_md_len = gen_song_md(new_md);
    shift = new_md_len - s.song_md.md_size;

    // shift over song and add new metadata
    if (shift) {
        memmove((void *)get_drm_song(c->song) + shift, (void *)get_drm_song(c->song), c->song.wav_size);
    }
    memcpy((void *)&c->song.md, new_md, new_md_len);

    // update file size
    c->song.file_size += shift;
    c->song.wav_size  += shift;

    mb_printf("Shared song with '%s'\r\n", c->username);
}


// plays a song and looks for play-time commands
void play_song() {
    u32 rem = 0;
    u32 length = 0;

    //Register mapping info
    //https://www.xilinx.com/support/documentation/ip_documentation/axi_gpio/v2_0/pg144-axi-gpio.pdf#page=10
    volatile u32* fifo_fill_in  = (u32 *)(XPAR_FIFO_COUNT_AXI_GPIO_0_BASEADDR + 0x8);			//input fifo uses second gpio bank
    volatile u32* fifo_fill_out = (u32 *)(XPAR_FIFO_COUNT_AXI_GPIO_0_BASEADDR);

    mb_printf("Reading Audio File...");
    load_song_md();

    // get WAV length
    length = c->song.wav_size;
    mb_printf("Song length = %dB", length);

    // truncate song if locked
    if (length > PREVIEW_SZ && is_locked()) {
        length = PREVIEW_SZ;
        mb_printf("Song is locked.  Playing only %ds = %dB\r\n",
                   PREVIEW_TIME_SEC, PREVIEW_SZ);
    } else {
        mb_printf("Song is unlocked. Playing full song\r\n");
    }

    rem = length;

    set_playing();
    while(rem > 0) {
        // check for interrupt to stop playback
        while (InterruptProcessed) {
        	InterruptProcessed = FALSE;
        	uint16_t cmd = read_cr();
        	mb_printf("Command (P): %08X\r\n", cmd);


				switch (cmd) {
				case PAUSE:
					mb_printf("Pausing... \r\n");
					set_paused();
					while (!InterruptProcessed) continue; // wait for interrupt
					break;
				case PLAY:
					mb_printf("Resuming... \r\n");
					set_playing();
					break;
				case STOP:
					mb_printf("Stopping playback...");
					return;			//This is NOT a typo!
				case RESTART:
					mb_printf("Restarting song... \r\n");
					rem = length; 	// reset song counter
					set_playing();
					break;
				case FASTFWD:
					break;
				case SEEKFWD:
					//Seek forward by up to 5 seconds or until the end of the song
					rem = (rem > NSEEKSAMPLES) ? (rem - NSEEKSAMPLES) : 0;
					break;
				case SEEKREV:
					//Seek backwards by up to 5 seconds or until the start of the song
					rem = (length - rem > NSEEKSAMPLES) ? (rem + NSEEKSAMPLES) : length;
					break;
				default:
					break;
								}
        	}


        //Copy song data directly into input fifo:
        //The DMA stream and FIFO are the same width
        //Transfer enough to completely fill the input fifo
        u32	chunk = (FIFO_CAP - *fifo_fill_in)*4; //bytes
        u32 dma_to_ipf_count = (chunk < rem) ? chunk : rem;

		// polling while loop to wait for DMA to be ready
		// DMA must run first for this to yield the proper state
		// rem != length checks for first run

        //mb_printf("dx: 0x%08x\r\n",get_drm_song(c->song) + length - rem);


		//DMA to input fifo
		//this will potentially max the fifo
		if (dma_to_ipf_count > 0)
			XAxiDma_SimpleTransfer(	&sAxiDma,
								(u32)(get_drm_song(c->song) + length - rem),
								dma_to_ipf_count,
								XAXIDMA_DMA_TO_DEVICE);

		while (XAxiDma_Busy(&sAxiDma, XAXIDMA_DMA_TO_DEVICE) && rem != length);
		//there is a POSSIBILITY that execution reaches here before any samples have arrived
		//thus the strange check above
        //get and put bytes from first fifo to second fifo
        //load output fifo at
        uint32_t sample = 0;
        while (*fifo_fill_in > 0)
        {
        	//Note:	this call is blocking, but the program should never hang here because it is only
        	//		reached when there is data in the input fifo
        	//
        	//This is a 32 bit read and thus contains up to two samples. Low bits will always contain a sample
        	getfslx(sample, 0,);

        	//Perform decrypt here

        	//Note:	this call is blocking, it might be preferable to replace it with the nonblocking version (see fsl.h)
        	//		and add a fifo capacity check
        	//
        	//This is a 32 bit write, whatever is written here will be automatically split into two 16 byte samples.

        	//double up samples for mono audio
        	putfslx((sample & 0x0000FFFF) | (sample & 0x0000FFFF)<<16, 0,);
        	putfslx((sample & 0xFFFF0000) | (sample & 0xFFFF0000)>>16, 0,);
        }

        rem -= dma_to_ipf_count;	//dma_to_ipf_count is in fifo entries while rem is in bytes
    }
}


// removes DRM data from song for digital out
void digital_out() {
    // remove metadata size from file and chunk sizes
    c->song.file_size -= c->song.md.md_size;
    c->song.wav_size -= c->song.md.md_size;

    if (is_locked() && PREVIEW_SZ < c->song.wav_size) {
        mb_printf("Only playing 30 seconds");
        c->song.file_size -= c->song.wav_size - PREVIEW_SZ;
        c->song.wav_size = PREVIEW_SZ;
    }

    // move WAV file up in buffer, skipping metadata
    mb_printf(MB_PROMPT "Dumping song (%dB)...", c->song.wav_size);
    memmove((void *)&c->song.md, (void *)get_drm_song(c->song), c->song.wav_size);

    mb_printf("Song dump finished\r\n");
}
*/

//////////////////////// MAIN ////////////////////////


int main() {
    u32 status;
    *cmdreg |= 0xFFFFFFFF;

    init_platform();
    microblaze_register_handler((XInterruptHandler)myISR, (void *)0);
    microblaze_enable_interrupts();

    // Initialize the interrupt controller driver so that it is ready to use.
    status = XIntc_Initialize(&InterruptController, XPAR_INTC_0_DEVICE_ID);
    if (status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    // Set up the Interrupt System.
    status = SetUpInterruptSystem(&InterruptController, (XInterruptHandler)myISR);
    if (status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    // Congigure the DMA
    status = fnConfigDma(&sAxiDma);
    if(status != XST_SUCCESS) {
        mb_printf("DMA configuration ERROR\r\n");
        return XST_FAILURE;
    }
	
    // Start the LED
    enableLED(led);
    set_stopped();

    // clear command channel
    memset((void*)c, 0, sizeof(cmd_channel));

    mb_printf("Audio DRM Module has Booted (Modified)\n\r");

    // Handle commands forever

    while(1) {
        // wait for interrupt to start
        if (InterruptProcessed) {
        	uint32_t cmd = read_cr();
            InterruptProcessed = FALSE;
            mb_printf("Command: %08X\r\n", cmd);

            set_working();

            switch (cmd) {
            case LOGIN:
                //login();
                break;
            case LOGOUT:
                //logout();
                break;
            case QUERY_PLAYER:
                query_player();
                break;
            case QUERY_SONG:
                query_song();
                break;
            case SHARE:
                //share_song();
                break;
            case PLAY:
                //play_song();
                mb_printf("Done Playing Song\r\n");
                break;
            case DIGITAL_OUT:
                //digital_out();
                break;
            default:
                break;
            }

            // reset statuses and sleep to allow player to recognize WORKING state
            strcpy((char *)c->username, s.username);
            c->login_status = s.logged_in;
            usleep(500);
            set_stopped();
        }
    }

    cleanup_platform();
    return 0;
}
