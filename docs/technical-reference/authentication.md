# Authentication

Explination of how we use monocypher to do logins and blah blah blah

## Login

The ```login``` function begins a user's session if the miPod's internal login state ```s.logged_in``` equals 0 and upon successful authentication. This function has no parameters and takes returns ```void```.

```Login``` first compares the username from the command channel ```c->username``` to a set of usernames stored on the miPod. If that check passes the value of ```c->pin``` is hashed with the ```argon2i()``` function and compared to the corresponding pin hash stored on the device.

Upon both of the above checks being successful, the values of both the internal state ```s.logged_in``` and the command channel value ```c->login_status``` are changed to 1. Additionally, the values of the username and pin are copied to the miPod's internal state (```s.username``` and ```s.pin``` respectively). 

```c
void login() {
    if (s.logged_in) {
        mb_printf("Already logged in. Please log out first.\r\n");
        memcpy((void*)c->username, s.username, USERNAME_SZ);
        memcpy((void*)c->pin, s.pin, MAX_PIN_SZ);
    } else {
        for (int i = 0; i < PROVISIONED_USERS; i++) {
            // search for matching username
            if (!strcmp((void*)c->username, user_data[i].name)) {
                // check if pin matches
            	//secrets pin hash to bytes
            	uint8_t usr_pin_bytes[ARGON_HASH_SZ] = {0};
            	byte_me(usr_pin_bytes, user_data[i].pin_hash, strlen(user_data[i].pin_hash));
            	//
            	//make comparison hash
            	uint8_t cmp_hash[ARGON_HASH_SZ] = {0};
            	//work area
            	uint8_t *work_area;
            	work_area = (uint8_t *) malloc(ARGON_BLOCKS*1024);
            	memset(work_area, 0, sizeof(work_area));
            	if (work_area == NULL)
            	{
            		mb_printf("\r\nFailed to allocate the work area. Aborting.\r\n");
            		memset((void*)c->username, 0, USERNAME_SZ);
            		memset((void*)c->pin, 0, MAX_PIN_SZ);
            		return;
            	}
            	//salt bytes
            	uint8_t salt_bytes[ARGON_SALT_SZ] = {0};
            	byte_me(salt_bytes, user_data[i].salt, strlen(user_data[i].salt));
                crypto_argon2i(cmp_hash,
            				   ARGON_HASH_SZ,
							   work_area,
							   ARGON_BLOCKS,
							   ARGON_ITTERS,
							   (void*)c->pin,
							   strlen((void*)c->pin),
							   salt_bytes,
							   ARGON_SALT_SZ);
                if (!crypto_verify32(cmp_hash, usr_pin_bytes)) {
                    //update states
                    s.logged_in = 1;
                    c->login_status = 1;
                    memcpy(s.username, (void*)c->username, USERNAME_SZ);
                    memcpy(s.pin, (void*)c->pin, MAX_PIN_SZ);
                    s.uid = user_data[i].id;
                    mb_printf("Logged in for user '%s'\r\n", c->username);
                    free(work_area);
                    return;
                } else {
                    // reject login attempt
                    mb_printf("Incorrect pin for user '%s'\r\n", c->username);
                    memset((void*)c->username, 0, USERNAME_SZ);
                    memset((void*)c->pin, 0, MAX_PIN_SZ);
                    free(work_area);
                    return;
                }
            }
        }

        // reject login attempt
        mb_printf("User not found\r\n");
        memset((void*)c->username, 0, USERNAME_SZ);
        memset((void*)c->pin, 0, MAX_PIN_SZ);
    }
}
```

## Logout
The ```logout``` function terminates a users session on the miPod if and only if they are first logged in. This function zeros out the command channel ```c``` of all references to the user, changes the miPod's internal state ```s.logged_in``` to 0, has no parameters, and returns ```void```.

```c
void logout() {
    if (c->login_status) {
        mb_printf("Logging out...\r\n");
        s.logged_in = 0;
        c->login_status = 0;
        memset((void*)c->username, 0, USERNAME_SZ);
        memset((void*)c->pin, 0, MAX_PIN_SZ);
        s.uid = 0;
    } else {
        mb_printf("Not logged in\r\n");
    }
}
```