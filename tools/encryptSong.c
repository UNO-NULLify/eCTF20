#include <stdio.h>
#include <string.h>
#include "constants.h"
#include <monocypher.h>
#include <stdlib.h>
#define CHUNK_SIZE 4096

struct metadata {
    char sharedInfo[MAX_USERS][64 + MAC]; // [64-Bytes of Users to share] [32 byte key (stored as hex) + room for MAC]
    uint8_t owner_id; // 1-Byte
    uint8_t region_ids[MAX_REGIONS]; // 64-Bytes
    char region_secrets[MAX_REGIONS][MAX_REGION_SECRET + MAC]; // 64*96-Bytes
    char song_name[MAX_SONG_NAME]; // 64-Bytes
    long int endFullSong;
};

static int
encrypt( FILE *fp_t, const char *source_file,
        const uint8_t key[32],uint8_t nonce [24] )
{
    unsigned char  buf_in[CHUNK_SIZE] = {0};
    unsigned char  buf_out[CHUNK_SIZE] = {0};
    unsigned char  mac[16] = {0};
    FILE          *fp_s;
    size_t         rlen;
    int            eof;

    fp_s = fopen(source_file, "rb");
    do {
        rlen = fread(buf_in, 1, sizeof buf_in, fp_s);
        eof = feof(fp_s);
        crypto_lock(mac, buf_out, key, nonce, buf_in, rlen);
        fwrite(mac, 1, 16, fp_t);
        fwrite(buf_out, 1, (size_t) rlen, fp_t);
        //inc nonce
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

    } while (! eof);
    fclose(fp_s);
    return 0;
}

//Write file metadata
//Target file is the file to write to
// metaIn is the metadata struct in to write to the file
int writeMetadata(FILE *outfile, struct metadata metaIn ){

  int yay = fwrite(&metaIn, sizeof(struct metadata), 1, outfile);

  if(yay != 0){
    printf("Metadata written successfully!\n");
  }
  else
  {
       printf("Error writing file!\n");
  }
  return 1;
}

//TODO REMOVE
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

//TODO REMOVE
void printStructSize(struct metadata s) {
	printf("\n -- Struct Sizes -- \n");
	printf("Size of metadata: %ld bytes\n", sizeof(s));
	printf("Size of owner_id: %ld bytes\n", sizeof(s.owner_id));
	printf("Size of region_ids: %ld bytes\n", sizeof(s.region_ids));
	printf("Size of region_secrets: %ld bytes\n", sizeof(s.region_secrets));
	printf("Size of song_name: %ld bytes\n", sizeof(s.song_name));
	printf("\n");
}

int main(int argc, char *argv[]){

  if(argc != 12) {
    printf("Metadata not formatted. Check arguments.\n");
    return 1;
  }

	/////////READ IN INFO/////////
	printf("\n----- Data Passed In! -----\nowner_id: %s\nregion_ids: %s\nregion_secrets: %s\nsong_name: %s\n30path: %s\n30secret: %s\nfullpath: %s\nsecret: %s\noutFile: %s\n root_sign: %s\n --- End Data Passed In ---\n", argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], argv[7], argv[8], argv[9], argv[10], argv[11]);
	// owner_id = argv[1];
	// region_ids = argv[2];
	// region_secrets = argv[3];
	// song_name = argv[4];
	// 30path = argv[5]
	// 30secret = argv[6]
	// fullpath = argv[7]
	// secret = argv[8]
	// outFile = argv[9]
  // root_sign = argv[10]
  // pub_key = argv[10]
	/////////READ IN STRUCT/////////

	struct metadata meta = {0};

	// Set Owner ID
	meta.owner_id = atoi(argv[1]);

	// Set Region IDs
	int i = 0;
	char *p = strtok(argv[2], ",");
	while (p != NULL) {
		meta.region_ids[i] = atoi(p);
		p = strtok(NULL, ",");
		i++;
	}

	// Parse Region Secrets
	int j = 0;
	char *p2 = strtok(argv[3], ",");

	while (p2 != NULL) {
		for (int k = 0; k < strlen(p2); k++) {
			meta.region_secrets[j][k] = p2[k];
		}
		p2 = strtok(NULL, ",");
		j++;
	}

	// Set Song Name
	strcpy(meta.song_name, argv[4]);

	// Print the structure
	// printStruct(meta);

	// Print the struct size
	// printStructSize(meta);

  /////////CREATE OUT FILE///////// (done )
  FILE *encFile;
  encFile = fopen(argv[9], "wb"); // open the outfile for writing
  if (encFile == NULL)
  {
      fprintf(stderr, "\nError opening file\n");
      return 1;
  }
  /////////WRITE META TO FILE///////// (done )

  writeMetadata(encFile, meta);

  /////////ENCRYPT FULLSONG TO FILE /////////
  // printf("\nEncrypting %s with the password: %s\n", argv[7],argv[8]);
  uint8_t temphash[64] = {0};
  crypto_blake2b(temphash, (const uint8_t *)argv[8], strlen(argv[8])); //turn long password into useable hash

  uint8_t hash[32] = {0};
  memcpy (hash, temphash, sizeof(hash)); // need to reduce the size of the hash for use in encryption

  uint8_t nonce [24] = {0};

  if (encrypt(encFile, argv[7], hash, nonce) != 0)
  {
    printf("Encryption Failed");
    return 1;
  }

  /////////WRITE CURRENT LOCATION OF FILE POINTER/////////

  meta.endFullSong = ftell(encFile); // get cur location
  fseek( encFile, 0, SEEK_SET ); //go to start of file
  writeMetadata(encFile, meta); // write metatdata with endFullSong included
  fseek( encFile, meta.endFullSong, SEEK_SET ); // go back to where we were

  /////////ENCRYPT 30 SECOND SONG TO FILE/////////

  // printf("\nEncrypting %s with the password: %s\n", argv[5],argv[6]);
  uint8_t temphash30[64] = {0};
  crypto_blake2b(temphash30, (const uint8_t *)argv[6], strlen(argv[6])); //turn long password into useable hash

  uint8_t hash30[32] = {0};
  memcpy (hash30, temphash30, sizeof(hash30)); // need to reduce the size of the hash for use in encryption

  uint8_t nonce30 [24] = {0};


  if (encrypt(encFile, argv[5], hash30, nonce30) != 0)
  {
    printf("Encryption Failed");
    return 1;
  }
  /////////CLOSE FILE/////////
  // fclose (encFile);
  fclose (encFile);

  ////////SIGN FILE////////
  encFile = fopen(argv[9], "rb+"); // open the outfile for writing
  if (encFile == NULL)
  {
      fprintf(stderr, "\nError opening file\n");
      return 1;
  }

  uint8_t root_verify[32] = {0};
  //convert from hex string to uint8_t
  for(int i = 0; i < 64; i = i + 2)
  {
    if(argv[10][i] >= '0' && argv[10][i] <= '9')
    {
      root_verify[i/2] = argv[10][i] - '0';
    }
    else{
      root_verify[i/2] = argv[10][i] - 'a' + 10;
    }

    root_verify[i/2] = root_verify[i/2] << 4;

    if(argv[10][i+1] >= '0' && argv[10][i+1] <= '9')
    {
      root_verify[i/2] += argv[10][i+1] - '0';
    }
    else{
      root_verify[i/2] += argv[10][i+1] - 'a' + 10;
    }
  }


    uint8_t public_key[32] = {0};
  //convert from hex string to uint8_t
  for(int i = 0; i < 64; i = i + 2)
  {
    if(argv[11][i] >= '0' && argv[11][i] <= '9')
    {
      public_key[i/2] = argv[11][i] - '0';
    }
    else{
      public_key[i/2] = argv[11][i] - 'a' + 10;
    }

    public_key[i/2] = public_key[i/2] << 4;

    if(argv[11][i+1] >= '0' && argv[11][i+1] <= '9')
    {
      public_key[i/2] += argv[11][i+1] - '0';
    }
    else{
      public_key[i/2] += argv[11][i+1] - 'a' + 10;
    }
    // printf("\n\npublic key: %c\n\n", argv[11][i]);
  }
  uint8_t signature[64] = {0};
  fseek( encFile, sizeof(meta.sharedInfo), SEEK_SET );

  //number of bytes to sign
  uint8_t toSign[15000] = {0};
  fread(toSign, 1, sizeof toSign - 1000, encFile);
  printf("\n\nendfullsong:%ld\n\n", meta.endFullSong);
  fseek(encFile, meta.endFullSong, SEEK_SET);
  fread(&toSign[14000], 1, 1000, encFile);

  //toSign has the info to sign
  //generate the public key (works with one provided)

  // crypto_sign_public_key(public_key, root_verify);
  // crypto_sign_public_key(public_key, root_verify);
  crypto_sign(signature, root_verify, public_key, toSign, sizeof toSign);
  int nay = crypto_check(signature, public_key, toSign, sizeof toSign);
  printf("\nCry if -1 =%d \n", nay);
  fseek(encFile, 0, SEEK_END);
  printf("\n\nSIZE: %ld\n%d:%d:%d\n", sizeof signature, signature[0], signature[47], signature[63]);
  int yay = fwrite(signature, sizeof(signature), 1, encFile);

  uint8_t hashtest[64] = {0};
  crypto_blake2b(hashtest, toSign, sizeof toSign);
  printf("\n\nHASHTEST %d\n\n", hashtest[0]);

  if(yay != 0){
    printf("Signature written successfully!\n");
  }
  else
  {
       printf("Error writing file!\n");
  }
  fclose (encFile);



  return 0;
}
