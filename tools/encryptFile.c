#include <stdio.h>
#include <sodium.h>
#include <string.h>

#define CHUNK_SIZE 4096
//test struct
struct metadata
{
            char songName[16]; //null terminated string of size 15 or less
            char songID[33]; // null terminated string of size 32
            char regionList[2080]; // 32 regions max of size 64 len + null
            char regionSecretList[5152];  // 32 regions max of size 160 + null
};


static int
encrypt(const char *target_file, const char *source_file,
        const unsigned char key[crypto_secretstream_xchacha20poly1305_KEYBYTES])
{
    unsigned char  buf_in[CHUNK_SIZE];
    unsigned char  buf_out[CHUNK_SIZE + crypto_secretstream_xchacha20poly1305_ABYTES];
    unsigned char  header[crypto_secretstream_xchacha20poly1305_HEADERBYTES];
    crypto_secretstream_xchacha20poly1305_state st;
    FILE          *fp_t, *fp_s;
    unsigned long long out_len;
    size_t         rlen;
    int            eof;
    unsigned char  tag;

    fp_s = fopen(source_file, "rb");
    fp_t = fopen(target_file, "wb");
    crypto_secretstream_xchacha20poly1305_init_push(&st, header, key);
    fwrite(header, 1, sizeof header, fp_t);
    do {
        rlen = fread(buf_in, 1, sizeof buf_in, fp_s);
        eof = feof(fp_s);
        tag = eof ? crypto_secretstream_xchacha20poly1305_TAG_FINAL : 0;
        crypto_secretstream_xchacha20poly1305_push(&st, buf_out, &out_len, buf_in, rlen,
                                                   NULL, 0, tag);
        fwrite(buf_out, 1, (size_t) out_len, fp_t);
    } while (! eof);
    fclose(fp_t);
    fclose(fp_s);
    return 0;
}

int writeMetadata(const char *target_file, const char *source_file, struct metadata metaIn ){

  FILE *outfile;

  // open file for writing
  outfile = fopen ("person.dat", "w");
  if (outfile == NULL)
  {
      fprintf(stderr, "\nError opend file\n");
      exit (1);
  }
  fwrite (&metaIn, sizeof(struct metadata), 1, outfile);

  if(fwrite != 0)
       printf("contents to file written successfully !\n");
  else
       printf("error writing file !\n");
       fclose (outfile);

  printf("writing metadata...\n");
  return 1;

}


// argv 1 is input file, argv 2 is the output file, argv 3 is the
int main(int argc, char *argv[]){

  printf("\nEncrypting %s with the password: %s\n", argv[1],argv[3]);

  unsigned char hash[crypto_generichash_BYTES];

  printf("\nLength of string in = %ld \n",strlen(argv[3]));
  crypto_generichash(hash, sizeof hash,
                      (const unsigned char *) argv[3], strlen(argv[3]),
                     NULL, 0);

    if (sodium_init() != 0)
    {
      return 1;
    }

    if (encrypt(argv[2], argv[1], hash) != 0)
    {
      printf("Encryption Failed");
      return 1;
    }


    // struct metadata record;
    // record.id=1;
    // strcpy(record.name, "Raju");
    // record.percentage = 86.5;


    // writeMetadata(argv[2], argv[1], record);


    return 0;
}
