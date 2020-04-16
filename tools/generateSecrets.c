#include "device/device_secrets"
#include "constants.h"
#include <stdio.h>
#include <stdlib.h>
#include <monocypher.h>
#include <string.h>

struct metadata {
    uint8_t sharedInfo[MAX_USERS][48]; // [64-Bytes of Users to share] [32 byte key + room for 16 byte MAC]
    uint8_t owner_id; // 1-Byte
    uint8_t region_ids[MAX_REGIONS]; // 64-Bytes
    char region_secrets[MAX_REGIONS][MAX_REGION_SECRET + MAC]; // 64*96-Bytes
    char song_name[MAX_SONG_NAME]; // 64-Bytes
    long int endFullSong;
    long int songSize;
};

int readMetadata(FILE *infile, struct metadata * metaIn ){
	if(fread(metaIn, sizeof(struct metadata), 1, infile) == 0) {
		printf("Error reading metadata file !\n");
	}
	return 1;
}

void hex2bytes(uint8_t *hex, uint8_t *bytes) {
	for(int i = 0; i < strlen(hex); i = i + 2) {
		if(hex[i] >= '0' && hex[i] <= '9') {
			bytes[i/2] = hex[i] - '0';
		} else{
			bytes[i/2] = hex[i] - 'a' + 10;
		}

		bytes[i/2] = bytes[i/2] << 4;

		if(hex[i+1] >= '0' && hex[i+1] <= '9') {
			bytes[i/2] += hex[i+1] - '0';
		} else{
			bytes[i/2] += hex[i+1] - 'a' + 10;
		}
	}
}

uint8_t * generateSecret(char *pin, struct metadata *meta) {

	// ------------ Generate regionKey ------------
	uint8_t mac[32+1] = {0};
	uint8_t msg[64+1] = {0};

	// First 64 of region_secret is the encrypted msg. Second 32 is the mac.
	for(int i = 0; i < 96; i++) {
		if(i < 64) {
			msg[i] = meta->region_secrets[0][i];
		} else {
			mac[(i-64)] = meta->region_secrets[0][i];
		}
	}

	// Convert mac from hex string to uint8_t
	uint8_t bytesMac[16] = {0};
	hex2bytes(mac, bytesMac);

	// Convert msg from hex string to uint8_t
	uint8_t bytesMsg[32] = {0};
	hex2bytes(msg, bytesMsg);

	// Determine which region_data by region_id
	int region_index = 0;
	for(int i=0; i<(sizeof(region_data)/sizeof(region_data[0])); i++) {
		if(region_data[i].id == meta->region_ids[0]) {
			region_index = i;
			break;
		}
	}

	// Convert rand_pass from hex string to uint8_t
	uint8_t bytesPass[32] = {0};
	hex2bytes(region_data[region_index].rand_pass, bytesPass);

	// Instantiate output and nonce
	uint8_t regionKey[32] = { 0 };
	const uint8_t nonce[24] = { 0 };

	// Decrypt
	crypto_unlock(regionKey, bytesPass, nonce, bytesMac, bytesMsg, sizeof(bytesMsg));

	// Check if decryption failed
	if(regionKey[0] == NULL) {
		printf("\033[0;31m");
		printf("\n\nCrypto Unlock Failed!\n\n");
		printf("\033[0m");
		return 1;
	}

	for(int i=0; i < (sizeof(user_data) / sizeof(user_data[1])); i++) {
		if(user_data[i].id == meta->owner_id){

			// ------------ Generate hardwareSecretHash ------------
			uint8_t *hshu = malloc(strlen(user_data[i].hw_secret) + strlen(meta->song_name));
			memcpy(hshu, user_data[i].hw_secret, strlen(user_data[i].hw_secret));
			memcpy(hshu + strlen(user_data[i].hw_secret), meta->song_name, strlen(meta->song_name));

			uint8_t hardwareSecretHash[64] = {0};
			crypto_blake2b(hardwareSecretHash, hshu, strlen((char *)hshu));

			// ------------ Generate songKey ------------
			uint8_t *song_str = malloc(strlen(user_data[i].pin_hash) + strlen(pin) + strlen(meta->song_name));
			memcpy(song_str, user_data[i].pin_hash, strlen(user_data[i].pin_hash));
			memcpy(song_str + strlen(user_data[i].pin_hash), pin, strlen(pin));
			memcpy(song_str + strlen(user_data[i].pin_hash) + strlen(pin), meta->song_name, strlen(meta->song_name));

			uint8_t songKey[64] = {0};
			crypto_blake2b(songKey, song_str, strlen((char *)song_str));

			// ------------ Generate Secret ------------
			uint8_t secret[sizeof(songKey) + sizeof(regionKey) + sizeof(hardwareSecretHash)] = {0};

			memcpy(secret, songKey, sizeof(songKey));
			memcpy(secret+sizeof(songKey), regionKey, sizeof(regionKey));
			memcpy(secret+sizeof(songKey)+sizeof(regionKey), hardwareSecretHash, sizeof(hardwareSecretHash));

			// Print secret
			printf("Secret: ");
			for(int i = 0; i < (sizeof(secret)/sizeof(secret[0])); i++) {
				printf("%x", secret[i]);
			}
			printf("\n\n");

			// TODO: Make this actually return something.
			// I can't get it to work because c is dumb
			// return secret;
		}
	}
}

uint8_t * generate30Secret(struct metadata *meta) {
	for(int i=0; i < (sizeof(user_data) / sizeof(user_data[1])); i++) {
		if(user_data[i].id == meta->owner_id){

			// ------------ Generate hardwareSecretHash30 ------------
			uint8_t *hsh30 = malloc(strlen(user_data[i].hw_secret) + strlen(meta->song_name) + 2); // +2 for the 30
			memcpy(hsh30, user_data[i].hw_secret, strlen(user_data[i].hw_secret));
			memcpy(hsh30 + strlen(user_data[i].hw_secret), meta->song_name, strlen(meta->song_name));
			memcpy(hsh30 + strlen(user_data[i].hw_secret) + strlen(meta->song_name), "30", 2);

			uint8_t hardwareSecretHash30[64] = {0};
			crypto_blake2b(hardwareSecretHash30, hsh30, strlen((char *)hsh30));

			printf("30Secret: ");
			for(int i = 0; i < (sizeof(hardwareSecretHash30)/sizeof(hardwareSecretHash30[0])); i++) {
				printf("%x", hardwareSecretHash30[i]);
			}
			printf("\n\n");

			// TODO: Make this actually return something.
			// I can't get it to work because c is dumb
			// return hardwareSecretHash30;
		}
	}
}

int main(int argc, char *argv[]) {

	// TODO: YOU MUST FILL IN THIS PIN.
	// The pin will be available at implementation
	char *pin = "PUT YOUR PIN HERE";

	// Load metadata
	struct metadata meta = {0};
	FILE *encFile;
	encFile = fopen("provision_test/audio/test-protect-small-step.drm", "rb");
	if (encFile == NULL) {
		fprintf(stderr, "\nError opening file here\n");
		return 1;
	}
	readMetadata(encFile, &meta);

	generateSecret(pin, &meta);

	generate30Secret(&meta);

}