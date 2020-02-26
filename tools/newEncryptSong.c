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
    // char signature[64]; // 64-Bytes TODO
};

static int
encrypt(const char *target_file, const char *source_file,
        const uint8_t key[32], uint8_t macs [16],const uint8_t nonce [24] )
{

    unsigned char  buf_in[CHUNK_SIZE] = {0};
    unsigned char  buf_out[CHUNK_SIZE] = {0};
    unsigned char  mac[CHUNK_SIZE] = {0};
    FILE          *fp_t, *fp_s;
    size_t         rlen;
    int            eof;

    fp_s = fopen(source_file, "rb");
    fp_t = fopen(target_file, "wb");
    do {
        rlen = fread(buf_in, 1, sizeof buf_in, fp_s);
        eof = feof(fp_s);
        crypto_lock(mac, buf_out, key, nonce, buf_in, rlen);
        fwrite(mac, 1, 16, fp_t);
        fwrite(buf_out, 1, (size_t) rlen, fp_t);

    } while (! eof);
    fclose(fp_t);
    fclose(fp_s);
    return 0;
}

static int
decrypt(const char *target_file, const char *source_file,
        const unsigned char key[32], uint8_t mac2 [16],const uint8_t nonce [24] )
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
    } while (! eof);

    return 0;
}


//Write file metadata
//Target file is the file to write to
// metaIn is the metadata struct in to write to the file
// int writeMetadata(const char *target_file, struct metadata metaIn ){
//   FILE *outfile;
//   // open file for writing
//   outfile = fopen (target_file, "w");
//   if (outfile == NULL)
//   {
//       fprintf(stderr, "\nError opend file\n");
//       exit (1);
//   }
//   fwrite(&metaIn, sizeof(struct metadata), 1, outfile);
//
//   if(fwrite != 0){
//     printf("contents to file written successfully !\n");
//   }
//   else
//   {
//        printf("error writing file !\n");
//   }
//
//   fclose (outfile);
//   printf("writing metadata...\n");
//   return 1;
// }


int main(int argc, char *argv[]){


  uint8_t nonce [24] = {0};

  for(int i = 0; i < 24; i++)
  {
    printf("%u ", nonce[i]);
  }
  printf("\n");

  for(int j = 0; j < 100001; j++){


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

  }

  for(int i = 0; i < 24; i++)
  {
    printf("%u ", nonce[i]);
  }
  printf("\n");



  /////////READ IN INFO/////////
// file paths and shit

  /////////READ IN STRUCT/////////


  /////////CREATE OUT FILE/////////

  
  /////////WRITE META TO FILE/////////



  /////////ENCRYPT FULLSONG TO FILE /////////



  /////////WRITE CURRENT LOCATION OF FILE POINTER/////////



  /////////ENCRYPT 30 SECOND SONG TO FILE/////////




  /////////SIGN SONG/////////




  // printf("\nNumber of args: %d", argc);
  // printf("\nEncrypting %s with the password: %s\n", argv[1],argv[3]);
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
