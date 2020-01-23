#include "drm.h"
#include "include/sodium.h"

//////////////////////// GLOBALS ////////////////////////
// Current user struct
user_md u;

// DRM metadata struct
drm_md d;

//////////////////////// INITIALIZATION ////////////////////////
// copy num_users and num_regions into drm_md

//////////////////////// HELPER FUNCTIONS ////////////////////////
/* Check login status
 * 1 = logged in
 * 0 = logged out
 */
int GetLogin() {
    return u.logged_in;
}

// Returns number of provisioned users
int GetUserTotal() {
    return d.num_user;
}

//////////////////////// COMMAND FUNCTIONS ////////////////////////
void Login(char[] username, char[] pin) {
    // check if logged in
    if (GetLogin()) {
        mb_printf("User already logged-in.\r\n");
    } else {
        // search username
        int i;
        for (i = 0; i <= GetUserTotal(); i++) {
            if (sodium_memcmp(creds[i][0], username)) {
                // generate and search hash
                if (crypto_pwhash_str_verify
                            (creds[i][1], pin, strlen(pin))) {
                    u.user = creds[i][0];
                    u.hash = creds[i][1];
                    u.logged_in = 1;
                }
                mb_printf("User not found\r\n");
                sodium_memzero(u, sizeof(u));
            }
        }
    }
}
void LogOut() {
    // check if logged in
    if (GetLogin()) {
        mb_printf("Logging out...\r\n");
        // zero-out user struct
        sodium_memzero(u, sizeof(u));
        sodium_mem
        // double check?
        u.logged_in = 0;
    } else {
        mb_printf("Not logged in\r\n");
    }
}
void Share(){
    // check if logged in
}
void Query(){
    // check if logged in
}
void DigitalOut(){
    // check if logged in
}
void Play() {
    // check if logged in
    // check if song is playing
    // check who is logged in and whether they have access

    /* pause
     * resume
     * stop
     * restart
     */
}