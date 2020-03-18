#include "device/device_secrets"
#include "constants.h"
#include <stdio.h>
#include <stdlib.h>
#include <monocypher.h>
#include <string.h>
#define CHUNK_SIZE 4096


struct metadata {
    char sharedInfo[MAX_USERS][64 + MAC]; // [64-Bytes of Users to share] [32 byte key (stored as hex) + room for MAC]
    uint8_t owner_id; // 1-Byte
    uint8_t region_ids[MAX_REGIONS]; // 64-Bytes
    char region_secrets[MAX_REGIONS][MAX_REGION_SECRET + MAC]; // 64*96-Bytes
    char song_name[MAX_SONG_NAME]; // 64-Bytes
    long int endFullSong;
};

//Write file metadata
//Target file is the file to write to
// metaIn is the metadata struct in to write to the file
int readMetadata(FILE *infile, struct metadata * metaIn ){

  int yay = fread(metaIn, sizeof(struct metadata), 1, infile);

  if(yay != 0){
    printf("Metadata read successfully!!\n");
  }

  else
  {
       printf("error reading file !\n");
  }
  return 1;
}

//returns the users position in the metadata
int find_user(struct U_Data *users, char *user_name)
{
  int pos = -1;
  for(int i=0; i < MAX_USERS; i++)
  {
    if(strncmp(users[i].name, user_name, strlen(user_name)) == 0)
    {
      pos = i;
      return pos;
    }
  }
  return pos;
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
  /*
    for(int i=0; i<32; i++)
  {
    uint8_t *buff[3] = {0};
    snprintf(buff, sizeof(buff), "%x", enc_pvt_key[i]);
    strncat(enc_key_hex, buff, sizeof(buff));
    crypto_wipe(buff, sizeof(buff));
  }
  }
  */

int main(int argc, char *argv[]){
	struct metadata meta = {0};
  uint8_t *hash_str;

  //argv[1] song owner name
  //argv[2] song owner pin
  //argv[3] song owner id
  //argv[4] file pointer
  /*
  TODO add params for: * file pointer
                       * Logged in user id
                       * Logged in user pin
                       * Shared user name
  */

  FILE *encFile;
  encFile = fopen("./provision_test/audio/test-protect-small-step.drm", "rb"); // open the outfile for reading
  if (encFile == NULL)
  {
      fprintf(stderr, "\nError opening file\n");
      return 1;
  }
  readMetadata(encFile, & meta);

  int owner_id = atoi(argv[3]);

  printf("\n\nOwner: %s\nOwner Pin: %s\nOwner ID: %i\n\n\n\n", argv[1], argv[2], owner_id);

  //recreate the owners private key
  //initialize variables
  uint8_t hashed[64] = {0};
  uint8_t mac[16] = {0};
  uint8_t enc_pvt_key[32] = {0};

  int hash_str_size = sizeof(uint8_t) * (64 + strlen(argv[2]));
  hash_str = calloc(hash_str_size, sizeof(uint8_t));
  printf("Size of Hash string: %i", hash_str_size);
  printf("\nPin Length: %li\n", strlen(argv[2]));
  byte_me(hash_str, user_data[owner_id-1].pin_hash, strlen(user_data[owner_id - 1].pin_hash));
  memcpy((hash_str + 64), argv[2], strlen(argv[2]));
  crypto_blake2b(hashed, hash_str, hash_str_size);  // session key
  // debug
  puts("Recreating private key");
  printf("\nPin Hash: %s\n", user_data[owner_id-1].pin_hash);
  // printf("\nhash str: %s\n", hash_str);
  // printf("\nhashed: %s\n", hashed);
  printf("\nlength of hashed: %li\n", strlen(hashed));

  // generate nonce
  char* nonce[24] = {0};
  //generate mac
  byte_me(mac, user_data[owner_id - 1].pvt_key + 64, 32);
  printf("\nMac hex: %x\n", mac);
  //generate enc_pvt_key
  byte_me(enc_pvt_key, user_data[owner_id -1].pvt_key, 64);

  puts("\nEncrypted key back to hex\n");

  uint8_t *enc_key_hex[64] = {0};

  for(int i=0; i<32; i++)
  {
    printf("%x", enc_pvt_key[i]);
  }
  puts("\n");
//
  //for(int i=0; i<32; i++)
  //{
  //  uint8_t *buff[3] = {0};
  //  snprintf(buff, sizeof(buff), "%x", enc_pvt_key[i]);
  //  strncat(enc_key_hex, buff, sizeof(buff));
  //  crypto_wipe(buff, sizeof(buff));
  //}
  hex_me(enc_key_hex, enc_pvt_key, sizeof(enc_pvt_key));
  printf("\nEncrypted key back to hex again\n%s\n", enc_key_hex);

  uint8_t public_key[32] = {0};
  char pub_str[64] = ROOT_VERIFY;

  byte_me(public_key, pub_str, strlen(pub_str));

  fseek( encFile, sizeof(meta.sharedInfo), SEEK_SET );
  //number of bytes to sign
  uint8_t toSign[15000] = {0};
  fread(toSign, 1, sizeof toSign - 1000, encFile);
  printf("\n\nendfullsong:%ld\n\n", meta.endFullSong);
  fseek(encFile, meta.endFullSong, SEEK_SET);
  fread(&toSign[14000], 1, 1000, encFile);

  uint8_t signature[64] = {0};

  fseek(encFile, -64, SEEK_END);
  fread(signature, 1, sizeof signature, encFile);
  printf("\n\nSIZE: %ld\n%d:%d:%d\n", sizeof signature, signature[0], signature[47], signature[63]);


  uint8_t hashtest[64] = {0};
  crypto_blake2b(hashtest, toSign, sizeof toSign);
  printf("\n\ntosign test: %d %d %d %d %d\n\n", toSign[0], toSign[14004], toSign[14001], toSign[14999], toSign[14000]);

  printf("\n\nHASHTEST %d\n\n", hashtest[0]);

  int yay = crypto_check(signature, public_key, toSign, sizeof toSign);
  printf("\nyay =%d \n", yay);

  if(yay == 0){
    printf("Signature Verified!\n");
  }
  else
  {
       printf("TAMPER DETECTED\n");
  }
  fclose (encFile);

}
