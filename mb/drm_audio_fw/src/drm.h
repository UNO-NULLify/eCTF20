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
#define MAX_HASH_SZ 32
#define MAX_USERS 64
#define MAX_SONG_NAME 64
#define MAX_REGION_SZ 64
#define MAX_REGIONS 64
#define MAX_REGION_SECRET 64
#define MAC 32
#define MAX_SONG_SZ (1 << 25) // stop
#define MAX_PIN_SZ 64
#define BLAKE_SZ 64
#define KEY_SZ 32 // TODO: Verify key size
#define SONG_KEY_SZ MAX_PIN_SZ+MAX_HASH_SZ+MAX_SONG_NAME_SZ // TODO: this aint right
#define SONG_PG_SZ (1<<24)		//16MB, half the size alloted for the song buffer

/* Shared buffer values */
enum commands { QUERY_PLAYER, QUERY_SONG, LOGIN, LOGOUT, SHARE, PLAY, STOP, DIGITAL_OUT, PAUSE, RESTART, SEEKFWD, SEEKREV, FASTFWD };
typedef enum states { STOPPED, WORKING, PLAYING, PAUSED } STATE;

/* Struct to interpret shared command channel */
typedef struct {
    char cmd;                    // from commands enum
    char drm_state;              // from states enum // TODO: At some point we have to write this data back
    char username[MAX_USERNAME_SZ];  // stores logged in or attempted username
    char pin[MAX_PIN_SZ];        // stores logged in or attempted pin
    song_md *song;                   // shared buffer is a drm song
} cmd_channel;

typedef struct {
    char username[MAX_USERNAME_SZ];
    char recipient[MAX_USERNAME_SZ];
    char pin_hash[MAX_HASH_SZ];
    char pub_key[KEY_SZ];
    char pvt_key_enc[KEY_SZ];
} user_md;

typedef struct {
    char sharedInfo[MAX_USERS][64 + MAC]; // [64-Bytes of Users to share] [32 byte key (stored as hex) + room for MAC]
    uint8_t owner_id; // 1-Byte
    uint8_t region_ids[MAX_REGIONS]; // 64-Bytes
    char region_secrets[MAX_REGIONS][MAX_REGION_SECRET + MAC]; // 64*96-Bytes
    char song_name[MAX_SONG_NAME]; // 64-Bytes
    long int endFullSong;
    char* wav;
} song_md;

typedef struct {
    char hw_secret[KEY_SZ];
    char drm_state;              // from states enum
    int logged_in; // 1 == logged in, 0 == logged out, ? == no.
    int loaded; // 1 == loaded, 0 == not loaded
    song_md *song;                   // shared buffer is a drm song
} player_md;

void setState(STATE state);

#endif // DRM_AUDIO_FW_DRM_H
