#ifndef DRM_AUDIO_FW_DRM_H
#define DRM_AUDIO_FW_DRM_H

#include "xil_printf.h"
#include "secrets.h"

#define LOGIN_DELAY 5 // seconds

#define MAX_USERNAME_NAME 16
#define MAX_HASH_SZ crypto_pwhash_STRBYTES
#define MAX_USERS 64
#define MAX_SONG_NAME
#define MAX_REGION_NAME 64
#define MAX_REGION_SECRET 160

typedef enum states { STOPPED, WORKING, PLAYING, PAUSED } STATE;

typedef struct {
  char *name;
  char *hw_secret;
  char *pin_hash;
  char *pub_key;
  char *pvt_key_enc;
  int logged_in;
} user_md;

typedef struct {
  char owner[MAX_USERNAME_NAME];
  char shared[PROVISIONED_USERS][MAX_USERNAME_SZ];
  char song_name[MAX_SONG_NAME]; //null terminated string of size 15 or less
  char region_list[PROVISIONED_REGIONS][MAX_REGION_NAME]; // 32 regions max of size 64 len + null
  char region_secret_list[PROVISIONED_REGIONS][MAX_REGION_SECRET];  // 32 regions max of size 160 + null

} song_md;

typedef struct {
  int num_user;
  int num_region;
  STATE state;
} drm_md;

#endif // DRM_AUDIO_FW_DRM_H