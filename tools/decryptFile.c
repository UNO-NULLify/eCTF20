#include <sodium.h>
#include <stdio.h>
#include <string.h>

#define CHUNK_SIZE 4096

static int decrypt(
    const char *target_file, const char *source_file,
    const unsigned char key[crypto_secretstream_xchacha20poly1305_KEYBYTES]) {
  unsigned char
      buf_in[CHUNK_SIZE + crypto_secretstream_xchacha20poly1305_ABYTES];
  unsigned char buf_out[CHUNK_SIZE];
  unsigned char header[crypto_secretstream_xchacha20poly1305_HEADERBYTES];
  crypto_secretstream_xchacha20poly1305_state st;
  FILE *fp_t, *fp_s;
  unsigned long long out_len;
  size_t rlen;
  int eof;
  int ret = -1;
  unsigned char tag;

  fp_s = fopen(source_file, "rb");
  fp_t = fopen(target_file, "wb");
  fread(header, 1, sizeof header, fp_s);
  if (crypto_secretstream_xchacha20poly1305_init_pull(&st, header, key) != 0) {
    goto ret; /* incomplete header */
  }
  do {
    rlen = fread(buf_in, 1, sizeof buf_in, fp_s);
    eof = feof(fp_s);
    if (crypto_secretstream_xchacha20poly1305_pull(
            &st, buf_out, &out_len, &tag, buf_in, rlen, NULL, 0) != 0) {
      goto ret; /* corrupted chunk */
    }
    if (tag == crypto_secretstream_xchacha20poly1305_TAG_FINAL && !eof) {
      goto ret; /* premature end (end of file reached before the end of the
                   stream) */
    }
    fwrite(buf_out, 1, (size_t)out_len, fp_t);
  } while (!eof);

  ret = 0;
ret:
  fclose(fp_t);
  fclose(fp_s);
  return ret;
}

int main(int argc, char *argv[]) {

  printf("Decrypting %s with the password: %s", argv[1], argv[3]);

  unsigned char hash[crypto_generichash_BYTES];

  printf("Length of string in = %ld \n", strlen(argv[3]));
  crypto_generichash(hash, sizeof hash, (const unsigned char *)argv[3],
                     strlen(argv[3]), NULL, 0);

  if (sodium_init() != 0) {
    return 1;
  }

  if (decrypt(argv[2], argv[1], hash) != 0) {
    printf("Decryption Failed");
    return 1;
  }
  return 0;
}
