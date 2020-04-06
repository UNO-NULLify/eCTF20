#include <stdio.h>
#include <string.h>
#include "constants.h"
#include <monocypher.h>
#define CHUNK_SIZE 4096


struct metadata {
    char sharedInfo[MAX_USERS][48]; // [64-Bytes of Users to share] [32 byte key + room for 16 byte MAC]
    uint8_t owner_id; // 1-Byte
    uint8_t region_ids[MAX_REGIONS]; // 64-Bytes
    char region_secrets[MAX_REGIONS][MAX_REGION_SECRET + MAC]; // 64*96-Bytes
    char song_name[MAX_SONG_NAME]; // 64-Bytes
    long int endFullSong;
    long int songSize;
};



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

//works with the full song
static int
decrypt(const char *target_file, FILE * fp_s,
        const unsigned char key[32], uint8_t nonce [24], long int endRead )
{
    unsigned char  buf_in[CHUNK_SIZE] = {0};
    unsigned char  buf_out[CHUNK_SIZE] = {0};
    unsigned char  mac[16] = {0};
    FILE          *fp_t;
    size_t         rlen;
    // int            eof;

    fp_t = fopen(target_file, "wb");

    do {

        fread(mac, 1, 16, fp_s);
        rlen = fread(buf_in, 1, sizeof buf_in, fp_s);
        // eof = feof(fp_s);

        if (crypto_unlock( buf_out, key, nonce, mac, buf_in, rlen) != 0)
        {
          return 1;
        }
        fwrite(buf_out, 1, (size_t) rlen, fp_t);

        //incremet nonce
        for (int i = 23; i >= 0; i--)
        {
          if(i == 0)
          {
            if (nonce[i] == 255)
            {
              memset(nonce, 0, 24);
            }
          }
          else if (nonce[i] == 255){
            nonce[i] = 0;
            nonce[i-1]+= 1;
          }
        }
        nonce[23] ++;

    } while ((endRead - CHUNK_SIZE) >  ftell(fp_s)); //read untill we are one buffer away
    fread(mac, 1, 16, fp_s);
    rlen = fread(buf_in, 1, endRead - ftell(fp_s), fp_s);
    if (crypto_unlock( buf_out, key, nonce, mac, buf_in, rlen) != 0)
    {
      return 1;
    }
    fwrite(buf_out, 1, (size_t) rlen, fp_t);
    return 0;
}


void printStruct(struct metadata s) {
	printf("\n -- Struct Contents -- \n");

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

	printf("song_name: %s\n\n", s.song_name);
}

//Read file metadata
//Target file is the file to read in
// metaIn is the metadata struct in to read to
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

int main(int argc, char *argv[]){
  struct metadata meta = {0};

  /////////READ IN FILE/////////
  FILE *encFile;
  encFile = fopen(argv[1], "rb"); // open the outfile for writing
  if (encFile == NULL)
  {
      fprintf(stderr, "\nError opening file\n");
      return 1;
  }

  /////////READ META FROM FILE/////////
  readMetadata(encFile, & meta);
  printStruct(meta); //#Debug print

  /////////DECRYPT FULL SONG/////////

  uint8_t temphash[64] = {0};

  uint8_t secretString[160]= {0};

  byte_me(secretString, (const uint8_t *)argv[2],strlen(argv[2]));
  printf("Decrypting step:\n");

  crypto_blake2b(temphash, secretString, 160); //turn long password into useable hash

  uint8_t hash[32] = {0};
  memcpy (hash, temphash, sizeof(hash)); // need to reduce the size of the hash for use in encryption

  uint8_t nonce [24] = {0};

  if (decrypt(meta.song_name, encFile, hash, nonce, meta.endFullSong) != 0)
  {
    printf("Decryption Failed :<");
    return 1;
  }
  printf("Decryption successfull!");
  fclose(encFile);

  return 0;
}
