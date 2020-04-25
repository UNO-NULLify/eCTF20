# Song Metadata

```c
struct metadata {
  uint8_t sharedInfo[64][48];    // [64-Bytes of Users to share] [32 byte key + 16 byte MAC]
  uint8_t owner_id;              // 1-Byte
  uint8_t region_ids[64];        // 64-Bytes
  char region_secrets[64][96];   // 64 * 96-Bytes
  char song_name[64];            // 64-Bytes
  long int endFullSong;
  long int songSize;
};
```

The metadata structure holds all of the information needed to query, play, and share a song. Below is a breakdown of what each of the 7 fields store, and what they are used for:

- ```uint8_t sharedInfo[64][48];``` - sharedInfo holds the encrypted information needed for sharing songs. It is a two dimensional array to hold the 32 byte key and 16 byte MAC (48 bytes) for each of the 64 possible users. The data for each user is stored at the index of their ID minus 1, as the first UID is 1. For example, the shared info for user 4 would be stored in array position 3.
- ```uint8_t owner_id;``` - The ID of the owner of the song.
- ```uint8_t region_ids[64];``` - A maximum of 64 ID's of regions the song has been provisioned for.
- ```char region_secrets[64][64 + 32];``` - 
- ```char song_name[64];``` - The name of the song, up to 64 characters.
- ```long int endFullSong;``` - 
- ```long int songSize;``` - 