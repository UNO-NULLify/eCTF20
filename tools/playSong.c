#include "constants.h"
#include "device/device_secrets"
#include <monocypher.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define CHUNK_SIZE 4096
struct metadata {
  uint8_t sharedInfo[MAX_USERS][48]; // [64-Bytes of Users to share] [32 byte key + room for 16 byte MAC]
  uint8_t owner_id;                     // 1-Byte
  uint8_t region_ids[MAX_REGIONS];      // 64-Bytes
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

void hex2bytes(uint8_t *hex, uint8_t *bytes) {
  for (int i = 0; i < strlen(hex); i = i + 2) {
    if (hex[i] >= '0' && hex[i] <= '9') {
      bytes[i / 2] = hex[i] - '0';
    } else {
      bytes[i / 2] = hex[i] - 'a' + 10;
    }

    bytes[i / 2] = bytes[i / 2] << 4;

    if (hex[i + 1] >= '0' && hex[i + 1] <= '9') {
      bytes[i / 2] += hex[i + 1] - '0';
    } else {
      bytes[i / 2] += hex[i + 1] - 'a' + 10;
    }
  }
}

uint8_t *generateSecret(char *pin, struct metadata *meta) {

	// Check to make sure the output_arr is the correct length

	// ------------ Generate regionKey ------------
	uint8_t mac[32 + 1] = {0};
	uint8_t msg[64 + 1] = {0};

	// First 64 of region_secret is the encrypted msg. Second 32 is the mac.
	for (int i = 0; i < 96; i++) {
		if (i < 64) {
		msg[i] = meta->region_secrets[0][i];
		} else {
		mac[(i - 64)] = meta->region_secrets[0][i];
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
	for (int i = 0; i < (sizeof(region_data) / sizeof(region_data[0])); i++) {
		if (region_data[i].id == meta->region_ids[0]) {
		region_index = i;
		break;
		}
	}

	// Convert rand_pass from hex string to uint8_t
	uint8_t bytesPass[32] = {0};
	hex2bytes(region_data[region_index].rand_pass, bytesPass);

	// Instantiate output and nonce
	uint8_t regionKey[32] = {0};
	const uint8_t nonce[24] = {0};

	// Decrypt
	crypto_unlock(regionKey, bytesPass, nonce, bytesMac, bytesMsg,
					sizeof(bytesMsg));

	// Check if decryption failed
	if (regionKey[0] == NULL) {
		printf("\033[0;31m");
		printf("Crypto Unlock Failed!\n");
		printf("\033[0m");
		return 1;
	}

	for (int i = 0; i < (sizeof(user_data) / sizeof(user_data[1])); i++) {
		if (user_data[i].id == meta->owner_id) {
			// ------------ Generate hardwareSecretHash ------------
			uint8_t *hshu =
				malloc(strlen(user_data[i].hw_secret) + strlen(meta->song_name));
			memcpy(hshu, user_data[i].hw_secret, strlen(user_data[i].hw_secret));
			memcpy(hshu + strlen(user_data[i].hw_secret), meta->song_name,
					strlen(meta->song_name));

			uint8_t hardwareSecretHash[64] = {0};
			crypto_blake2b(hardwareSecretHash, hshu, strlen((char *)hshu));

			// ------------ Generate songKey ------------
			uint8_t *song_str = malloc(strlen(user_data[i].pin_hash) + strlen(pin) +
										strlen(meta->song_name));
			memcpy(song_str, user_data[i].pin_hash, strlen(user_data[i].pin_hash));
			memcpy(song_str + strlen(user_data[i].pin_hash), pin, strlen(pin));
			memcpy(song_str + strlen(user_data[i].pin_hash) + strlen(pin),
					meta->song_name, strlen(meta->song_name));

			uint8_t songKey[64] = {0};
			crypto_blake2b(songKey, song_str, strlen((char *)song_str));

			// ------------ Generate Secret ------------
			static uint8_t secret[sizeof(songKey) + sizeof(regionKey) +
							sizeof(hardwareSecretHash)] = {0};

			memcpy(secret, songKey, sizeof(songKey));
			memcpy(secret + sizeof(songKey), regionKey, sizeof(regionKey));
			memcpy(secret + sizeof(songKey) + sizeof(regionKey), hardwareSecretHash,
					sizeof(hardwareSecretHash));

			return secret;
		}
	}
}

uint8_t *generate30Secret(struct metadata *meta) {
  for (int i = 0; i < (sizeof(user_data) / sizeof(user_data[1])); i++) {
    if (user_data[i].id == meta->owner_id) {

      // ------------ Generate hardwareSecretHash30 ------------
      uint8_t *hsh30 = malloc(strlen(user_data[i].hw_secret) +
                              strlen(meta->song_name) + 2); // +2 for the 30
      memcpy(hsh30, user_data[i].hw_secret, strlen(user_data[i].hw_secret));
      memcpy(hsh30 + strlen(user_data[i].hw_secret), meta->song_name,
             strlen(meta->song_name));
      memcpy(hsh30 + strlen(user_data[i].hw_secret) + strlen(meta->song_name),
             "30", 2);

      static uint8_t hardwareSecretHash30[64] = {0};
      crypto_blake2b(hardwareSecretHash30, hsh30, strlen((char *)hsh30));

      return hardwareSecretHash30;
    }
  }
}

uint8_t *generateSharedSecret(struct metadata *meta) {
  // TODO
  return 0;
}

void byte_me(char *dest, char *src, size_t src_len) {
  for (int i = 0; i < src_len; i += 2) {
    if (src[i] >= '0' && src[i] <= '9') {
      dest[i / 2] = src[i] - '0';
    } else {
      dest[i / 2] = src[i] - 'a' + 10;
    }

    dest[i / 2] = dest[i / 2] << 4;

    if (src[i + 1] >= '0' && src[i + 1] <= '9') {
      dest[i / 2] += src[i + 1] - '0';
    } else {
      dest[i / 2] += src[i + 1] - 'a' + 10;
    }
  }
}

uint8_t verifySignature(FILE *encFile, struct metadata *meta) {
  uint8_t public_key[32] = {0};
  char pub_str[64] = ROOT_VERIFY;

  byte_me(public_key, pub_str, strlen(pub_str));

  fseek(encFile, sizeof(meta->sharedInfo), SEEK_SET);
  // number of bytes to sign
  uint8_t toSign[15000] = {0};
  fread(toSign, 1, sizeof toSign - 1000, encFile);
  fseek(encFile, meta->endFullSong, SEEK_SET);
  fread(&toSign[14000], 1, 1000, encFile);
  uint8_t signature[64] = {0};
  fseek(encFile, -64, SEEK_END);
  fread(signature, 1, sizeof signature, encFile);
  uint8_t hashtest[64] = {0};
  crypto_blake2b(hashtest, toSign, sizeof toSign);
  int yay = crypto_check(signature, public_key, toSign, sizeof toSign);

  if (yay == 0) {
    printf("\033[0;32m");
    printf("Signature Verified!\n");
    printf("\033[0m");
    return 0;
  } else {
    printf("\033[0;31m");
    printf("TAMPER DETECTED!\nSignature Failed!\n");
    printf("\033[0m");
    return 1;
  }
  fclose(encFile);
}

static int decrypt(const char *target_file, FILE *fp_s, const unsigned char key[32], uint8_t nonce[24], long int endRead) {
	unsigned char buf_in[CHUNK_SIZE] = {0};
	unsigned char buf_out[CHUNK_SIZE] = {0};
	unsigned char mac[16] = {0};

	FILE *fp_t;
	size_t rlen;

	fp_t = fopen(target_file, "wb");

	do {
		fread(mac, 1, 16, fp_s);
		rlen = fread(buf_in, 1, sizeof buf_in, fp_s);
		// eof = feof(fp_s);
		if (crypto_unlock(buf_out, key, nonce, mac, buf_in, rlen) != 0) {
			return 1;
		}
		fwrite(buf_out, 1, (size_t)rlen, fp_t);

		// incremet nonce
		for (int i = 23; i >= 0; i--) {
		if (i == 0) {
			if (nonce[i] == 255) {
			memset(nonce, 0, 24);
			}
		} else if (nonce[i] == 255) {
			nonce[i] = 0;
			nonce[i - 1] += 1;
		}
		}
		nonce[23]++;

	} while ((endRead - CHUNK_SIZE) > ftell(fp_s)); // read until we are one buffer away
	
	fread(mac, 1, 16, fp_s);
	rlen = fread(buf_in, 1, endRead - ftell(fp_s), fp_s);
	if (crypto_unlock(buf_out, key, nonce, mac, buf_in, rlen) != 0) {
		return 1;
	}
	fwrite(buf_out, 1, (size_t)rlen, fp_t);
	return 0;
}

uint8_t decryptFull(FILE *encFile, struct metadata *meta, uint8_t *secret) {
	uint8_t temphash[64] = {0};
	crypto_blake2b(temphash, secret, 160); //turn long password into useable hash

	uint8_t hash[32] = {0};
	memcpy (hash, temphash, sizeof(hash)); // need to reduce the size of the hash for use in encryption

	uint8_t nonce [24] = {0};

	if (decrypt(meta->song_name, encFile, hash, nonce, meta->endFullSong) != 0) {
		printf("\033[0;31m");
		printf("Decryption Failed!\n");
		printf("\033[0m"); 
		return 1;
    }
	fclose(encFile);
	return 0;
}

uint8_t decrypt30(FILE *encFile, struct metadata *meta, uint8_t *secret30) {
  uint8_t temphash[64] = {0};
  crypto_blake2b(temphash, (const uint8_t *) secret30, strlen(secret30)); // turn long password into useable hash

  uint8_t hash[32] = {0};
  memcpy(hash, temphash, sizeof(hash)); // need to reduce the size of the hash for use in encryption
  uint8_t nonce[24] = {0};

  fseek(encFile, meta->endFullSong, SEEK_SET);

  if (decrypt("30SECOND_TEST", encFile, hash, nonce, meta->songSize - 64) != 0) {
    printf("\033[0;31m");
    printf("30 Second Decryption Failed!\n");
    printf("\033[0m");
    return 1;
  }
  fclose(encFile);
}

uint8_t decryptShared(FILE *encFile, struct metadata *meta, uint8_t *secretShared){
	// TODO
	return 0;
}

int play(char *pin, uint8_t uid, uint8_t sample) {

  // Load metadata
  struct metadata meta = {0};
  FILE *encFile;
  encFile = fopen("provision_test/audio/test-protect-small-step.drm", "rb");
  if (encFile == NULL) {
    printf("\033[0;31m");
    printf("Error reading metadata!\n");
    printf("\033[0m");
    return 1;
  }
  readMetadata(encFile, &meta);

  long int myLoc = ftell(encFile);
  
	// Verify Signature (quit if it doesn't verify)
	if (verifySignature(encFile, &meta)) {
		return 1;
	}

    fseek(encFile, myLoc, SEEK_SET);

	// Check if the user owns the song
	if(uid == meta.owner_id) {
		// User owns song
		printf("User owns the song\n");
		
		// Generate full secret
        uint8_t *secret = generateSecret(pin, &meta);
        printf("Secret: ");
        for (int i = 0; i < 160; i++) {
          printf("%x", secret[i]);
        }
        printf("\n\n");

        // Decrypt full song
        decryptFull(encFile, &meta, secret);
        printf("Playing full song\n");
    } else {
		// Check if the user is signed in
		if(uid != -1) {
			// User is signed in
			printf("User is signed in, but doesn't own the song\n");

			// Check if song has been shared with user
			if(meta.sharedInfo[uid][0] != '\0') {

				// Get shared info from metadata
				printf("Shared Info: ");
				for (int i = 0; i < 96; i++) {
					printf("%x", meta.sharedInfo[uid][i]);
				}
				printf("\n\n");


				// Generate shared secret
				// uint8_t *sharedSecret = generateSharedSecret(pin, &meta);
				// printf("Shared Secret: ");
				// for (int i = 0; i < 160; i++) {
				// 	printf("%x", sharedSecret[i]);
				// }
				// printf("\n\n");

				// Decrypt shared song
				// decryptShared(encFile, &meta, sharedSecret);
				printf("Playing shared song\n");
			} else {
				// Song has not been shared with user, play 30 Second Sample
				printf("Song has not been shared with user %u.\n Playing 30 second sample\n", uid);

				// Generate 30 secret
				uint8_t *secret30 = generate30Secret(&meta);
				printf("Secret30: ");
				for (int i = 0; i < 64; i++) {
					printf("%x", secret30[i]);
				}
				printf("\n\n");

				// Decrypt 30 second sample
				printf("d30 res: %u", decrypt30(encFile, &meta, secret30));
				printf("Playing 30 second sample\n");
				return 0;
			}
		} else {
			// User is not signed in, play 30 Second Sample
			printf("User is not signed in\n");
			
			// Generate 30 secret
            uint8_t *secret30 = generate30Secret(&meta);
            printf("Secret30: ");
            for (int i = 0; i < 64; i++) {
              printf("%x", secret30[i]);
            }
            printf("\n\n");

            // Decrypt 30 second sample
            printf("d30 res: %u", decrypt30(encFile, &meta, secret30));
            printf("Playing 300 second sample\n");
        }
	}

	return 0;
}

int main(int argc, char *argv[]) {

  // These variables will be stored in implementation
  char *pin = "903494461251310648071306908532497731221875540674065";
  uint8_t uid = 3;
  uint8_t sample = 0;

  return play(pin, uid, sample);

}
