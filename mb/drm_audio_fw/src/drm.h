#ifndef DRM_AUDIO_FW_DRM_H
#define DRM_AUDIO_FW_DRM_H

#include "secrets.h"
#include "xil_printf.h"

/* Memory constants */
#define SHARED_DDR_BASE (0x20000000 + 0x1CC00000) // shared DDR address
#define CHUNK_SZ 16000
#define FIFO_CAP 2048*2 // Applies to both fifos?

/* Timing constants */
#define PREVIEW_TIME_SEC 30 // Number of seconds to record/playback
#define AUDIO_SAMPLING_RATE 48000 // ADC/DAC sampling rate in Hz
#define BYTES_PER_SAMP 2
#define PREVIEW_SZ (PREVIEW_TIME_SEC * AUDIO_SAMPLING_RATE * BYTES_PER_SAMP)
#define NSEEKSAMPLES (AUDIO_SAMPLING_RATE * 5 * BYTES_PER_SAMP)
#define LOGIN_DELAY 5 // seconds

/* Size constants */
#define MAX_USERNAME_SZ 16
#define MAX_SONG_SZ 134217700 // 128MiB
#define MAX_PIN_SZ 64
#define MAX_USERS 64
#define MAX_REGIONS 32
#define MAX_REGION_SZ 64
#define MAX_REGION_SECRET 160
#define MAX_SONG_NAME_SZ 64 // TODO: Verify this size
#define HASH_SZ 32
#define BLAKE_SZ 64
#define KEY_SZ 32 // TODO: Verify key size
#define SONG_KEY_SZ MAX_PIN_SZ+HASH_SZ+MAX_SONG_NAME_SZ // TODO: this aint right
#define SONG_PG_SZ (1<<24)		//16MB, half the size alloted for the song buffer

/* Shared buffer values */
enum commands { QUERY_PLAYER, QUERY_SONG, LOGIN, LOGOUT, SHARE, PLAY, STOP, DIGITAL_OUT, PAUSE, RESTART, SEEKFWD, SEEKREV, FASTFWD };
typedef enum states { STOPPED, WORKING, PLAYING, PAUSED } STATE;

typedef struct {
    char username[MAX_USERNAME_SZ]; // TODO: ASCII is 7-8 bits right?
    char recipient[MAX_USERNAME_SZ];
    char hw_secret[KEY_SZ];
    char pin_hash[HASH_SZ];
    char pub_key[KEY_SZ];
    char pvt_key_enc[KEY_SZ];
    int logged_in; // 1 == logged in, 0 == logged out, ? == no.
} user_md;

typedef struct {
    char song_key[SONG_KEY_SZ];
    char hardware_secret[KEY_SZ]; // TODO: These sizes aint right
    char hardware_secret_30[KEY_SZ];
} crypto;

/* TODO:
 * - Replace char arrays with char pointers?
 * - Should we store IDs or names?
 */
typedef struct {
    char song_name[MAX_SONG_NAME_SZ];
    char owner[MAX_USERNAME_SZ]; // Owner's username
    char shared[MAX_USERS][MAX_USERNAME_SZ]; // List of shared usernames
    char region_list[MAX_REGIONS][MAX_REGION_SZ]; // 32 regions max of size 64
    char region_secrets[MAX_REGIONS][MAX_REGION_SECRET]; // 32 regions max of size 160 + null
    int num_regions; // Number of song regions
    int num_users; // Number of shared users
    int loaded; // 1 == loaded, 0 == not loaded
    u32 file_size; // WAV file length (no digital signature or song_md)
    u32 wav_size; // WAV data length
    u32 md_size; // Song metadata length
    char *file; // The full file
    char *wav; // The encrypted song with no metadata
} song_md;

// struct to interpret shared command channel
typedef volatile struct __attribute__((__packed__)) {
    char cmd;                    // from commands enum
    char drm_state;              // from states enum // TODO: At some point we have to write this data back
    char username[MAX_USERNAME_SZ];  // stores logged in or attempted username
    char pin[MAX_PIN_SZ];        // stores logged in or attempted pin
    char *song;                   // shared buffer is a drm song
} cmd_channel;

void setState(STATE state);

#endif // DRM_AUDIO_FW_DRM_H
