# Code Reviews

## Reference Front-end Code review notes
### /miPod/src/main.c
<code>
	(lines 31 and 32)

    system("devmem 0x41200000 32 0");

    system("devmem 0x41200000 32 1");
</code>

Uses system to call devmem -- this binary is located at /sbin/devmem and can be replaced with a malicious binary.


<code>
	(lines 109 and 110)

    strcpy((void*)c->username, username);

    strcpy((void*)c->pin, pin);
</code>

Uses strcopy -- does not perform bounds checking.


<code>
	(line 200)

    strcpy((char *)c->username, username);
</code>

Uses strcopy -- does not perform bounds checking.


<code>
	(line 78)

    fd = open(fname, O_RDONLY);
</code>

We will be able to manipulate the environment to change what is opened or use a race condition to bypass authentication


<code>
	(line 215)

    fd = open(song_name, O_WRONLY);
</code>

We will be able to manipulate the environment to change what is opened or use a race condition to bypass authentication


<code>
	(line 322)

    int fd = open(fname, O_WRONLY | O_CREAT | O_TRUNC);
</code>

We will be able to manipulate the environment to change what is opened or use a race condition to bypass authentication


<code>
	(line 353)

    mem = open("/dev/uio0", O_RDWR);

    c = mmap(NULL, sizeof(cmd_channel), PROT_READ | PROT_WRITE, MAP_SHARED, mem, 0);
</code>

Not vulnerable to environment manipulation, but we can watch it.


<code>
	(line 89)

    read(fd, song_buf, sb.st_size);
</code>

Check the size of the buffer vs what is passed.

<code>
	(lines 272, 275, 278)

    usleep(200000); // wait for DRM to print

    . . .

    usleep(200000); // wait for DRM to print

    . . .

    usleep(200000); // wait for DRM to print
</code>

uses depricated usleep instead of nanosleep() or setitimer().

### /miPod/src/mipod.h
<code>
	(lines 25, 28, and 29)

    usleep(200000); // wait for DRM to print

    . . .

    #define print_prompt() printf(USER_PROMPT, "")

    #define print_prompt_msg(...) printf(USER_PROMPT, __VA_ARGS__)
</code>

Format string attack is possible on uses of mp_printf(), print_prompt(), and print_prompt_msg() -- not format specified.

## Reference Back-end Code review notes
### /mb/drm_audio_fw/src/main.c
### /mb/drm_audio_fw/src/platform.h
### /mb/drm_audio_fw/src/platform.c

## Review of our design
### /mb/drm_audio_fw/src/drm.h
### /mb/drm_audio_fw/src/drm.c

<code>
    (line 119)

    if (!UserMD.logged_in) {
        /* Check user is owner or shared user */
        if (!sodium_memcmp(SongMD.owner, UserMD.name, sizeof(SongMD.owner))) {
            user_access = 0;
            for (int i = 0; i < PROVISIONED_USERS; i++) {
                if (sodium_memcmp(SongMD.shared[i], UserMD.name, sizeof(SongMD.shared[i]))) {
                    user_access = 1;
                    break;
                }
            }
        } else { user_access = 1; }
    }
</code>

Complete: I worked with Frank to resolve this issue, this code checked if a user was not logged in, instead of if they were logged in.


### /mb/drm_audio_fw/src/platform.h
### /mb/drm_audio_fw/src/platform.c
