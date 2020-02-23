#ifndef DRM_AUDIO_FW_DRM_H
#define DRM_AUDIO_FW_DRM_H

#include "secrets.h"
#include "xil_printf.h"

/* Memory constants */
#define SHARED_DDR_BASE (0x20000000 + 0x1CC00000) // shared DDR address
#define CHUNK_SZ 16000
#define FIFO_CAP 4096 * 4

/* Timing constants */
#define PREVIEW_TIME_SEC 30 // Number of seconds to record/playback
#define AUDIO_SAMPLING_RATE 48000 // ADC/DAC sampling rate in Hz
#define BYTES_PER_SAMP 2
#define PREVIEW_SZ (PREVIEW_TIME_SEC * AUDIO_SAMPLING_RATE * BYTES_PER_SAMP)
#define LOGIN_DELAY 5 // seconds

/* Size constants */
#define MAX_USERNAME_SZ 16
#define MAX_SONG_SZ 134217700 // 128MiB
#define MAX_PIN_SZ 64
#define MAX_USERS 64
#define MAX_REGIONS 32
#define MAX_REGION_SZ 64
#define MAX_REGION_SECRET 160
#define HASH_SZ 32
#define KEY_SZ // TODO: Verify key size


// shared buffer values
enum commands {
    QUERY_PLAYER,
    QUERY_SONG,
    LOGIN,
    LOGOUT,
    SHARE,
    PLAY,
    STOP,
    DIGITAL_OUT,
    PAUSE,
    RESTART,
    FF,
    RW
};
typedef enum states { STOPPED, WORKING, PLAYING, PAUSED } STATE;

typedef struct {
    u8 username[MAX_USERNAME_SZ]; // TODO: ASCII is 7-8 bits right?
    u8 recipient[MAX_USERNAME_SZ];
    u32 hw_secret[KEY_SZ];
    u32 pin_hash[HASH_SZ];
    u32 pub_key[KEY_SZ];
    u32 pvt_key_enc[KEY_SZ];
    int logged_in; // 1 == logged in, 0 == logged out, ? == no.
} user_md;

// struct to interpret internal b
typedef struct {
    char cmd;
    char state;
} player_md;

/* TODO:
 * - Replace char arrays with char pointers?
 * - Should we store IDs or names?
 */
typedef struct {
    u8 owner[MAX_USERNAME_SZ]; // Owner's username
    u8 shared[MAX_USERS][MAX_USERNAME_SZ]; // List of shared usernames
    u32 region_list[MAX_REGIONS][MAX_REGION_SZ]; // 32 regions max of size 64
    u32 region_secrets[MAX_REGIONS][MAX_REGION_SECRET]; // 32 regions max of size 160 + null
    u8 num_regions; // Number of song regions
    u8 num_users; // Number of shared users
    u8 loaded; // 1 == loaded, 0 == not loaded
    u32 file_size; // WAV file length (no digital signature or song_md)
    u32 wav_size; // WAV data length
    u32 md_size; // Song metadata length
    char *song; // The encrypted song
} song_md;

// struct to interpret shared command channel
typedef volatile struct __attribute__((__packed__)) {
    char cmd;                    // from commands enum
    char drm_state;              // from states enum
    char username[MAX_USERNAME_SZ];  // stores logged in or attempted username
    char pin[MAX_PIN_SZ];        // stores logged in or attempted pin
    char *song;                   // shared buffer is a drm song
} cmd_channel;

void setState(STATE state);

#endif // DRM_AUDIO_FW_DRM_H
