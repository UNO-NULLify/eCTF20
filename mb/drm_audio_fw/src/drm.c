#include "drm.h"
#include "sleep.h"
#include "util.h"
#include "xaxidma.h"
#include "xil_exception.h"
#include "xil_mem.h"
#include "xintc.h"
#include "xparameters.h"
#include "xstatus.h"
#include "include/sodium.h"

//////////////////////// GLOBALS ////////////////////////
// Current user struct
user_md u;

// DRM metadata struct
drm_md d;

// LED colors and controller
u32 *led = (u32 *)XPAR_RGB_PWM_0_PWM_AXI_BASEADDR;
const struct color RED = {0x01ff, 0x0000, 0x0000};
const struct color YELLOW = {0x01ff, 0x01ff, 0x0000};
const struct color GREEN = {0x0000, 0x01ff, 0x0000};
const struct color BLUE = {0x0000, 0x0000, 0x01ff};

// audio DMA access
static XAxiDma sAxiDma;

//////////////////////// INITIALIZATION ////////////////////////
int InitMicroBlaze() {
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

  SetState(STOPPED);
}

// TODO: Copy num_users and num_regions into drm_md

//////////////////////// HELPER FUNCTIONS ////////////////////////
/* Check login status
 * 1 = logged in
 * 0 = logged out
 */
int GetLogin() { return u.logged_in; }

// Returns number of provisioned users
int GetUserTotal() { return d.num_user; }

// Set state of drm and LED color
void SetState(STATE state) {
  d.state = state;
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
        if (crypto_pwhash_str_verify(creds[i][1], pin, strlen(pin))) {
          u.user = creds[i][0];
          u.hash = creds[i][1];
          u.logged_in = 1;
        }
        mb_printf("User not found\r\n");
        sodium_memzero(u, sizeof(u));
        // delay failed attempt by 5 seconds
        sleep(LOGIN_DELAY);
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

void Share() {
  // check if logged in
  if (GetLogin()) {
      /*
       * TODO:
       * - Check if owner
       * - Check if recipient exists
       */

  } else {
    mb_printf("Not logged in\r\n");
  }
}

void Query() {
  // check if logged in
  if (GetLogin()) {
      /*
       * TODO:
       * - Song query sutff
       */

  } else {
    mb_printf("Not logged in\r\n");
  }
}

void DigitalOut() {
  // check if logged in
  if (GetLogin()) {
      /*
       * TODO:
       * - Check if owner or shared to
       */

  } else {
    mb_printf("Not logged in\r\n");
  }
}

void Play() {
  // check if logged in
  if (GetLogin()) {
    /* TODO:
     * - Check if owner or shared to
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
  if (InitMicroBlaze() == XST_FAILURE) {
    return XST_FAILURE;
  }

  // clear command channel
  // memset((void *)c, 0, sizeof(cmd_channel));

  mb_printf("Audio DRM Module has Booted\n\r");

  // run forever
  while (1) {
    // wait for interrupt to start
    if (InterruptProcessed) {
      InterruptProcessed = FALSE;
      SetState(WORKING);

      /* TODO: Set command to something
       * command is set by the miPod player
       */
      switch (command) {
        case LOGIN:
          Login();
          break;
        case LOGOUT:
          LogOut();
          break;
        case QUERY_SONG:
          Query();
          break;
        case SHARE:
          Share();
          break;
        case PLAY:
          Play();
          mb_printf("Done Playing Song\r\n");
          break;
        case DIGITAL_OUT:
          DigitalOut();
          break;
        default:
          mb_printf("Not a command!\r\n");
          break;
      }

      // Not sure why, but MITRE does this
      usleep(500);
      SetState(STOPPED);
    }
  }

  // TODO: Set a way to reach this unreachable code
  cleanup_platform();
  return 0;
}
