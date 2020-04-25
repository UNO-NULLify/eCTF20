# Querying

## Query Song

The ```querySong``` function provides the users the song is provisioned to play for, along with the regions the song is provisioned to play in.

```querySong``` only has one parameter:

- ```char *songName``` - The name of the song to query.

``` c
void querySong(char *songName) {}
```

The first step to showing the provisioned users is to get the songs owner. Since we keep track of users by ID, we need to relate that ID back to a name from the ```device_secrets```. 

``` c
// First, get the songs owner
printf("Provisioned Users: ");
for (int j = 0; j < (sizeof(user_data) / sizeof(user_data[1])); j++) {
    if (user_data[j].id == meta.owner_id) {
        printf("%s (owner), ", user_data[j].name);
    }
}
```

The rest of the users the song has been provisioned for can be found in the ```sharedInfo``` field of the [metadata structure](./metadata.md). We can see which users the song has been shared with by checking which indices of ```sharedInfo``` have data. The index in the array plus one (as provisioned users have a uid > 0) corresponds to the users ID. For example, if the song is shared with the user of ID 6, the sharedInfo will be stored at index 5. 

``` c
// Next, get the users it's shared with
for(int i = 0; i < sizeof(meta.sharedInfo)/sizeof(meta.sharedInfo[0]); i++) {
    if (meta.sharedInfo[i][0] != NULL){
        for (int j = 0; j < (sizeof(user_data) / sizeof(user_data[1])); j++) {
            if (user_data[j].id == (i + 1)) {
                printf("%s, ", user_data[j].name);
            }
        }
    }
}
```

Finally, we can tell which regions the song has been provisioned for by looking at the ```region_ids``` field of the metadata. These ID's are stored sequentially, so we can break early when we hit a null. We then relate the ID back to a friendly name by using the ```region_data``` from the ```device_secrets``` as shown below:

``` c
// Print provisioned regions
printf("Provisioned Regions: ");
for(int i = 0; i < sizeof(meta.region_ids)/sizeof(meta.region_ids[0]); i++) {
    if (meta.region_ids[i] == NULL){
        break;
    } else {
        for (int j = 0; j < (sizeof(region_data) / sizeof(region_data[1])); j++) {
            if (region_data[j].id == meta.region_ids[i]) {
                printf("%s, ", region_data[j].name);
            }
        }
    }
}
```

## Query Player
This function runs once at device startup; telling the user what region(s) their miPod is provisioned and lists all the authorized usernames for the device. ```query_player``` has no parameters and returns ```void```.

```c
void query_player() {
    c->query.num_regions = PROVISIONED_REGIONS;
    c->query.num_users = PROVISIONED_USERS;

    for (int i = 0; i < PROVISIONED_REGIONS; i++) {
        strcpy((char *)q_region_lookup(c->query, i), region_data[i].name);
    }

    for (int i = 0; i < PROVISIONED_USERS; i++) {
        strcpy((char *)q_user_lookup(c->query, i), user_data[i].name);
    }

    mb_printf("Queried player (%d regions, %d users)\r\n", c->query.num_regions, c->query.num_users);
}
```