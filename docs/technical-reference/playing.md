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

First, we need to generate the secret key used to decrypt the song. For a detailed explanation on this process, refer to the [Secret Generation documentation](./metadata.md).

A pointer to this secret is then passed to the ```decryptFull``` function, along with the file pointer and metadata pointer, which will decrypt the song. For a detailed explanation on this process, refer to the [Decryption documentation](./metadata.md).

The function returns a uint8_t, either 0 or 1, to indicate success or failure. This pass/fail code comes from the return of ```decryptFull```.

## Playing a Shared Song

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

First, we need to generate the secret key used to decrypt the sample. Generating secrets is explained in greater detail in the [Secret Generation documentation](./metadata.md).

A pointer to the 30 second secret is then passed to the ```decrypt30``` function, along with the file pointer and metadata pointer, which will decrypt the 30 second sample.



