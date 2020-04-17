#ifndef SRC_CONSTANTS_H_
#define SRC_CONSTANTS_H_

#include "xil_printf.h"

// shared DDR address, mapped by DTB during boot as /dev/uio0
#define SHARED_DDR_BASE (0x20000000 + 0x1CC00000)

//applies to both fifos
//Each fifo is 2K deep
#define FIFO_CAP (2048 - 1)
//you know why this is -1, right?

// number of seconds to record/playback
#define PREVIEW_TIME_SEC 30

// ADC/DAC sampling rate in Hz
#define AUDIO_SAMPLING_RATE 48000

#define BYTES_PER_SAMP	2


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
#define SONG_PG_SZ (1<<24)		//16MB, half the size alloted for the song buffer
#define ARGON_BLOCKS 8
#define ARGON_ITTERS 3
#define ARGON_HASH_SZ 32
#define ARGON_SALT_SZ 16
#define MAX_USERNAME_SZ 16
#define MAX_HASH_SZ 32
#define MAX_SONG_NAME 64
#define MAX_REGION_SZ 64
#define MAX_REGION_SECRET 64
#define MAC 32
#define MAX_SONG_SZ (1 << 25)
#define KEY_SZ 32

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


// struct to interpret shared buffer as a drm song file
// packing values skip over non-relevant WAV metadata
typedef struct __attribute__((__packed__)) {
    char packing1[4];
    u32 file_size;
    char packing2[32];
    u32 wav_size;
} song;


// struct to interpret drm metadata
typedef struct {
    uint8_t sharedInfo[MAX_USERS][48]; // [64-Bytes of Users to share] [32 byte
                                    // key + room for 16 byte MAC]
    uint8_t owner_id;                  // 1-Byte
    uint8_t region_ids[MAX_REGIONS];   // 64-Bytes
    char region_secrets[MAX_REGIONS][MAX_REGION_SECRET + MAC]; // 64*96-Bytes
    char song_name[MAX_SONG_NAME];                             // 64-Bytes
    long int endFullSong;
    long int songSize;
    song s_md;
} drm_md;


// accessors for variable-length metadata fields
#define get_drm_rids(d) (d.md.buf)
#define get_drm_uids(d) (d.md.buf + d.md.num_regions)
#define get_drm_song(d) ((char *)(&d.md) + d.md.md_size)


// shared buffer values
enum commands { QUERY_PLAYER, QUERY_SONG, LOGIN, LOGOUT, SHARE, PLAY, STOP, DIGITAL_OUT, PAUSE, RESTART, SEEKFWD, SEEKREV, FASTFWD };
enum states   { STOPPED, WORKING, PLAYING, PAUSED };


// struct to interpret shared command channel
typedef volatile struct {
    char cmd;                   // from commands enum
    char drm_state;             // from states enum
    char login_status;          // 0 = logged off, 1 = logged on
    char padding;               // not used
    char username[USERNAME_SZ]; // stores logged in or attempted username
    char pin[MAX_PIN_SZ];       // stores logged in or attempted pin

    // shared buffer is either a drm song or a query
    union {
        drm_md drm;
        query query;
    };
} cmd_channel;


// store of internal state
typedef struct {
    char logged_in;             // whether or not a user is logged on
    u8 uid;                     // logged on user id
    char username[USERNAME_SZ]; // logged on username
    char pin[MAX_PIN_SZ];       // logged on pin
    drm_md song_md;            // current song metadata
} internal_state;


#endif /* SRC_CONSTANTS_H_ */
