#include <stdio.h>
//#include <sodium.h>
#include <string.h>
#include "constents.h"
#include <monocypher.h>

#define CHUNK_SIZE 4096

// //test struct
// struct metadata
// {
//   char owner[MAX_USERNAME_SZ];
//   // char shared[PROVISIONED_USERS][MAX_USERNAME_SZ];
//   char song_name[MAX_SONG_NAME]; // null terminated string of size 15 or less
//   char region_list[MAX_REGIONS][MAX_REGION_SZ]; // 32 regions max of size 64 len + null
//   char region_secret_list[MAX_REGIONS][MAX_REGION_SECRET]; // 32 regions max of size 160 + null
//   // int region_num;
// };
//
//
static int
encrypt(const char *target_file, const char *source_file,
        const uint8_t key[32], uint8_t macs [16],const uint8_t nonce [24] )
{

    unsigned char  buf_in[CHUNK_SIZE] = {0};
    unsigned char  buf_out[CHUNK_SIZE] = {0};
    unsigned char  buf_test[CHUNK_SIZE] = {0};
    unsigned char  mac[CHUNK_SIZE] = {0};
    // unsigned char  header[crypto_secretstream_xchacha20poly1305_HEADERBYTES];
    // crypto_secretstream_xchacha20poly1305_state st;
    FILE          *fp_t, *fp_s;
    // unsigned long long out_len;
    size_t         rlen;
    int            eof;
    // unsigned char  tag;

    fp_s = fopen(source_file, "rb");
    fp_t = fopen(target_file, "wb");
    // crypto_secretstream_xchacha20poly1305_init_push(&st, header, key);
    //fwrite(header, 1, sizeof header, fp_t);
    //TODO: Make nonce incriment
    do {
        rlen = fread(buf_in, 1, sizeof buf_in, fp_s);
        // for (int i = 0; i < CHUNK_SIZE; i++)
        // {
        //     printf("%02x", buf_in[i]);
        // }
        printf("\n%d rlen\n", rlen);

        eof = feof(fp_s);
        // tag = eof ? crypto_secretstream_xchacha20poly1305_TAG_FINAL : 0;
        // crypto_secretstream_xchacha20poly1305_push(&st, buf_out, &out_len, buf_in, rlen,
        //                                            NULL, 0, tag);
        printf("\nStartin encryption In\n");
        // for (int i = 0; i < rlen; i++)
        // {
        //     printf("%02x", buf_in[i]);
//}
        printf("\n mac:\n");
        for (int i = 0; i < 16; i++)
        {
            printf("%02x", mac[i]);
        }

        crypto_lock(mac, buf_out, key, nonce, buf_in, rlen);
        printf("Work %d",crypto_unlock( buf_test, key, nonce, mac, buf_out, rlen) );
        printf("\nStartin encryption out!\n");
        // for (int i = 0; i < rlen; i++)
        // {
        //     printf("%02x", buf_out[i]);
        // }

        // crypto_unlock( buf_test, key, nonce, mac, buf_out, rlen);
      // printf("Decryption:\n");
        // for (int i = 0; i < CHUNK_SIZE; i++)
        // {
        //     printf("%02x", buf_out[i]);
        // }
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
    printf("\nStartin decryption... on %s\n", source_file);
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

        printf("\nStartin decryption... Out!!\n");
          printf("\n%d rlen\n", rlen);

        for (int i = 0; i < 16; i++)
        {
            printf("%02x", mac[i]);
        }
        printf("\nWork %d\n",crypto_unlock( buf_out, key, nonce, mac, buf_in, rlen) );


        // for (int i = 0; i < rlen; i++)
        // {
        //     printf("%02x", buf_out[i]);
        // }
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



  printf("\nNumber of args: %d", argc);
//TODO:: Change to the encryption key from earlier
  printf("\nEncrypting %s with the password: %s\n", argv[1],argv[3]);

  uint8_t temphash[64] = {0};
  uint8_t hash[32] = {0};
  uint8_t nonce [24] = {0};
  uint8_t mac [16] = {0};


  printf("\nLength of string in = %ld \n",strlen(argv[3]));

  crypto_blake2b(temphash, (const uint8_t *)argv[3], strlen(argv[3]));
  memcpy (hash, temphash, sizeof(hash));
  memcpy (nonce, temphash, sizeof(nonce));
  memcpy (mac, temphash, sizeof(mac));

  // crypto_generichash(hash, sizeof hash,
  //                     (const unsigned char *) argv[3], strlen(argv[3]),
  //                    NULL, 0);
    printf("\nNonce:\n");
    for (int i = 0; i < 24; i++)
    {
        printf("%02x", nonce[i]);
    }

    if (encrypt(argv[2], argv[1], hash, mac, nonce) != 0)
    {
      printf("Encryption Failed");
      return 1;
    }
    // for some reason this cant be here otherwise it breaks...
    // memcpy (hash, temphash, sizeof(hash));
    // memcpy (nonce, temphash, sizeof(nonce));
    // memcpy (mac, temphash, sizeof(mac));
    printf("\nNonce:\n");
    for (int i = 0; i < 24; i++)
    {
        printf("%02x", nonce[i]);
    }

    if (decrypt("decryptedFile", argv[2], hash, mac, nonce) != 0)
    {
      printf("Decryption Failed");
      return 1;
    }

    return 0;
}
