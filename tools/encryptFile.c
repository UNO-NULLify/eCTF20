#include <stdio.h>
#include <sodium.h>
#include <string.h>

#define CHUNK_SIZE 4096

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


int main(int argc, char *argv[]){
  unsigned char key[crypto_secretstream_xchacha20poly1305_KEYBYTES];

  printf("argin: %s", argv[1]);

  #define MESSAGE ((const unsigned char *) "38346332343036663762313637353239363534623339366136643362616331313561313730353963613261396661313562343534613264396638356532383336e5dcf584912b839451d23cb53a2090c9093e2dcd186d8888efd4630b02face1a34303639663433316463313264616630346135303238613665386432323135366532343533623238333933303161636435653966396164363539346365376162")
  #define MESSAGE_LEN 320

  unsigned char hash[crypto_generichash_BYTES];

  printf("Length of string in = %ld \n",strlen(argv[1]));
  crypto_generichash(hash, sizeof hash,
                      (const unsigned char *) argv[1], strlen(argv[1]),
                     NULL, 0);

     char           buf3[33];
    printf("%s\n",
	           sodium_bin2hex(buf3, 33U, (const unsigned char *)"0123456789ABCDEF",
	                          16U));


    char hex[33];
    printf("This is the hex: %s\n", sodium_bin2hex(hex, 65U,  hash, 65U));
    for(int i = 0; i < crypto_generichash_BYTES; i++)
    {
      printf("%x",hash[i]);
    }
    printf("\n");

    if (sodium_init() != 0)
    {
      return 1;
    }

    crypto_secretstream_xchacha20poly1305_keygen(key);

    if (encrypt("encrypted", "_sample.wav", hash) != 0)
    {
      printf("Encryption Failed");
      return 1;
    }

    if (decrypt("unencrypted", "encrypted", hash) != 0)
    {
      printf("Unencryption Failed");
      return 1;
    }
    return 0;
}
