#ifndef DRM_AUDIO_FW_DRM_H
#define DRM_AUDIO_FW_DRM_H

#include "secrets.h"
#include "xil_printf.h"

// shared DDR address
#define SHARED_DDR_BASE (0x20000000 + 0x1CC00000)

// memory constants
#define CHUNK_SZ 16000
#define FIFO_CAP 4096 * 4

#define PREVIEW_TIME_SEC 30 // Number of seconds to record/playback
#define AUDIO_SAMPLING_RATE 48000 // ADC/DAC sampling rate in Hz
#define BYTES_PER_SAMP 2
#define PREVIEW_SZ (PREVIEW_TIME_SEC * AUDIO_SAMPLING_RATE * BYTES_PER_SAMP)

#define LOGIN_DELAY 5 // seconds
#define MAX_USERNAME_SZ 16
#define MAX_HASH_SZ crypto_pwhash_STRBYTES
#define MAX_PIN_SZ 64
#define MAX_USERS 64
#define MAX_SONG_NAME 64
#define MAX_REGION_SZ 64
#define MAX_REGIONS 32
#define MAX_REGION_SECRET 160
#define MAX_SONG_SZ 134217700 // 128MiB

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
    char *name;
    char *hw_secret;
    char *pin_hash;
    char *pub_key;
    char *pvt_key_enc;
    int logged_in; // 1 == logged in, 0 == logged out
} user_md;

// struct to interpret drm metadata
typedef struct __attribute__((__packed__)) {
    char state;
    char md_size;
    char num_regions;
    char num_users;
    char buf[];
} drm_md;

// struct to interpret shared buffer as a drm song file
// packing values skip over non-relevant WAV metadata
typedef struct __attribute__((__packed__)) {
    char packing1[4];
    u32 file_size;
    char packing2[32];
    u32 wav_size;
    drm_md md;
} song;

// accessor for variable-length metadata fields
#define get_drm_song(d) ((char *)(&d.md) + d.md.md_size)

// struct to interpret shared command channel
typedef volatile struct __attribute__((__packed__)) {
    char cmd;                    // from commands enum
    char drm_state;              // from states enum
    char username[MAX_USERNAME_SZ];  // stores logged in or attempted username
    char pin[MAX_PIN_SZ];        // stores logged in or attempted pin
    song song;                   // shared buffer is a drm song
} cmd_channel;

typedef struct {
    char owner[MAX_USERNAME_SZ];
    char shared[PROVISIONED_USERS][MAX_USERNAME_SZ];
    char song_name[MAX_SONG_NAME]; // null terminated string of size 15 or less
    char region_list[MAX_REGIONS][MAX_REGION_SZ]; // 32 regions max of size 64 len + null
    char region_secret_list[MAX_REGIONS][MAX_REGION_SECRET]; // 32 regions max of size 160 + null
    int region_num;
    int loaded; // 1 == loaded, 0 == not loaded
    u32 song_length;
    u8 md_length;
} song_md;

void setState(STATE state);

#endif // DRM_AUDIO_FW_DRM_H
