# Attack


## Potential Vulnerabilities
The following is a curated list of potential vulnerabilities identified in the reference design via code review. These potential vulnerabilities combine to form what was our starting point for the attack phase. 
### miPod
##### /miPod/src/main.c
```
    (lines 31 and 32)

    system("devmem 0x41200000 32 0");

    system("devmem 0x41200000 32 1");
```
Uses system to call devmem -- this binary is located at /sbin/devmem and can be replaced with a malicious binary.

---


```
    (lines 109 and 110)

    strcpy((void*)c->username, username);

    strcpy((void*)c->pin, pin);
```

Uses strcopy -- does not perform bounds checking.

---

```
    (line 200)

    strcpy((char *)c->username, username);
```

Uses strcopy -- does not perform bounds checking.

---

```
    (line 78)

    fd = open(fname, O_RDONLY);
```

We may be able to manipulate the environment to change what is opened or use a race condition

---

```
    (line 215)

    fd = open(song_name, O_WRONLY);
```

We may be able to manipulate the environment to change what is opened or use a race condition

---

```
    (line 322)

    int fd = open(fname, O_WRONLY | O_CREAT | O_TRUNC);
```

We may be able to manipulate the environment to change what is opened or use a race condition

---

```
    (line 353)

    mem = open("/dev/uio0", O_RDWR);

    c = mmap(NULL, sizeof(cmd_channel), PROT_READ | PROT_WRITE, MAP_SHARED, mem, 0);
```

We can watch/modify the contents of this.

---

```
    (line 89)

    read(fd, song_buf, sb.st_size);
```

Check the size of the buffer vs what is passed.

---

```
    (lines 272, 275, 278)

    usleep(200000); // wait for DRM to print

    . . .

    usleep(200000); // wait for DRM to print

    . . .

    usleep(200000); // wait for DRM to print
```

uses depricated usleep instead of nanosleep() or setitimer().

---

##### /miPod/src/mipod.h

```
    (lines 25, 28, and 29)

    usleep(200000); // wait for DRM to print

    . . .

    #define print_prompt() printf(USER_PROMPT, "")

    #define print_prompt_msg(...) printf(USER_PROMPT, __VA_ARGS__)
```

Format string attack may be possible on uses of mp_printf(), print_prompt(), and print_prompt_msg() -- not format specified.

---

### DRM

##### /mb/drm_audio_fw/src/constants.h

```
    // shared DDR address
    #define SHARED_DDR_BASE (0x20000000 + 0x1CC00000)

    // memory constants
    #define CHUNK_SZ 16000
    #define FIFO_CAP 4096*4

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
    #define MAX_SONG_SZ (1<<25)
```

Many of the macros used throughout main.c are noted above, including the address of the mmap for IPC, sampling rates, and various values related to owners, songs, and pins.

---

```
    (line 31)

    #define MAX_SONG_SZ (1<<25)
```

Why would they not just use the number? Also, according to Frank, this number is incorrect by default.

---

```
    (line 23)

    #define mb_printf(...) xil_printf(MB_PROMPT __VA_ARGS__)
```

All uses of mb_printf (which is used for the system prompt and all print statements) need a formatter in the string that is passed to it. Otherwise, they may be vulnerable to a string format attack.


---

##### /mb/drm_audio_fw/src/main.c

```
    (lines 34 - 38)

    // change states
    #define change_state(state, color) c->drm_state = state; setLED(led, color);
    #define set_stopped() change_state(STOPPED, RED)
    #define set_working() change_state(WORKING, YELLOW)
    #define set_playing() change_state(PLAYING, GREEN)
    #define set_paused()  change_state(PAUSED, BLUE)
```

Important note regarding the lights on the Xilinx board and what actions they correspond to.

---

```
    (lines 51 - 56)

    // shared variable between main thread and interrupt processing thread
    volatile static int InterruptProcessed = FALSE;
    static XIntc InterruptController;

    void myISR(void) {
    InterruptProcessed = TRUE;
    } 
```

The function myISR registers the interrupt as being processed.

---

```
    (line 164)
    mb_printf("No user logged in");
```

This printf does not contain a format specifier and the stack may be able to be leaked if attacked using a string format attack.

---

```
    (lines 195 - 199)

    if (!locked) {
        mb_printf("Region Match. Full Song can be played. Unlocking...");
    } else {
        mb_printf("Invalid region");
    }
```

More missing format specifiers (there are 2 here).

---

```
    (line 227)

    mb_printf("Already logged in. Please log out first.\r\n");
```

More missing format specifiers.

---

```
    (line 246 and 255)

    mb_printf("Incorrect pin for user '%s'\r\n", c->username);

    mb_printf("User not found\r\n");
```

The user should not know if the username or pin were incorrect, upon unsuccessful login. This should be removed in our design.

---

```
    (line 265 and 272)

    mb_printf("Logging out...\r\n");

    . . .

    mb_printf("Not logged in\r\n");
```


More missing format specifiers.

---

```
    (line 369)

    mb_printf("Reading Audio File...");
```

More missing format specifiers.

---

```
    (line 382)

    mb_printf("Song is unlocked. Playing full song\r\n");
```

More missing formatters.

---

```
    (lines 393 - 415)

    while (InterruptProcessed) {
            InterruptProcessed = FALSE;

            switch (c->cmd) {
            case PAUSE:
                mb_printf("Pausing... \r\n");
                set_paused();
                while (!InterruptProcessed) continue; // wait for interrupt
                break;
            case PLAY:
                mb_printf("Resuming... \r\n");
                set_playing();
                break;
            case STOP:
                mb_printf("Stopping playback...");
                return;
            case RESTART:
                mb_printf("Restarting song... \r\n");
                rem = length; // reset song counter
                set_playing();
            default:
                break;
            }
    }
```

These are all missing format specifiers.

---

```
    (lines 453 and 454)

    c->song.file_size -= c->song.md.md_size;
    c->song.wav_size -= c->song.md.md_size;
```

All operations that rely on trusted data need to be performed on the local struct, not the shared one.


---

```
    (lines 492 - 497)

    // Congigure the DMA
    status = fnConfigDma(&sAxiDma);
    if(status != XST_SUCCESS) {
    mb_printf("DMA configuration ERROR\r\n");
    return XST_FAILURE;
    }
```

This printf does not contain a format specifier and the stack may be able to be leaked if attacked using a string format attack.

---

```
    (line 506)

    mb_printf("Audio DRM Module has Booted\n\r");
```

This printf does not contain a format specifier and the stack may be able to be leaked if attacked using a string format attack.

---

```
    (line 532 - 534)

    case PLAY:
    play_song();
    mb_printf("Done Playing Song\r\n");
```

This printf does not contain a format specifier and the stack may be able to be leaked if attacked using a string format attack.



IMPORTANT NOTE: There are MANY uses of strcmp in the reference code, we should replace these with strncmp and specify an expected size.

---

##### /mb/drm_audio_fw/src/secrets.h

This headerfile is overwritten by the Python buildDevice script.


---

##### /mb/drm_audio_fw/src/util.c

This file contains the basic setup for changing the LEDs, setting up the interrupt system, and configuring the I2S controller.

```
    (lines 141 - 146)

    if(XAxiDma_HasSg(AxiDma))
    {
        xil_printf(MB_PROMPT "Device configured as SG mode\r\n");

        return XST_FAILURE;
    }
```

The code handling an issue where the I2S module is in SG mode has a print statement with no format specifier.

---

### Security and function Overview
Below is a summary of all the functions added in the new design. 

#### cacheCMD

In this function, we copy the necessary parts of the IPC channel, so that we have a local copy of the data in BRAM that we can trust.

#### loadSongMD

This function will load the metadata of a song into the SongMD struct. It is currently in an unfinished state.

#### decryptSong

This function will decrypt the song. This is kind of Drew's thing and it hasn't been written yet, so I don't know the details...

#### checkAuth

This function checks if the user and player are authorized to play a given song. It specifically checks if the user is an owner of the song, if they have had the song shared with them, and then if the device is provisioned for one of the regions that the song is provisioned for.

#### logOn

Allows the user to login by checking if they are already logged in, checking if the username is provisioned for the board, and then checking the hash of the given pin against the stored hash of the user's pin. If they are already logged in, it will print a message saying so, otherwise there will be no or a generic error.

#### logOff

Checks if the users is logged in and if they are, then it wipes the UserMD struct.

#### share

Checks if the user is logged in, if they are the owner of the song, if the recipient exists, if the recipient already has access to the song, and if the song can be shared. If all of those checks pass, then it performs all functionality needed to share the song with the user.

#### querySong

Checks if the user is logged in and if the song is loaded. If those pass, then it prints out all of the song regions, the song owner, and all shared users.

#### queryPlayer

Prints all of the player regions and all of the device users.

#### main

Wipes the command channel, the songMD struct, UserMD struct, processes the interrupt, calls cacheCMD to cache the command channel, and calls the correct function based off of the command given.


### Hardware
##### Cold Boot Attacks
 **Step 1:** freeze the processor with compressed air!
 
 **Step 2:** Power down board while continuing to use compressed air on the CPU
 
 **Step 3:** while continuing to apply compressed air boot the board with a modified pl that allows for dram to be dumped
 
 **Step 4:** Listen to the socket for the dram dumped out by the custom pl


