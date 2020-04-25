# Playing

When playing a song, the first step is to determine if the song is owned by the current user, shared with the current user, or neither. This determines if the full song, shared song, or 30 second sample are played back to the user. The process is as follows:

![Play Song Flowchart](/playSong.png)

## Playing Full Song

To play the full song, there are three arguments that are needed:

- ```FILE *encFile``` - A pointer to the song file.
- ```struct metadata *meta``` - A pointer to the song [metadata structure](./metadata.md).
- ```char *pin``` - The current users pin. This is used to generate the secret for decryption.

```c
uint8_t playFull(FILE *encFile, struct metadata *meta, char *pin) {

  // Generate full secret
  uint8_t *secret = generateSecret(pin, meta);

  // Decrypt full song
  return decryptFull(encFile, meta, secret);
}
```

First, we need to generate the secret key used to decrypt the song. For a detailed explanation on this process, refer to the [Secret Generation documentation](./encryption.md#generating-secrets).

A pointer to this secret is then passed to the ```decryptFull``` function, along with the file pointer and metadata pointer, which will decrypt the song.

The function returns a uint8_t, either 0 or 1, to indicate success or failure. This pass/fail code comes from the return of ```decryptFull```.

### Decrypting a full song

```c
uint8_t decryptFull(FILE *encFile, struct metadata *meta, uint8_t *secret) {}
```

The first step to decrypting a song is to hash the secret with BLAKE2b:

```c
uint8_t hash[64] = {0};
crypto_blake2b(hash, secret, 160);
```

We can then use this hash as the key for [monocypher](https://monocypher.org/)'s ```crypto_unlock``` function to do the decryption:

```c
crypto_unlock(buf_out, key, nonce, mac, buf_in, rlen)
```

## Playing a Shared Song

The ```playShared``` song takes 4 arguments:

- ```FILE *encFile``` - A pointer to the song file.
- ```struct metadata *meta``` - A pointer to the song [metadata structure](./metadata.md).
- ```uint8_t uid``` - The ID of the current user.
- ```char *pin``` - The current users pin. This is used to generate the secret for decryption.

```c
uint8_t playShared(FILE *encFile, struct metadata *meta, uint8_t uid, char *pin){}
```

The first step to playing a shared song is to generate a hash of the users pin with BLAKE2b:

```c
crypto_blake2b(pin_hash, pin, sizeof(pin));
```

We can then get the encrypted private key from the ```device_secrets``` file, and use the hashed pin to decrypt the private key:

```c
crypto_unlock(pvt_key, pin_hash, nonce, mac, enc_pvt_key, 32);
```

This private key allows us to use [monocypher](https://monocypher.org/)'s ```crypto_key_exchange``` function to compute a shared key with the shared users secret key and the owners public key:

```c
crypto_key_exchange(shared_key, pvt_key, pub_key);
```

Next, we need to decrypt the sharedInfo section of the metadata at that user ID's index.

```c
crypto_unlock(decrypted, shared_key, nonceDec, meta->sharedInfo[uid-1] + 32, meta->sharedInfo[uid-1], 32);
```

Finally, we can use this information in [monocypher](https://monocypher.org/)'s ```crypto_unlock``` function to finish off decrypting the song:

```c
crypto_unlock(buf_out, key, nonce, mac, buf_in, rlen)
```

## Playing 30 Second Sample

Only two arguments are needed to play the 30 second sample of a song, as no pin is needed for decryption. There arguments needed are:

- ```FILE *encFile``` - A pointer to the song file.
- ```struct metadata *meta``` - A pointer to the song [metadata structure](./metadata.md).

```c
uint8_t play30(FILE *encFile, struct metadata *meta) {
  // Generate 30 secret
  uint8_t *secret30 = generate30Secret(meta);

  // Decrypt 30 second sample
  return decrypt30(encFile, meta, secret30);
}
```

First, we need to generate the secret key used to decrypt the sample. Generating secrets is explained in greater detail in the [Secret Generation documentation](./encryption.md#generating-secrets).

A pointer to the 30 second secret is then passed to the ```decrypt30``` function, along with the file pointer and metadata pointer, which will decrypt the 30 second sample.

The function returns the value of the ```decrypt30``` call, which is a 0 for success, and 1 for failure.

### Decrypting 30 second sample

```c
uint8_t decrypt30(FILE *encFile, struct metadata *meta, uint8_t *secret30) {}
```

The first step to decrypting the 30 second sample is to hash the 30 second secret with BLAKE2b:

```c
uint8_t hash[64] = {0};
crypto_blake2b(hash, (const uint8_t *) secret30, strlen(secret30));
```

We can then use this hash as the key for [monocypher](https://monocypher.org/)'s ```crypto_unlock``` function to do the decryption:

```c
crypto_unlock(buf_out, key, nonce, mac, buf_in, rlen)
```
