#include "constants.h"
#include "device/device_secrets"
#include <monocypher.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define CHUNK_SIZE 4096

struct metadata {
  uint8_t sharedInfo[MAX_USERS][48]; // [64-Bytes of Users to share] [32 byte
                                     // key + room for 16 byte MAC]
  uint8_t owner_id;                  // 1-Byte
  uint8_t region_ids[MAX_REGIONS];   // 64-Bytes
  char region_secrets[MAX_REGIONS][MAX_REGION_SECRET + MAC]; // 64*96-Bytes
  char song_name[MAX_SONG_NAME];                             // 64-Bytes
  long int endFullSong;
  long int songSize;
};

int readMetadata(FILE *infile, struct metadata *metaIn) {
  if (fread(metaIn, sizeof(struct metadata), 1, infile) == 0) {
    printf("Error reading metadata file !\n");
    return 1;
  }
  return 0;
}

int querySong(char *songPath) {

	// Load metadata
	struct metadata meta = {0};
	FILE *encFile;
	encFile = fopen(songPath, "rb");
	if (encFile == NULL) {
		printf("\033[0;31m");
		printf("Error reading metadata!\n");
		printf("\033[0m");
		return 1;
	}
	readMetadata(encFile, &meta);

	printf("Song Name: %s\n", meta.song_name);

	// Print provisioned users
	// First, get the songs owner
	printf("Provisioned Users: ");
	for (int j = 0; j < (sizeof(user_data) / sizeof(user_data[1])); j++) {
		if (user_data[j].id == meta.owner_id) {
			printf("%s (\033[0;31mowner\033[0m), ", user_data[j].name);
		}
	}
	
	// Next, get the users it's shared with
	for(int i = 0; i < sizeof(meta.sharedInfo)/sizeof(meta.sharedInfo[0]); i++) {
        if (meta.sharedInfo[i][0] != NULL){
			for (int j = 0; j < (sizeof(user_data) / sizeof(user_data[1])); j++) {
				if (user_data[j].id == (i + 1)) {
					printf("%s, ", user_data[j].name);
				}
			}
		}
	}
	printf("\n");


	// Print provisioned regions
    printf("Provisioned Regions: ");
	for(int i = 0; i < sizeof(meta.region_ids)/sizeof(meta.region_ids[0]); i++) {
        if (meta.region_ids[i] == NULL){
			break;
		} else {
			for (int j = 0; j < (sizeof(region_data) / sizeof(region_data[1])); j++) {
				if (region_data[j].id == meta.region_ids[i]) {
					printf("%s, ", region_data[j].name);
				}
			}
		}
	}
	printf("\n");

	return 0;
}

int main(int argc, char *argv[]) {

	char *songPath = "provision_test/audio/test-protect.drm";
	if (querySong(songPath)) {
		printf("\033[0;31m");
		printf("\nThe song \"%s\" was not found!\n", songPath);
		printf("\033[0m");
		return 1;
	}

	return 0;
}
