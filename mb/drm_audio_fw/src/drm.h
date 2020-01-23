//
// Created by artificial on 1/23/20.
//

#ifndef DRM_AUDIO_FW_DRM_H
#define DRM_AUDIO_FW_DRM_H

#define MAX_USERNAME_SZ 64
#define MAX_HASH_SZ crypto_pwhash_STRBYTES
#define MAX_USERS 64


typedef struct {
    char user[MAX_USERNAME_SZ];
    char hash[MAX_HASH_SZ];
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

} drm_md;

#endif //DRM_AUDIO_FW_DRM_H