
#include <inttypes.h>
#ifndef SECRETS_H
#define SECRETS_H

#define PROVISIONED_REGIONS 2
#define PROVISIONED_USERS 3

#define ROOT_VERIFY "db2668ff5c5167e11e81ff8637f172c9c2d1107263f0da852307058212af8a84"

struct R_Data {
    uint8_t id;
    char *rand_pass;
};


struct R_Data region_data[2] = 
{ 
{ 1, "d6157f1ff56e9fb3b934bcabebff2e95dc6379f9e8a679e91fb28e71ceb1c234" },
{ 2, "7016cc70136936a9dc5d2023bfbb5aa40dfb23ec268d1cef3309ca87ad6ec96d" },
};



struct U_Data {
    uint8_t id;
    char *name;
    char *hw_secret;
    char *pin_hash;
    char *pub_key;
    char *pvt_key;
    char *salt;
};

struct U_Data user_data[3] = 
{ 
{ 1,"drew", "dc8098901602e0f735cf", "38293dcaceaf69f6e49c1ebb9219375691ef399f34a14afea1c26107692259b5", "979083188c1453d8c35c53394f71786705af28cd6449e7df8992806de7114642", "d433689830161592ff2f072fdb0fa9f57d7164527f657471ef91f67837a235f6b86bf35be634e4fafd9e9799f83be27a", "a33b41850101f4aac345a37db64305e5" },
{ 2,"ben", "73f1cbcae106e3eea569", "87e3f70f55fcf37116a25b0b1f1a861fc20845927401ee0d175cbca465d429d6", "c122c81cdc39dabadb594b4c3fe6ce3abebeb9912c5457d90546f2a5b3a9db17", "448c6e2b5132ba863c59a90ace8df2b6f503d561a1266b548171468e9691416ec316746663312e84d63c007652006010", "edc259e5325eea7ba224958e1e87d1dc" },
{ 3,"misha", "b1184d4ae0aae83ff6b8", "19ae840b411663825c2213894e0e21c11c2637b76dc37821a9471526a853209b", "36fbc7a35fa89fe746f9028975ed2d3d070016b6a1dce2918940504cb2f20946", "075c4afa8f9cceec8cf197f3df9e000301071908563546d7e9b2678c19cc241ab7ad3f91be410a5722a0b74dcf8b8378", "5ed72d6765f136eae1e1bbde6ed31883" },
};


#endif // SECRETS_H
