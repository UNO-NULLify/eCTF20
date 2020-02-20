
#ifndef SECRETS_H
#define SECRETS_H

<<<<<<< HEAD
#define NUM_REGIONS 3
const char *REGION_NAMES[] = { "United States", "Japan", "Australia" };
const u8 REGION_IDS[] = { 0, 1, 2 };

#define NUM_PROVISIONED_REGIONS 2
const u8 PROVISIONED_RIDS[] = { 0, 1 };

#define NUM_USERS 3
const char *USERNAMES[] = { "drew", "ben", "misha" };
const u8 USER_IDS[] = { 0, 1, 2 };

#define NUM_PROVISIONED_USERS 3
const u8 PROVISIONED_UIDS[] = { 0, 1, 2 };
const char *PROVISIONED_PINS[] = { "1234567890", "00000000", "0987654321" };
=======
#define PROVISIONED_REGIONS 2
#define PROVISIONED_USERS 3

#define ROOT_VERIFY "31396536656262313762393235653264363532613636386434616137386334636665653034353764383336623462313164313937356565653263323762346566"

enum USERNAMES { drew, ben, misha };
enum REGIONS { US, JA };

struct R_Data {
    char *name;
    char *pub_key;
    char *priv_key;
    char *rand;
};


struct R_Data region_data[2] = 
{ 
{ "United States","4f7d7cfa5d77c30d2b942240769efe3419b688e14b1eb0b4491ca03acaeb8d4e", "90927ff8d9862ab98bb5fdb7430151cbaf8ac74e1593632a3feb24a38ae341843e42a6380366abe83e6fef6e7dca7e807cb2ed2c92a5376f604b5bbbeac943b6ca9f5ecf9fe7c0c0", "4fccb822c6dfaca62ba0400ca6bc6aaf38e31b13682372ae3938e405e9018b37" },
{ "Japan","fc4a674d3ef5aea5cad48229059ba222de1243f986bf205e0e4b6208856ca168", "c081b9c20ec01cd39d796a595952d8c04434c74f039deda868c31565470595de0081a6553b63fe03c44add4799a7fba88c51e2c75dc6ee3aa66ce3247a0b1123beac464bf1a82e05", "ddd9dd217c49c8b18df2449fd7c98b1fabe86bdacca910ad868846030e072aeb" },
};



struct U_Data {
    char *name;
    char *hw_secret;
    char *pin_hash;
    char *pub_key;
    char *pvt_key;
    char *salt;
};

struct U_Data user_data[3] = 
{ 
{ "drew", "4db253dfd95b68403cdb", "$argon2id$v=19$m=65536,t=2,p=1$LAdqpFxqzcR3PLzTIKc3/w$noyA0zj4dqsb6rW9Re072w1gBPuRNdLbU3pZP4hCLaQ", "aa0fbe804890a2af7f99a4706a6d9f9a1f657e82fcabc7bf531d2939e55fe953", "99533f4a2ebec1eb7cc858fdf6499870fb5aba345f0e9b5f10151dae291cc003986950c06eb1a4779333e7c782ef84841f96a4e2f0e8fb98708c9e25249c505be2e1a9532a081bed", "462e32d46e1f39edb725ba4d53ec87c5" },
{ "ben", "5b8edd98f25f0cc811ab", "$argon2id$v=19$m=65536,t=2,p=1$sl1DBjT/uydozUWN2lapng$+YX1z2nDQSbgMMUXzkzCzkAYat9SNt7bNlg+dQQG20Q", "b4ec599b58baa531cef0713239a582e63d0ba5d373cb2d04e4ad53d71aaf2f04", "26bca0f57922770c220b85f31c7a4b6c22b1dc882b0118788dc7db2f806f3bb8dac4fd7557dd41f56540086b5f103a439d36e2d631ad22aaba1f4a0cf566ae7299b50a28716a8edb", "386ba919ef9716a3b0e810b821ce71c2" },
{ "misha", "e0a25b2bfbed541368bd", "$argon2id$v=19$m=65536,t=2,p=1$3VuZsOS1EaQ1KqhLw8MxDA$kFjH5p3uP0rE2CrARh0J3pf5wW8r1BICE3Qz6kXBsiQ", "4474bae10ab298efeaa45708773255785245a23ea38082d9049540e08d26d727", "a4490d4022375b59a66c9917466d71e35f945b9ab61e061f26ff6ee6e2d7d57a40f97c3a313e30d822b6c7527e859839619b81d3d3baaafb367e8c90fed2a49d2bf48e7fa895c12a", "7be2f6e7dae3959771a907611b51354a" },
};

>>>>>>> abb76b3b99e856c2a5d8bed9af74e3b5e0fe08c1

#endif // SECRETS_H
