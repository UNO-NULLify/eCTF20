/*
 * miPod.h
 *
 *  Created on: Jan 9, 2020
 *      Author: ectf
 */

#ifndef SRC_MIPOD_H_
#define SRC_MIPOD_H_

// miPod constants
#define USR_CMD_SZ 135

// protocol constants
#define MAX_REGIONS 64
#define REGION_NAME_SZ 64
#define MAX_USERS 64
#define USERNAME_SZ 64
#define MAX_PIN_SZ 64
#define MAX_SONG_SZ (1 << 25)
#define MAX_SONG_NAME 64
#define MAX_REGION_SECRET 64
#define MAC 32

// printing utility
#define MP_PROMPT "mP> "
#define mp_printf(...) printf(MP_PROMPT __VA_ARGS__)

#define USER_PROMPT "miPod %s# "
#define print_prompt() printf(USER_PROMPT, "")
#define print_prompt_msg(...) printf(USER_PROMPT, __VA_ARGS__)

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
    int file_size;
    char packing2[32];
    int wav_size;
    char* buf;
} riff;

// struct to interpret drm metadata
//typedef struct __attribute__((__packed__)) {
typedef struct {
    char sharedInfo[MAX_USERS][48]; // [64-Bytes of Users to share] [32 byte
                                    // key + room for 16 byte MAC]
    char owner_id;                  // 1-Byte
    char region_ids[MAX_REGIONS];   // 64-Bytes
    char region_secrets[MAX_REGIONS][MAX_REGION_SECRET + MAC]; // 64*96-Bytes
    char song_name[MAX_SONG_NAME];                             // 64-Bytes
    long int endFullSong;
    long int songSize;
    riff wav_md;
} song;

// accessors for variable-length metadata fields
#define get_drm_rids(d) (d.md.buf)
#define get_drm_uids(d) (d.md.buf + d.md.num_regions)
#define get_drm_song(d) ((char *)(&d.md) + d.md.md_size)

// shared buffer values
enum commands { QUERY_PLAYER, QUERY_SONG, LOGIN, LOGOUT, SHARE, PLAY, STOP, DIGITAL_OUT, PAUSE, RESTART, SEEKFWD, SEEKREV, FASTFWD };
enum states   { STOPPED, WORKING, PLAYING, PAUSED };

// struct to interpret shared command channel
//typedef volatile struct __attribute__((__packed__)) {
typedef volatile struct {
    char cmd;                   // from commands enum
    char drm_state;             // from states enum
    char login_status;          // 0 = logged off, 1 = logged on
    char padding;               // not used
    char username[USERNAME_SZ]; // stores logged in or attempted username
    char pin[MAX_PIN_SZ];       // stores logged in or attempted pin

    // shared buffer is either a drm song or a query
    union {
    	song song;
        query query;
    };
} cmd_channel;

#endif /* SRC_MIPOD_H_ */
