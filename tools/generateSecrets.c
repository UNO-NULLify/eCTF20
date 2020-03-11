#include "device/device_secrets"
#include "constants.h"
#include <stdio.h>
#include <stdlib.h>
#include <monocypher.h>
#include <string.h>

// gcc -Wall -pedantic -std=c1x -g -o ./generateSecrets generateSecrets.c monocypher.c -I./
// ./generateSecrets

struct metadata {
    char sharedInfo[MAX_USERS][64 + MAC]; // [64-Bytes of Users to share] [32 byte key (stored as hex) + room for MAC]
    uint8_t owner_id; // 1-Byte
    uint8_t region_ids[MAX_REGIONS]; // 64-Bytes
    char region_secrets[MAX_REGIONS][MAX_REGION_SECRET + MAC]; // 64*96-Bytes
    char song_name[MAX_SONG_NAME]; // 64-Bytes
    long int endFullSong;
};
//
// uint8_t* datahex(char* string) {
//
//     if(string == NULL)
//        return NULL;
//
//     size_t slength = strlen(string);
//     if((slength % 2) != 0) // must be even
//        return NULL;
//
//     size_t dlength = slength / 2;
//
//     uint8_t* data = malloc(dlength);
//     memset(data, 0, dlength);
//
//     size_t index = 0;
//     while (index < slength) {
//         char c = string[index];
//         int value = 0;
//         if(c >= '0' && c <= '9')
//           value = (c - '0');
//         else if (c >= 'A' && c <= 'F')
//           value = (10 + (c - 'A'));
//         else if (c >= 'a' && c <= 'f')
//           value = (10 + (c - 'a'));
//         else {
//           free(data);
//           return NULL;
//         }
//
//         data[(index/2)] += value << (((index + 1) % 2) * 4);
//
//         index++;
//     }
//
//     return data;
// }

int readMetadata(FILE *infile, struct metadata * metaIn ){
  if(fread(metaIn, sizeof(struct metadata), 1, infile) == 0) {
       printf("Error reading metadata file !\n");
  }
  return 1;
}

int main(int argc, char *argv[]) {

	// TODO Temp values
	int given_id = 1;
	char *pin = "076881589374146332";

	// Load metadata
	struct metadata meta = {0};
	FILE *encFile;
	encFile = fopen("provision_test/audio/test-protect-small-step.drm", "rb");
	if (encFile == NULL) {
		fprintf(stderr, "\nError opening file here\n");
		return 1;
	}
	readMetadata(encFile, & meta);

	// END GOAL
	// secret = str(songkey)+str(regionKey.hex())+str(hardwareSecretHash)

	// Make hex
	// int  num = 32424;
	// char hex[5];
	// sprintf(hex, "%x", num);
	// puts(hex);

	// ------------ Generate regionKey ------------
	printf("------------ Generate regionKey ------------\n");


	unsigned char mac[32+1] = {0};
	unsigned char msg[64+1] = {0};
	printf("region_secret: ");
	for(int i = 0; i < 96; i++) {
		printf("%c", meta.region_secrets[0][i]);
		if(i < 64) {
			msg[i] = meta.region_secrets[0][i];
		} else {
			mac[(i-64)] = meta.region_secrets[0][i];
		}
	}
	printf("\n");
  printf("Region ID: %d\n", meta.region_ids[0] );


	printf("mac: ");for(int i = 0; i < (sizeof(mac)/sizeof(mac[0])); i++) {printf("%c", mac[i]);}printf("\n");
	printf("msg: %s\n", msg);
	printf("key: %s\n", region_data[0].rand_pass);

	uint8_t regionKey[32] = {0};
	const uint8_t nonce[24] = {0};

	uint8_t bytesMac[16] = {0};

  //convert from hex string to uint8_t
  for(int i = 0; i < 32; i = i + 2)
  {
    if(mac[i] >= '0' && mac[i] <= '9')
    {
      bytesMac[i/2] = mac[i] - '0';
    }
    else{
      bytesMac[i/2] = mac[i] - 'a' + 10;
    }

    bytesMac[i/2] = bytesMac[i/2] << 4;

    if(mac[i+1] >= '0' && mac[i+1] <= '9')
    {
      bytesMac[i/2] += mac[i+1] - '0';
    }
    else{
      bytesMac[i/2] += mac[i+1] - 'a' + 10;
    }
  }

  uint8_t bytesMsg[32] = {0};


  //convert from hex string to uint8_t
  for(int i = 0; i < 64; i = i + 2)
  {
    if(msg[i] >= '0' && msg[i] <= '9')
    {
      bytesMsg[i/2] = msg[i] - '0';
    }
    else{
      bytesMsg[i/2] = msg[i] - 'a' + 10;
    }

    bytesMsg[i/2] = bytesMsg[i/2] << 4;

    if(msg[i+1] >= '0' && msg[i+1] <= '9')
    {
      bytesMsg[i/2] += msg[i+1] - '0';
    }
    else{
      bytesMsg[i/2] += msg[i+1] - 'a' + 10;
    }
  }

  uint8_t bytesPass[32] = {0}; //region_data[0].rand_pass

  //convert from hex string to uint8_t
  for(int i = 0; i < 64; i = i + 2)
  {
    if(region_data[0].rand_pass[i] >= '0' && region_data[0].rand_pass[i] <= '9')
    {
      bytesPass[i/2] = region_data[0].rand_pass[i] - '0';
    }
    else{
      bytesPass[i/2] = region_data[0].rand_pass[i] - 'a' + 10;
    }

    bytesPass[i/2] = bytesPass[i/2] << 4;

    if(region_data[0].rand_pass[i+1] >= '0' && region_data[0].rand_pass[i+1] <= '9')
    {
      bytesPass[i/2] += region_data[0].rand_pass[i+1] - '0';
    }
    else{
      bytesPass[i/2] += region_data[0].rand_pass[i+1] - 'a' + 10;
    }
  }

	crypto_unlock(regionKey, bytesPass, nonce, bytesMac, bytesMsg, sizeof(bytesMsg));
	printf("\nregionKey: %d \n", regionKey[0]);

	for(int i = 0; i < (sizeof(regionKey)/sizeof(regionKey[0])); i++) {
		printf("%x", regionKey[i]);
	}
	printf("\n");

	// regionKey = monocypher.unlock(bytes(key, encoding="utf-8"), b'', mac_hex, message_hex)


	for(int i=0; i < (sizeof(user_data) / sizeof(user_data[1])); i++) {
		if(user_data[i].id == given_id){

			// ------------ Generate hardwareSecretHash ------------
			printf("\n------------ Generate hardwareSecretHash ------------\n");
			uint8_t *hshu = malloc(strlen(user_data[i].hw_secret) + strlen(meta.song_name)); // +1 for the null-terminator
			memcpy(hshu, user_data[i].hw_secret, strlen(user_data[i].hw_secret));
			memcpy(hshu + strlen(user_data[i].hw_secret), meta.song_name, strlen(meta.song_name)); // +1 for the null-terminator

			uint8_t hardwareSecretHash[64] = {0};
			crypto_blake2b(hardwareSecretHash, hshu, strlen((char *)hshu));
			// uint8_t hsh[64] = {0};

			printf("hardwareSecretHash: ");
			for(int i = 0; i < (sizeof(hardwareSecretHash)/sizeof(hardwareSecretHash[0])); i++) {
				// sprintf(hsh[i], "%x", hardwareSecretHash[i]);
				printf("%x", hardwareSecretHash[i]);
			}
			printf("\n");


			// ------------ Generate songKey ------------
			printf("\n------------ Generate songKey ------------\n");
			uint8_t *song_str = malloc(strlen(user_data[i].pin_hash) + strlen(pin) + strlen(meta.song_name)); // +1 for the null-terminator
			// TODO maybe check for errors in malloc here
			memcpy(song_str, user_data[i].pin_hash, strlen(user_data[i].pin_hash));
			memcpy(song_str + strlen(user_data[i].pin_hash), pin, strlen(pin)); // +1 to copy the null-terminator
			memcpy(song_str + strlen(user_data[i].pin_hash) + strlen(pin), meta.song_name, strlen(meta.song_name)); // +1 to copy the null-terminator

			uint8_t songKey[64] = {0};
			crypto_blake2b(songKey, song_str, strlen((char *)song_str));

			printf("songKey: ");
			for(int i = 0; i < (sizeof(songKey)/sizeof(songKey[0])); i++) {
				printf("%x", songKey[i]);
			}
			printf("\n");



			// ------------ Generate Secret ------------
			printf("\n------------ Generate Secret ------------\n");
			// END GOAL
			// secret = str(songkey)+str(regionKey.hex())+str(hardwareSecretHash)
			uint8_t secret[sizeof(songKey) + sizeof(regionKey) + sizeof(hardwareSecretHash)] = {0};
			printf("Sizes: { songKey: %ld, regionKey: %ld, hardwareSecretHash: %ld, secret: %ld }\n",
				sizeof(songKey), sizeof(regionKey), sizeof(hardwareSecretHash), sizeof(secret));

			memcpy(secret, songKey, sizeof(songKey));
			memcpy(secret+sizeof(songKey), regionKey, sizeof(regionKey)); //both hardwareSecretHash
			memcpy(secret+sizeof(songKey)+sizeof(regionKey), hardwareSecretHash, sizeof(hardwareSecretHash)); // first
			printf("Secret: ");
			for(i=0; i < (sizeof(secret)/sizeof(secret[i])); i++) {
				printf("%x", secret[i]);
			}
			printf("\n");
		}
	}
}

//TODO Remove
void printMetadata(struct metadata s) {
	printf("\n -- Metadata Contents -- \n");
	printf("owner_id: %u\n", s.owner_id);
	printf("region_ids: ");
	for(int j = 0; j < MAX_REGIONS; j++) {
		printf("%u, ", s.region_ids[j]);
	}
	printf("\n");
	printf("region_secrets: ");
	for(int j = 0; j < MAX_REGIONS; j++) {
		for(int k = 0; k < MAX_REGION_SECRET; k++) {
			printf("%c", s.region_secrets[j][k]);
		}
		printf(", ");
	}
	printf("\n");
	printf("song_name: %s\n", s.song_name);
	printf("endFullSong: %ld\n", s.endFullSong);
	printf("sharedInfo: ");
	for(int j = 0; j < (sizeof(s.sharedInfo) / sizeof(s.sharedInfo[0])); j++) {
		printf("%s, ", s.sharedInfo[j]);
	}
	printf("\n");
}

// TODO Remove
void printRStruct(struct R_Data r) {
	printf("\n -- Region Contents -- \n");
	printf("id: %u\n", r.id);
	printf("rand_pass: %s\n\n", r.rand_pass);
}

// TODO Remove
void printUStruct(struct U_Data u) {
	printf("\n -- User Contents -- \n");
	printf("id: %u\n", u.id);
	printf("hw_secret: %s\n", u.hw_secret);
	printf("pin_hash: %s\n", u.pin_hash);
	printf("pub_key: %s\n", u.pub_key);
	printf("pvt_key: %s\n", u.pvt_key);
	printf("salt: %s\n", u.salt);
}
