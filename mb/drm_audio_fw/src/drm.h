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
#define MAX_USERS 64
#define MAX_SONG_NAME 64
#define MAX_REGION_SZ 64
#define MAX_REGIONS 64
#define MAX_SONG_SZ (1 << 25)
#define MAX_PIN_SZ 64
#define BLAKE_SZ 64
#define SONG_KEY_SZ MAX_PIN_SZ+MAX_HASH_SZ+MAX_SONG_NAME_SZ // TODO: this aint right
#define SONG_PG_SZ (1<<24)		//16MB, half the size alloted for the song buffer

/* Crypto constants */
#define MAX_REGION_SECRET 64
#define MAX_HASH_SZ 32
#define MAC 32
#define KEY_SZ 32



/* Shared buffer values */
enum commands { QUERY_PLAYER, QUERY_SONG, LOGIN, LOGOUT, SHARE, PLAY, STOP, DIGITAL_OUT, PAUSE, RESTART, SEEKFWD, SEEKREV, FASTFWD };
typedef enum states { STOPPED, WORKING, PLAYING, PAUSED } STATE;

typedef struct {
    char username[MAX_USERNAME_SZ];
    char pin_hash[MAX_HASH_SZ];
    char recipient[MAX_USERNAME_SZ];
    char hw_secret[KEY_SZ];
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
    char drm_state;              // from states enum
    int logged_in; // 1 == logged in, 0 == logged out, ? == no.
    int loaded; // 1 == loaded, 0 == not loaded
    song_md *song;                   // shared buffer is a drm song
} player_md;

/* Struct to interpret shared command channel */
typedef struct {
    char cmd;                    // from commands enum
    char drm_state;              // from states enum // TODO: At some point we have to write this data back
    char username[MAX_USERNAME_SZ];  // stores logged in or attempted username
    char pin[MAX_PIN_SZ];        // stores logged in or attempted pin
    song_md *song;                   // shared buffer is a drm song
    int login_status; 			// user login status
} cmd_channel;



void setState(STATE state);

#endif // DRM_AUDIO_FW_DRM_H

// formerly conwtants.h
#ifndef SRC_CONSTANTS_H_
#define SRC_CONSTANTS_H_

#include "xil_printf.h"

// shared DDR address
#define SHARED_DDR_BASE (0x20000000 + 0x1CC00000)

// memory constants
#define CHUNK_SZ 16000
#define FIFO_CAP 4096 * 4

// number of seconds to record/playback
#define PREVIEW_TIME_SEC 30

// ADC/DAC sampling rate in Hz
#define AUDIO_SAMPLING_RATE 48000
#define BYTES_PER_SAMP 2
#define PREVIEW_SZ (PREVIEW_TIME_SEC * AUDIO_SAMPLING_RATE * BYTES_PER_SAMP)

// printing utility
#define MB_PROMPT "\r\nMB> "
#define mb_printf(...) xil_printf(MB_PROMPT __VA_ARGS__)

// protocol constants
#define MAX_REGIONS 64
#define REGION_NAME_SZ 64
#define MAX_USERS 64
#define USERNAME_SZ 64
#define MAX_PIN_SZ 64
#define MAX_SONG_SZ (1 << 25)

// LED colors and controller
struct color {
  u32 r;
  u32 g;
  u32 b;
};

// struct to interpret shared buffer as a query
typedef struct {
  int num_regions;
  int num_users;
  char owner[USERNAME_SZ];
  char regions[MAX_REGIONS * REGION_NAME_SZ];
  char users[MAX_USERS * USERNAME_SZ];
} query;

// simulate array of 64B names without pointer indirection
#define q_region_lookup(q, i) (q.regions + (i * REGION_NAME_SZ))
#define q_user_lookup(q, i) (q.users + (i * USERNAME_SZ))

// struct to interpret drm metadata
typedef struct __attribute__((__packed__)) {
  char md_size;
  char owner_id;
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

// accessors for variable-length metadata fields
#define get_drm_rids(d) (d.md.buf)
#define get_drm_uids(d) (d.md.buf + d.md.num_regions)
#define get_drm_song(d) ((char *)(&d.md) + d.md.md_size)

// shared buffer values
/* TODO delete me? declared in drm.h
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
*/
/* TODO delete me? declared in drm.h
enum states { STOPPED, WORKING, PLAYING, PAUSED };
*/
// struct to interpret shared command channel
/* TODO delete me? declared in drm.h
typedef volatile struct __attribute__((__packed__)) {
  char cmd;                    // from commands enum
  char drm_state;              // from states enum
  char login_status;           // 0 = logged off, 1 = logged on
  char padding;                // not used
  char username[USERNAME_SZ];  // stores logged in or attempted username
  char pin[MAX_PIN_SZ];        // stores logged in or attempted pin

  // shared buffer is either a drm song or a query
  union {
    song song;
    query query;
  };
} cmd_channel;
*/
// local store for drm metadata
/* TODO delete me? declared in drm.h
typedef struct {
  u8 md_size;
  u8 owner_id;
  u8 num_regions;
  u8 rids[MAX_REGIONS];
  u8 num_users;
  u8 uids[MAX_USERS];
} song_md;
*/

// store of internal state
typedef struct {
  char logged_in;              // whether or not a user is logged on
  u8 uid;                      // logged on user id
  char username[USERNAME_SZ];  // logged on username
  char pin[MAX_PIN_SZ];        // logged on pin
  song_md song_md;             // current song metadata
} internal_state;

#endif /* SRC_CONSTANTS_H_ */
