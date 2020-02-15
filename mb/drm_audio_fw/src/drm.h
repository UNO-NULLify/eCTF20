#ifndef DRM_AUDIO_FW_DRM_H
#define DRM_AUDIO_FW_DRM_H

#include "secrets.h"
#include "xil_printf.h"

#define LOGIN_DELAY 5 // seconds
#define MAX_USERNAME_SZ 16
#define MAX_HASH_SZ crypto_pwhash_STRBYTES
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

typedef struct {
    char state; // Do we need additional fields?
} drm_md;

typedef struct {
    char
    char owner[MAX_USERNAME_SZ];
    char shared[PROVISIONED_USERS][MAX_USERNAME_SZ];
    char song_name[MAX_SONG_NAME]; // null terminated string of size 15 or less
    char region_list[MAX_REGIONS][MAX_REGION_SZ]; // 32 regions max of size 64 len + null
    char region_secret_list[MAX_REGIONS][MAX_REGION_SECRET]; // 32 regions max of size 160 + null
    int region_num;
    int loaded; // 1 == loaded, 0 == not loaded
} song_md;

void setState(STATE state);
void checkProc();

#endif // DRM_AUDIO_FW_DRM_H
