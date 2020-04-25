# Sharing


To share a song, there are four arguments that are needed:

- ```uint8_t uid``` - The ID of the song owner (current user).
- ```uint8_t sid``` - The ID of the user the song is being shared with.
- ```char *pin``` - The current users pin. This is used to generate the secret.
- ```struct metadata *metadata``` - A pointer to the song [metadata structure](./metadata.md).

```c
int shareSong(uint8_t uid, uint8_t sid, char * pin, struct metadata * meta) {}
```

Sharing works by encrypting the song key, the key that decrypts the song, with the person receiving the songs public key. The first step to doing this is to hash the users pin passed through to the function with monocypher's BLAKE2b:

```c
crypto_blake2b(hashed_pin, pin, strlen(pin)); 
```

This is then used to unlock the private key as follows:

```c
crypto_unlock(pvt_key, hashed_pin, nonce, mac, enc_pvt_key, 32)
```

Your private key is then used in combination with the song owners public key to decrypt the song. This is using monocypher's [Crypto key Exchange](https://monocypher.org/manual/key_exchange).

```c
crypto_key_exchange(shared_key, pvt_key, pub_key);
```

After the sharedInfo is generated, we write it to the metadata for the shared user to access. 

The next step is to generate the secret for the song and hash it with BLAKE2b. Generating secrets is explained in greater detail in the [Secret Generation documentation](./encryption.md#generating-secrets).

```c
secretFull = generateSecret(pin, meta);
crypto_blake2b(hash, secretFull, 160); 
```

Finally, all of this information is used to call monocypher's ```crypto_lock``` function:

```c
crypto_lock(meta->sharedInfo[sid-1] + 32, meta->sharedInfo[sid-1] , shared_key, nonceEnc, hash, 32 );
```

To play a song shared with you, you need to first decrypt your private key with your pin and pinhash. Then, decrypt the encrypted song key with your private key and play the song. This is covered in greater detail in the [Play Song documentation](./playing.md).