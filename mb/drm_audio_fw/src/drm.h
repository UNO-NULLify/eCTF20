#ifndef DRM_AUDIO_FW_DRM_H
#define DRM_AUDIO_FW_DRM_H

#define LOGIN_DELAY 5  // seconds

#define MAX_USERNAME_SZ 64
#define MAX_HASH_SZ crypto_pwhash_STRBYTES
#define MAX_USERS 64

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
  char owner[MAX_USERNAME_SZ];
  char shared[MAX_USERS][MAX_USERNAME_SZ];
  char regions[MAX_REGIONS][REGION_NAME_SZ];

} song_md;

typedef struct {
  int num_user;
  int num_region;
  STATE state;
} drm_md;

#endif  // DRM_AUDIO_FW_DRM_H