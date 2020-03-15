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
    long int songSize;
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
    if(strncmp(users[i].name, user_name, sizeof(user_name)) == 0)
    {
      pos = i;
      return pos;
    }
  }
  return pos;
}

int main(int argc, char *argv[]){
	struct metadata meta = {0};

  //argv[1] song owner name
  //argv[2] song owner pin
  //argv[3] song owner id
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

  printf("\n\nOwner: %s\nOwner Pin: %s\nOwner ID: %s\n\n\n\n", argv[1], argv[2], argv[3]);

  int owner_id = (int) argv[3];

  //recreate the owners private key
  char hashed[64] = {0};
  char hash_str[128] = {0};
  //TODO change to strncat
  strcat(hash_str, user_data[0].pin_hash);
  strcat(hash_str, argv[2]);
  crypto_blake2b(hashed, hash_str, sizeof(argv[2]));
  puts("Recreating private key");
  printf("\n\n\nSize of arg 2 %i\n\n\n", 64);
  printf("\nhash str: %s\n", hash_str);
  printf("\nhashed: %s\n", hashed);

  /*
    TODO make this a function for universal applicability. 
    I think we also need this for MACS anything else stored as hex string. 
    i.e:
    *char byte_me(*char out, *char in, size_t in)
  */
  uint8_t public_key[32] = {0};
  char pub_str[64] = ROOT_VERIFY;
  //convert from hex string to uint8_t
  for(int i = 0; i < 64; i = i + 2)
  {
    if(pub_str[i] >= '0' && pub_str[i] <= '9')
    {
      public_key[i/2] = pub_str[i] - '0';
    }
    else{
      public_key[i/2] = pub_str[i] - 'a' + 10;
    }

    public_key[i/2] = public_key[i/2] << 4;

    if(pub_str[i+1] >= '0' && pub_str[i+1] <= '9')
    {
      public_key[i/2] += pub_str[i+1] - '0';
    }
    else{
      public_key[i/2] += pub_str[i+1] - 'a' + 10;
    }
    // printf("\n\npublic key: %c\n\n", pub_str[i]);
  }


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

  //now we will share a song
  //get their pub key from the file
  //decrypt your private key = pin and pin hash



}
