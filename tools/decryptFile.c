#include <stdio.h>
#include <sodium.h>
#include <string.h>
#include "constants.h"

#define CHUNK_SIZE 4096


struct metadata
{
  char owner[MAX_USERNAME_SZ];
  // char shared[PROVISIONED_USERS][MAX_USERNAME_SZ];
  char song_name[MAX_SONG_NAME]; // null terminated string of size 15 or less
  char region_list[MAX_REGIONS][MAX_REGION_SZ]; // 32 regions max of size 64 len + null
  char region_secret_list[MAX_REGIONS][MAX_REGION_SECRET]; // 32 regions max of size 160 + null
  // int region_num;
};



static int
decrypt(const char *target_file, const char *source_file,
        const unsigned char key[crypto_secretstream_xchacha20poly1305_KEYBYTES])
{
    unsigned char  buf_in[CHUNK_SIZE + crypto_secretstream_xchacha20poly1305_ABYTES];
    unsigned char  buf_out[CHUNK_SIZE];
    unsigned char  header[crypto_secretstream_xchacha20poly1305_HEADERBYTES];
    crypto_secretstream_xchacha20poly1305_state st;
    FILE          *fp_t, *fp_s;
    unsigned long long out_len;
    size_t         rlen;
    int            eof;
    int            ret = -1;
    unsigned char  tag;

    fp_s = fopen(source_file, "rb");
    fp_t = fopen(target_file, "wb");
    fread(header, 1, sizeof header, fp_s);
    if (crypto_secretstream_xchacha20poly1305_init_pull(&st, header, key) != 0) {
        goto ret; /* incomplete header */
    }
    do {
        rlen = fread(buf_in, 1, sizeof buf_in, fp_s);
        eof = feof(fp_s);
        if (crypto_secretstream_xchacha20poly1305_pull(&st, buf_out, &out_len, &tag,
                                                       buf_in, rlen, NULL, 0) != 0) {
            goto ret; /* corrupted chunk */
        }
        if (tag == crypto_secretstream_xchacha20poly1305_TAG_FINAL && ! eof) {
            goto ret; /* premature end (end of file reached before the end of the stream) */
        }
        fwrite(buf_out, 1, (size_t) out_len, fp_t);
    } while (! eof);

    ret = 0;
ret:
    fclose(fp_t);
    fclose(fp_s);
    return ret;
}


struct metadata readMetadata(const char *target_file, const char *source_file){

  struct metadata metaIn;
  printf("Reading metadata...");

  FILE *infile;

  // open file for writing
  infile = fopen ("person.dat", "r");
  if (infile == NULL)
  {
      fprintf(stderr, "\nError opend file\n");
      exit (1); //end the program
  }
  fread(&metaIn, sizeof(struct metadata), 1, infile);
  printf("\nsong_name inside = %s\n", metaIn.song_name);
  if(fwrite != 0){
    printf("contents Read successfully!\n");
  }
  else
  {
       printf("error writing file !\n");
  }

  fclose(infile);

  printf("reading metadata...\n");
  return metaIn;
}



int main(int argc, char *argv[]){

  printf("Decrypting %s with the password: %s", argv[1],argv[3]);

  unsigned char hash[crypto_generichash_BYTES];

  printf("Length of string in = %ld \n",strlen(argv[3]));
  crypto_generichash(hash, sizeof hash,
                      (const unsigned char *) argv[3], strlen(argv[3]),
                     NULL, 0);

    if (sodium_init() != 0)
    {
      return 1;
    }

    if (decrypt(argv[2], argv[1], hash) != 0)
    {
      printf("Decryption Failed");
      return 1;
    }
    struct metadata metaIn;
    metaIn = readMetadata(argv[2], argv[1]); //returns the metadata from a file

    printf("\nsong_name from read in = %s\n", metaIn.song_name);

    return 0;
}
