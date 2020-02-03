#include <stdio.h>
#include <string.h>
#include <sodium.h>
#include "./device/device_secrets.h"

int check_region(char *region);
int check_user(char *user);

// pass this struct to drm
struct Login 
{
    char *user_name;
    char *pin;
};


int main(void)
{
    puts("test suite for device provisioning process\n");
    puts("Region:");
    printf("Rand: %s\nPub: %s\nPriv: %s\n\n", region_data[Canada].rand, region_data[Canada].pub_key, region_data[Canada].priv_key);

    puts("Users:");
    printf("HW: %s\nPin: %s\nPub: %s\nPriv: %s\n", user_data[user1].hw_secret, user_data[user1].pin_hash, user_data[user1].pub_key, user_data[user1].pvt_key);

    puts("\ndecrypting user pin\n");

    if (crypto_pwhash_str_verify(user_data[user1].pin_hash, "12345678", strlen("12345678")) != 0) //strlen("12345678")
    { //strlen(PASSWORD)
        puts("nope");
    }
    else
    {    
        puts("yup\n");
    }
    puts("\niterating through regions:\n");
    for (int i=0; i<PROVISIONED_REGIONS; i++)
    {
        printf("%s\n", region_data[i].name);
    }
    puts("\niterating through users:\n");
    for (int i=0; i<PROVISIONED_USERS; i++)
    {
        printf("%s\n", user_data[i].name);
    }
    puts("\nCheck Regions\n");
    char *r[3] = { "USA", "Canada", "India"};

    for (int i=0; i<3; i++)
    {
        if (check_region(r[i]) > -1)
        {
            printf("\n%s is a provisioned region", r[i]);
        }
        else
        {
            printf("\n%s is not provisioned region", r[i]);
        }
    }
    puts("\nCheck Users\n");
    char *u[3] = { "user1", "user2", "user3"};

    for (int i=0; i<3; i++)
    {
        if (check_region(r[i]) > -1)
        {
            printf("\n%s is a provisioned user", u[i]);
        }
        else
        {
            printf("\n%s is not provisioned user", u[i]);
        }
    }
    // implement while loop to mimic login here:


    //decrypt song here

}
/*  
    A function that checks if a string is within an array of region struct's name property
    param: char *region: the string which you are checking

    returns the index where char *region is found or -1
*/
int check_region(char *region)
{
    for (int i=0; i<PROVISIONED_REGIONS; i++)
    {
        if (strncmp(region_data[i].name, region, sizeof(*region)) == 0)
        {
            return i;
        }
    }
    return -1;
}
/*  
    A function that checks if a string is within an array of user struct's name property
    param: char *user: the string which you are checking

    returns the index where char *region is found or -1
*/
int check_user(char *user)
{
    for (int i=0; i<PROVISIONED_USERS; i++)
    {
        if (strncmp(user_data[i].name, user, sizeof(*user)) == 0)
        {
            return i;
        }
    }
    return -1;
}