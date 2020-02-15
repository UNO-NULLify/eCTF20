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
### /mb/drm_audio_fw/src/constants.h
<code>
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
</code>

Many of the macros used throughout main.c are noted above, including the address of the mmap for IPC, sampling rates, and various values related to owners, songs, and pins.


<code>
    (line 31)

    #define MAX_SONG_SZ (1<<25)
</code>

Why would they not just use the number? Also, according to Frank, this number is incorrect by default.


<code>
    (line 23)

    #define mb_printf(...) xil_printf(MB_PROMPT __VA_ARGS__)
</code>

All uses of mb_printf (which is used for the system prompt and all print statements) need a formatter in the string that is passed to it. Otherwise they will be vulnerable to a string format attack.


### /mb/drm_audio_fw/src/main.c

<code>
    (lines 34 - 38)

    // change states
    #define change_state(state, color) c->drm_state = state; setLED(led, color);
    #define set_stopped() change_state(STOPPED, RED)
    #define set_working() change_state(WORKING, YELLOW)
    #define set_playing() change_state(PLAYING, GREEN)
    #define set_paused()  change_state(PAUSED, BLUE)
</code>

Important note regarding the lights on the Xilinx board and what actions they correspond to.


<code>
    (lines 51 - 56)

    // shared variable between main thread and interrupt processing thread
    volatile static int InterruptProcessed = FALSE;
    static XIntc InterruptController;

    void myISR(void) {
    InterruptProcessed = TRUE;
    } 
</code>

The function myISR registers the interrupt as being processed.


<code>
    (lines )
</code>


### /mb/drm_audio_fw/src/secrets.h

This headerfile is overwritten by the Python buildDevice script.


### /mb/drm_audio_fw/src/util.c

This file contains the basic setup for changing the LEDs, setting up the interrupt system, and configuring the I2S controller.

<code>
    (lines 141 - 146)

    if(XAxiDma_HasSg(AxiDma))
	{
		xil_printf(MB_PROMPT "Device configured as SG mode\r\n");

		return XST_FAILURE;
	}
</code>

The code handling an issue where the I2S module is in SG mode has a print statement with no format specifier.

### Everything else

Is simply either a file full of Xilinx provided code or full of function prototypes.


## Review of our design
### /mb/drm_audio_fw/src/drm.h
### /mb/drm_audio_fw/src/drm.c
