# Sharing


To share a song, there are four arguments that are needed:

- ```uint8_t uid``` - The ID of the song owner (current user).
- ```uint8_t sid``` - The ID of the user the song is being shared with.
- ```char *pin``` - The current users pin. This is used to generate the secret.
- ```struct metadata *metadata``` - A pointer to the song [metadata structure](./metadata.md).

```c
int shareSong(uint8_t uid, uint8_t sid, char * pin, struct metadata * meta) {}
```

The first step to sharing a song is generating 