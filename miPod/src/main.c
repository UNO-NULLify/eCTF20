/*
 * eCTF Collegiate 2020 miPod Example Code
 * Linux-side DRM driver
 */


#include "miPod.h"

#include <stdio.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <linux/gpio.h>
#include <string.h>


volatile cmd_channel *c;


//////////////////////// UTILITY FUNCTIONS ////////////////////////


// sends a command to the microblaze using the shared command channel and interrupt
void send_command(int cmd) {
    
}


// parses the input of a command with up to two arguments
// any arguments not present will be set to NULL
void parse_input(char *input, char **cmd, char **arg1, char **arg2) {

}


// prints the help message while not in playback
void print_help() {
    mp_printf("miPod options:\r\n");
    mp_printf("  login <username> <pin>: log on to a miPod account (must be logged out)\r\n");
    mp_printf("  logout: log off of a miPod account (must be logged in)\r\n");
    mp_printf("  query <song.drm>: display information about the song\r\n");
    mp_printf("  share <song.drm> <username>: share the song with the specified user\r\n");
    mp_printf("  play <song.drm>: play the song\r\n");
    mp_printf("  digital_out <song.drm>: play the song to digital out\r\n");
    mp_printf("  exit: exit miPod\r\n");
    mp_printf("  help: display this message\r\n");
}


// prints the help message while in playback
void print_playback_help() {
    mp_printf("iPod playback options:\r\n");
    mp_printf("  stop: stop playing the song\r\n");
    mp_printf("  pause: pause the song\r\n");
    mp_printf("  resume: resume the paused song\r\n");
    mp_printf("  restart: restart the song\r\n");
    mp_printf("  ff: fast forwards 5 seconds(unsupported)\r\n");
    mp_printf("  rw: rewind 5 seconds (unsupported)\r\n");
    mp_printf("  help: display this message\r\n");
}


// loads a file into the song buffer with the associate
// returns the size of the file or 0 on error
size_t load_file(char *fname, char *song_buf) {

}


//////////////////////// COMMAND FUNCTIONS ////////////////////////


// attempts to log in for a user
void login(char *username, char *pin) {

}


// logs out for a user
void logout() {

}


// queries the DRM about the player
// DRM will fill shared buffer with query content
void query_player() {

}


// queries the DRM about a song
void query_song(char *song_name) {

}


// attempts to share a song with a user
void share_song(char *song_name, char *username) {

}


// plays a song and enters the playback command loop
int play_song(char *song_name) {

}


// turns DRM song into original WAV for digital output
void digital_out(char *song_name) {

}


//////////////////////// MAIN ////////////////////////


int main(int argc, char** argv){
    
}
