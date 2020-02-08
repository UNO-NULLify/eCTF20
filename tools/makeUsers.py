# A testing script that generates 64 random user:pin combinations 
# Username len:1-15 characters [a-z, a-Z]
# PIN len:8-64 characters [0-9]

import random
import string
import os

if __name__ == "__main__":


    users = ""

    for _ in range(64):
        user = "".join(random.choice(string.ascii_letters) for i in range(random.randrange(1,15)))
        pin = "".join(random.choice(string.digits) for i in range(random.randrange(8,64)))
        rand_user = user + ":" + pin + " "
        users += rand_user
    
    print("Generating user/pin pairs")
    #print(users)
    file = open(os.getcwd() + "/provision_test/test_users.txt","w")
    file.writelines(users)