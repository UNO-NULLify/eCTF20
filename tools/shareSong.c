#include "constants.h"
#include "device/device_secrets"
#include <monocypher.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct metadata {
  char sharedInfo[MAX_USERS][48]; // [64-Bytes of Users to share] [32 byte key + room for 16 byte MAC]
  uint8_t owner_id;                     // 1-Byte
  uint8_t region_ids[MAX_REGIONS];      // 64-Bytes
  char region_secrets[MAX_REGIONS][MAX_REGION_SECRET + MAC]; // 64*96-Bytes
  char song_name[MAX_SONG_NAME];                             // 64-Bytes
  long int endFullSong;
  long int songSize;
};

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

uint8_t * generateSecret(char *pin, struct metadata *meta) {
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
  if(crypto_unlock(regionKey, bytesPass, nonce, bytesMac, bytesMsg,
                sizeof(bytesMsg)))
    {

     printf("Unlock Failed\n");
     return 1;
   }
  // Check if decryption failed
  if (regionKey[0] == NULL) {
    printf("\033[0;31m");
    printf("\n\nCrypto Unlock Failed!\n\n");
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

      // Print secret
      printf("Secret: ");
      for (int i = 0; i < (sizeof(secret) / sizeof(secret[0])); i++) {
        printf("%x", secret[i]);
      }
      printf("\n\n");

      // TODO: Make this actually return something.
      // I can't get it to work because c is dumb
      return secret;
    }
  }
}

int readMetadata(FILE *infile, struct metadata *metaIn) {
  if (fread(metaIn, sizeof(struct metadata), 1, infile) == 0) {
    printf("Error reading metadata file !\n");
    return 1;
  }
  return 0;
}

void byte_me(char *dest, char *src, size_t src_len)
{
  for(int i = 0; i < src_len; i +=2)
  {
    if(src[i] >= '0' && src[i] <= '9')
    {
      dest[i/2] = src[i] - '0';
    }
    else
    {
      dest[i/2] = src[i] - 'a' + 10;
    }
    dest[i/2] = dest[i/2] << 4;
    if(src[i+1] >= '0' && src[i+1] <= '9')
    {
      dest[i/2] += src[i+1] - '0';
    }
    else{
      dest[i/2] += src[i+1] - 'a' + 10;
    }
  }
}
 void hex_me(char *dest, char *src, size_t src_len)
  {
    for(int i=0; i<src_len; i++)
    {
      uint8_t *buff[3] = {0};
      snprintf(buff, sizeof(buff), "%x", src[i]);
      strncat(dest, buff, sizeof(buff));
      crypto_wipe(buff, sizeof(buff));
    }
  }


int shareSong(uint8_t uid, uint8_t sid, char * pin, struct metadata * meta)
{
  printf("The uid is %u\n", uid);
  printf("The sid is %u\n", sid);
  uint8_t hashed[64] = {0};
  uint8_t mac[16] = {0};
  uint8_t enc_pvt_key[32] = {0};
  int hash_str_size = sizeof(uint8_t) * (64 + strlen(pin));
  uint8_t *hash_str;
  hash_str = calloc(hash_str_size, sizeof(uint8_t));

  memcpy(hash_str, user_data[uid-1].pin_hash, 64);
  // byte_me(hash_str, user_data[uid-1].pin_hash, strlen(user_data[uid - 1].pin_hash));
  memcpy((hash_str + 64), pin, strlen(pin));
  crypto_blake2b(hashed, hash_str, hash_str_size);  // session key

  // generate nonce
  uint8_t nonce [24] = {0};
  //generate mac
  byte_me(mac, user_data[uid - 1].pvt_key + 64, 32);
  // printf("\nMac hex: %x\n", mac);
  //generate enc_pvt_key
  byte_me(enc_pvt_key, user_data[uid -1].pvt_key, 64);

  uint8_t pvt_key[32] = {0};

   if(crypto_unlock(pvt_key, hashed, nonce, mac, enc_pvt_key, 32)){
     printf("Unlock Failed\n");
     return 1;
   }

	puts("decrypting private key");
	for(int i=0; i<32; i++)
	{
	  printf("%x", pvt_key[i]);
	}
	puts("\n");
  uint8_t shared_key[32] = {0};

  crypto_key_exchange(shared_key, pvt_key, user_data[sid].pub_key);  //using public key of users position 1.

  printf("\nShared Key:\n%s\n", shared_key);
  uint8_t * secretFull;
  //secretFull = calloc(160, sizeof(uint8_t));

  secretFull  = generateSecret(pin, meta);
  uint8_t temphash[64] = {0};


  // hex_me(testArray, secretFull, (160 * sizeof(uint8_t)));
  //160 is length of secret
  crypto_blake2b(temphash, secretFull, 160); //turn long password into useable hash


  printf("temphash ");
  for (int i = 0; i < (64); i++) {
    printf("%x", *(temphash + (i * sizeof(uint8_t))));
  }
  printf("\n\n");

  uint8_t hash[MAX_HASH_SZ] = {0};
  memcpy (hash, temphash, sizeof(hash)); // need to reduce the size of the hash for use in encryption

  printf("hash ");
  for (int i = 0; i < (32); i++) {
    printf("%x", *(temphash + (i * sizeof(uint8_t))));
  }
   printf("\n\n");
  //size of mac returned + 32 bytes of key
  uint8_t encrypted[48] = {0};
  uint8_t nonceEnc[24] = {0};
  uint8_t macEnc[16]= {0};
  crypto_lock(encrypted + 32, encrypted, shared_key, nonceEnc, hash ,32 );
  printf("encrypteddd\n ");
  for (int i = 0; i < (48); i++) {
    printf("%x", *(encrypted + (i * sizeof(uint8_t))));
  }
   printf("\n\n");
  uint8_t decrypted[32]= {0};
  uint8_t nonceDec[24] = {0};
  crypto_unlock(decrypted, shared_key, nonceDec, encrypted + 32, encrypted, 32);
  printf("decryptedd\n ");
  for (int i = 0; i < (32); i++) {
    printf("%x", *(decrypted + (i * sizeof(uint8_t))));
  }
  
  // hex_me(meta->sharedInfo[sid-1],encrypted, sizeof(encrypted));
  // printf("\nur dumb %s\n", meta-> sharedInfo[sid-1]);


  return 0;
}

int main(int argc, char *argv[]){
  struct metadata meta = {0};
  FILE *encFile;
  encFile = fopen("./provision_test/audio/test-protect-small-step.drm", "rb"); // open the outfile for reading
  if (encFile == NULL)
  {
      fprintf(stderr, "\nError opening file\n");
      return 1;
  }
  readMetadata(encFile, & meta);
  //shareSong(1,2);
  printf("Song owner = %u\n", meta.owner_id);
  //example of how to share the song
  shareSong(meta.owner_id, 2, "5927807726344711810782530294068260", &meta);

  return 0;
}
