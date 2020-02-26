#include <stdio.h>
//#include <sodium.h>
#include <string.h>
#include "constents.h"
#include <monocypher.h>

#define CHUNK_SIZE 4096

struct metadata {
    uint8_t owner_id; // 1-Byte
    uint8_t region_ids[MAX_REGIONS]; // 64-Bytes
    char region_secrets[MAX_REGIONS][MAX_REGION_SECRET]; // 64*160-Bytes
    char song_name[MAX_SONG_NAME]; // 64-Bytes
    // char shared_ids[64]; // 64-Bytes TODO
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
              memset(nonce, 0, sizeof(nonce));
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

static int
decrypt(const char *target_file, const char *source_file,
        const unsigned char key[32], uint8_t nonce [24] )
{
    unsigned char  buf_in[CHUNK_SIZE] = {0};
    unsigned char  buf_out[CHUNK_SIZE] = {0};
    unsigned char  mac[16] = {0};
    FILE          *fp_t, *fp_s;
    size_t         rlen;
    int            eof;
    fp_s = fopen(source_file, "rb");
    fp_t = fopen(target_file, "wb");

    do {

        fread(mac, 1, 16, fp_s);
        rlen = fread(buf_in, 1, sizeof buf_in, fp_s);
        eof = feof(fp_s);

        printf("\nWork %d\n",crypto_unlock( buf_out, key, nonce, mac, buf_in, rlen) );
        fwrite(buf_out, 1, (size_t) rlen, fp_t);

        //incremet nonce
        for (int i = 23; i >= 0; i--)
        {
          if(i == 0)
          {
            if (nonce[i] == 255)
            {
              memset(nonce, 0, sizeof(nonce));
            }
          }
          else if (nonce[i] == 255){
            nonce[i] = 0;
            nonce[i-1]+= 1;
          }
        }
        nonce[23] ++;

    } while (! eof);

    return 0;
}


//Write file metadata
//Target file is the file to write to
// metaIn is the metadata struct in to write to the file
int writeMetadata(FILE *outfile, struct metadata metaIn ){

  fwrite(&metaIn, sizeof(struct metadata), 1, outfile);

  if(fwrite != 0){
    printf("metadata written successfully !\n");
  }
  else
  {
       printf("error writing file !\n");
  }
  return 1;
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


  printf("Arg count: %d", argc);
  if(argc != 10) {
    printf("Metadata not formatted. Check arguments.\n");
    return 1;
  }

	/////////READ IN INFO/////////
	printf("\n----- Data Passed In -----\nowner_id: %s\nregion_ids: %s\nregion_secrets: %s\nsong_name: %s\n30path: %s\n30secret: %s\nfullpath: %s\nsecret: %s\noutFile: %s\n--- End Data Passed In ---\n", argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], argv[7], argv[8], argv[9]);
	// owner_id = argv[1];
	// region_ids = argv[2];
	// region_secrets = argv[3];
	// song_name = argv[4];
	// 30path = argv[5]
	// 30secret = argv[6]
	// fullpath = argv[7]
	// secret = argv[8]
	// outFile = argv[9]

	/////////READ IN STRUCT/////////

	struct metadata meta = {};

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
	printStruct(meta);

	// Print the struct size
	printStructSize(meta);

  /////////CREATE OUT FILE///////// (done )
  FILE *encFile;
  encFile = fopen("audio.drm", "wb"); // open the outfile for writing
  if (encFile == NULL)
  {
      fprintf(stderr, "\nError opend file\n");
      exit (1);
  }
  /////////WRITE META TO FILE///////// (done )


  writeMetadata(encFile, meta);


  /////////ENCRYPT FULLSONG TO FILE /////////


  // printf("\nEncrypting %s with the password: %s\n", argv[7],argv[8]);
  // uint8_t temphash[64] = {0};
  // crypto_blake2b(temphash, (const uint8_t *)argv[8], strlen(argv[8])); //turn long password into useable hash
  //
  //
  // uint8_t hash[32] = {0};
  // memcpy (hash, temphash, sizeof(hash)); // need to reduce the size of the hash for use in encryption
  //
  //
  // uint8_t nonce [24] = {0};
  // uint8_t mac [16] = {0};
  //
  //
  //   if (encrypt(encFile, argv[7], hash, nonce) != 0)
  //   {
  //     printf("Encryption Failed");
  //     return 1;
  //   }

  /////////WRITE CURRENT LOCATION OF FILE POINTER/////////



  /////////ENCRYPT 30 SECOND SONG TO FILE/////////




  /////////SIGN SONG/////////



  /////////CLOSE FILE///////// (done )
  fclose (encFile);


  // printf("\nEncrypting %s with the password: %s\n", argv[7],argv[8]);
  //
  // uint8_t temphash[64] = {0};
  // uint8_t hash[32] = {0};
  // uint8_t nonce [24] = {0};
  // uint8_t mac [16] = {0};
  //
  //
  // printf("\nLength of string in = %ld \n",strlen(argv[3]));
  //
  // crypto_blake2b(temphash, (const uint8_t *)argv[3], strlen(argv[3]));
  // memcpy (hash, temphash, sizeof(hash));
  // memcpy (nonce, temphash, sizeof(nonce));
  // memcpy (mac, temphash, sizeof(mac));
  //
  //   printf("\nNonce:\n");
  //   for (int i = 0; i < 24; i++)
  //   {
  //       printf("%02x", nonce[i]);
  //   }
  //
  //   if (encrypt(argv[2], argv[1], hash, mac, nonce) != 0)
  //   {
  //     printf("Encryption Failed");
  //     return 1;
  //   }
  //
  //   printf("\nNonce:\n");
  //   for (int i = 0; i < 24; i++)
  //   {
  //       printf("%02x", nonce[i]);
  //   }
  //
  //   if (decrypt("decryptedFile", argv[2], hash, mac, nonce) != 0)
  //   {
  //     printf("Decryption Failed");
  //     return 1;
  //   }

    return 0;
}
