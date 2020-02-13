// File automatically generated
#ifndef SECRETS_H
#define SECRETS_H

// Number of provisioned regions
#define PROVISIONED_REGIONS 64
// Number of provisioned users
#define PROVISIONED_USERS 64

// Device-specific secret?
#define ROOT_VERIFY

// List of provisioned usernames
enum USERNAMES;
// List of provisioned regions
enum REGIONS;

// Region data struct
struct R_Data {
  char *name;
  char *pub_key;
  char *priv_key;
  char *rand;
};

// Array of region data structs
struct R_Data RegionData[PROVISIONED_REGIONS];

// User data struct
struct U_Data {
  char *name;
  char *hw_secret;
  char *pin_hash;
  char *pub_key;
  char *pvt_key_enc;
};

// Array of user data structs
struct U_Data UserData[PROVISIONED_USERS];

#endif // SECRETS_H