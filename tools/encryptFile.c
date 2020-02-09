#include <sodium.h>
#include <stdio.h>
#include <string.h>

#define CHUNK_SIZE 4096

static int encrypt(
    const char *target_file, const char *source_file,
    const unsigned char key[crypto_secretstream_xchacha20poly1305_KEYBYTES]) {
  unsigned char buf_in[CHUNK_SIZE];
  unsigned char
      buf_out[CHUNK_SIZE + crypto_secretstream_xchacha20poly1305_ABYTES];
  unsigned char header[crypto_secretstream_xchacha20poly1305_HEADERBYTES];
  crypto_secretstream_xchacha20poly1305_state st;
  FILE *fp_t, *fp_s;
  unsigned long long out_len;
  size_t rlen;
  int eof;
  unsigned char tag;

  fp_s = fopen(source_file, "rb");
  fp_t = fopen(target_file, "wb");
  crypto_secretstream_xchacha20poly1305_init_push(&st, header, key);
  fwrite(header, 1, sizeof header, fp_t);
  do {
    rlen = fread(buf_in, 1, sizeof buf_in, fp_s);
    eof = feof(fp_s);
    tag = eof ? crypto_secretstream_xchacha20poly1305_TAG_FINAL : 0;
    crypto_secretstream_xchacha20poly1305_push(&st, buf_out, &out_len, buf_in,
                                               rlen, NULL, 0, tag);
    fwrite(buf_out, 1, (size_t)out_len, fp_t);
  } while (!eof);
  fclose(fp_t);
  fclose(fp_s);
  return 0;
}

int main(int argc, char *argv[]) {

  printf("\nEncrypting %s with the password: %s\n", argv[1], argv[3]);

  unsigned char hash[crypto_generichash_BYTES];

  printf("\nLength of string in = %ld \n", strlen(argv[3]));
  crypto_generichash(hash, sizeof hash, (const unsigned char *)argv[3],
                     strlen(argv[3]), NULL, 0);

  if (sodium_init() != 0) {
    return 1;
  }

  if (encrypt(argv[2], argv[1], hash) != 0) {
    printf("Encryption Failed");
    return 1;
  }

  return 0;
}
