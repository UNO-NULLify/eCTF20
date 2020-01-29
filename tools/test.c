#include <stdio.h>
#include "./device/device_secrets.h"

int main(void)
{
    puts("Region:");
    printf("Rand: %s\nPub: %s\nPriv: %s\n\n", Canada.rand, Canada.pub_key,Canada.priv_key);

    puts("Users:");
    printf("HW: %s\nPin: %s\nPub: %s\nPriv: %s\n", user1.hw_secret, user1.pin, user1.pub_key, user1.pvt_key);
}