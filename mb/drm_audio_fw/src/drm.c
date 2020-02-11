#include <sys/prctl.h>
#include <sys/ptrace.h>

#include "drm.h"
#include "include/sodium.h"
#include "secrets.h"
#include "sleep.h"
#include "util.h"
#include "xaxidma.h"
#include "xil_exception.h"
#include "xil_mem.h"
#include "xintc.h"
#include "xparameters.h"
#include "xstatus.h"

//////////////////////// GLOBALS ////////////////////////
// Current user struct
user_md UserMD;

// DRM metadata struct
drm_md DeviceMD;

// LED colors and controller
u32 *led = (u32 *)XPAR_RGB_PWM_0_PWM_AXI_BASEADDR;
const struct color RED = {0x01ff, 0x0000, 0x0000};
const struct color YELLOW = {0x01ff, 0x01ff, 0x0000};
const struct color GREEN = {0x0000, 0x01ff, 0x0000};
const struct color BLUE = {0x0000, 0x0000, 0x01ff};

// audio DMA access
static XAxiDma sAxiDma;

//////////////////////// INITIALIZATION ////////////////////////
int initMicroBlaze() {
  u32 status;

  // Initialize MicroBlaze platform
  init_platform();
  microblaze_register_handler((XInterruptHandler)myISR, (void *)0);
  microblaze_enable_interrupts();

  // Initialize the interrupt controller driver so that it is ready to use.
  status = XIntc_Initialize(&InterruptController, XPAR_INTC_0_DEVICE_ID);
  if (status != XST_SUCCESS) {
    return XST_FAILURE;
  }

  // Set up the Interrupt System.
  status = SetUpInterruptSystem(&InterruptController, (XInterruptHandler)myISR);
  if (status != XST_SUCCESS) {
    return XST_FAILURE;
  }

  // Configure the DMA
  status = fnConfigDma(&sAxiDma);
  if (status != XST_SUCCESS) {
    mb_printf("DMA configuration ERROR\r\n");
    return XST_FAILURE;
  }

  // Start the LED
  enableLED(led);

  setState(STOPPED);
}

// TODO: Copy num_users and num_regions into drm_md

//////////////////////// HELPER FUNCTIONS ////////////////////////
// Set state of drm and LED color
void setState(STATE state) {
  DeviceMD.state = state;
  switch (state) {
  case WORKING:
    setLED(led, YELLOW);
    break;
  case PLAYING:
    setLED(led, GREEN) : break;
  case PAUSED:
    setLED(led, BLUE) : break;
  case STOPPED:
  default:
    setLED(led, RED) break;
  }
}

/*
 * Checks the "TracerPid" entry in the /proc/self/status file. If the value
 * is not zero then a debugger has attached. If a debugger is attached then
 * signal to the parent pid and exit.
 */
void checkProc() {
  FILE *proc_status = fopen("/proc/self/status", "r");
  if (proc_status == NULL) {
    return;
  }

  char line[1024] = {};
  char *fgets(char *s, int size, FILE *stream);
  while (fgets(line, sizeof(line), proc_status) != NULL) {
    const char traceString[] = "TracerPid:";
    char *tracer = strstr(line, traceString);
    if (tracer != NULL) {
      int pid = atoi(tracer + sizeof(traceString) - 1);
      if (pid != 0) {
        fclose(proc_status);
        exit(EXIT_FAILURE);
      }
    }
  }
  fclose(proc_status);
}

//////////////////////// COMMAND FUNCTIONS ////////////////////////
void logOn(char *username, char *pin) {
  // check if logged in
  if (UserMD.logged_in) {
    mb_printf("User already logged-in.\r\n");
  } else {
    // search username
    for (int i = 0; i <= PROVISIONED_USERS; i++) {
      if (sodium_memcmp(user_data[i].name, username)) {
        // generate and search hash
        if (crypto_pwhash_str_verify(user_data[i].pin_hash, pin, strlen(pin))) {
          UserMD.name = user_data[i].name;
          UserMD.pin_hash = user_data[i].pin_hash;
          UserMD.hw_secret = user_data[i].hw_secret;
          UserMD.pub_key = user_data[i].pub_key;
          UserMD.pvt_key_enc = user_data[i].pvt_key_enc;
          UserMD.logged_in = 1;
        }
        mb_printf("User not found\r\n");
        sodium_memzero(u, sizeof(u));
        // delay failed attempt by 5 seconds
        sleep(LOGIN_DELAY);
      }
    }
  }
}

void logOff() {
  // check if logged in
  if (UserMD.logged_in) {
    mb_printf("Logging out...\r\n");
    // zero-out user struct
    sodium_memzero(u, sizeof(u));
    // double check?
    UserMD.name = NULL;
    UserMD.pin_hash = NULL;
    UserMD.pvt_key_enc = NULL;
    UserMD.pub_key = NULL;
    UserMD.hw_secret = NULL;
    UserMD.logged_in = 0;
  } else {
    mb_printf("Not logged in\r\n");
  }
}

void share() {
  // check if logged in
  if (UserMD.logged_in) {
    /*
     * TODO:
     * - Check if owner using checkAuthorization()
     * - If the person sharing is not the owner -- don't share
     * - Check if recipient exists
     * - Check if recipient already have access to the song -- if so error out
     * with that info
     */

  } else {
    mb_printf("Not logged in\r\n");
  }
}

void query() {
  // check if logged in
  if (UserMD.logged_in) {
    /*
     * TODO:
     * - Song query stuff
     */

  } else {
    mb_printf("Not logged in\r\n");
  }
}

void digitalOut() {
  // check if logged in
  if (UserMD.logged_in) {
    /*
     * TODO:
     * - Check authorization using checkAuthorization()
     * - Output to digital interface
     */
  } else {
    mb_printf("Not logged in\r\n");
  }
}

void play() {
  // check if logged in
  if (UserMD.logged_in) {
    /* TODO:
     * - Check authorization using checkAuthorization()
     * - Check if song is playing
     * - Implement pause
     * - Implement resume
     * - Implement stop
     * - Implement restart
     */
  } else {
    mb_printf("Not logged in\r\n");
  }
}

//////////////////////// MAIN FUNCTION ////////////////////////
int main() {
  if (initMicroBlaze() == XST_FAILURE) {
    return XST_FAILURE;
  }

  // Clear command channel
  // memset((void *)c, 0, sizeof(cmd_channel));

  mb_printf("Audio DRM Module has Booted\n\r");

  int fork_pid = fork();
  if (fork_pid == 0) {
    // Set the process core as undumpable
    prctl(PR_SET_DUMPABLE, 0);

    // Trace the parent process
    int parent = getppid();
    if (ptrace(PTRACE_ATTACH, parent, NULL, NULL) != 0) {
      kill(parent, SIGKILL);
      exit(EXIT_FAILURE);
    }

    // Restart the parent so it can keep processing like normal
    int status = 0;
    wait(&status);
    if (ptrace(PTRACE_SETOPTIONS, parent, NULL,
               PTRACE_O_TRACEFORK | PTRACE_O_EXITKILL) != 0) {
      kill(parent, SIGKILL);
      exit(EXIT_FAILURE);
    }
    ptrace(PTRACE_CONT, parent, NULL, NULL);

    // Handle any signals that may come in from traces
    while (true) {
      checkProc();
      int pid = waitpid(-1, &status, WNOHANG);
      if (pid == 0) {
        sleep(1);
        continue;
      }

      if (status >> 16 == PTRACE_EVENT_FORK) {
        // Follow the fork
        long newpid = 0;
        ptrace(PTRACE_GETEVENTMSG, pid, NULL, &newpid);
        ptrace(PTRACE_ATTACH, newpid, NULL, NULL);
        ptrace(PTRACE_CONT, newpid, NULL, NULL);
      }
      ptrace(PTRACE_CONT, pid, NULL, NULL);
    }
  }

  // Run forever
  while (1) {
    // Wait for interrupt to start
    if (InterruptProcessed) {
      InterruptProcessed = FALSE;
      setState(WORKING);

      /* TODO: Set command to something
       * command is set by the miPod player
       */
      switch (command) {
      case LOGIN:
        logOn();
        break;
      case LOGOUT:
        logOff();
        break;
      case QUERY_SONG:
        query();
        break;
      case SHARE:
        share();
        break;
      case PLAY:
        play();
        mb_printf("Done Playing Song\r\n");
        break;
      case DIGITAL_OUT:
        digitalOut();
        break;
      default:
        mb_printf("Not a command!\r\n");
        break;
      }

      // Not sure why, but MITRE does this
      usleep(500);
      setState(STOPPED);
    }
  }

  // TODO: Set a way to reach this unreachable code
  cleanup_platform();
  return 0;
}

/*
 * Before we enter main check to see if a debugger is present
 */
void __attribute__((constructor)) before_main() { checkProc(); }
