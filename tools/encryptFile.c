#include <stdio.h>
#include <sodium.h>
#include <string.h>
#include "constents.h"

#define CHUNK_SIZE 4096

//test struct
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


//Write file metadata
//Target file is the file to write to
// metaIn is the metadata struct in to write to the file
int writeMetadata(const char *target_file, struct metadata metaIn ){
  FILE *outfile;
  // open file for writing
  outfile = fopen (target_file, "w");
  if (outfile == NULL)
  {
      fprintf(stderr, "\nError opend file\n");
      exit (1);
  }
  fwrite(&metaIn, sizeof(struct metadata), 1, outfile);

  if(fwrite != 0){
    printf("contents to file written successfully !\n");
  }
  else
  {
       printf("error writing file !\n");
  }

  fclose (outfile);
  printf("writing metadata...\n");
  return 1;
}


int main(int argc, char *argv[]){

//Todo: could be modified
  int songName;
  int shortPath;
  int shortSecret;
  int fullPath;
  int secret;
  int outfile;
  int regionSecrets;
  int regions;
  int songID;


  //create struct for the song
  struct metadata metaOut;

  if(argc < 17)
  {
    printf("%s","Failed: Correct format ./encryptFile\n");
    //TODO: change to include newlines
    printf("--owner [OWNERNAME] \n\
--SongName [SONGNAME] \n\
--30path [path/to/file] \n\
--30secret SECRET \n\
--fullpath [path/to/file] \n\
--secret SECRET \n\
--outFile [path/out] \n\
--regionSecrets [regionsec1 regionsec2 regionsec3] \n\
--regions [region1 region2 region3] \n\
--songID [songID]%s","");
    exit(0);
  }

//TODO: create input from protect song for all its params and put it in the metadata struct
  for (int i = 0; i < argc; i++)
  {
    //printf("%s", argv[i]);
    if(strcmp(argv[i],"--owner")==0)
    {
      strcpy(metaOut.owner, argv[i+1]);
    }
    if(strcmp(argv[i], argv[i+1])==0)
    {
      printf("The owner is %s\n", argv[i+1]);
    }
    if(strcmp(argv[i],"--owner")==0)
    {
      printf("The owner is %s\n", argv[i+1]);
    }

  }



  printf("\nNumber of args: %d", argc);
//TODO:: Change to the encryption key from earlier
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


//TODO: move to the previous lines
    strcpy(metaOut.owner, "Raju");
    strcpy(metaOut.song_name, "thisisatest");
    strcpy(metaOut.region_list, "thisisatest");
    strcpy(metaOut.region_secret_list, "thisisatest");
    // metaOut.percentage = 86.5;

    printf("\nsong_name = %s\n", metaOut.song_name);
//TODO: change to the correct argument
    writeMetadata(argv[2],metaOut);


    return 0;
}
