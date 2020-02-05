# A testing script that generates 32 regions

countries = "Afghanistan \
Albania \
Algeria \
Andorra \
Angola \
Anguilla \
Argentina \
Armenia \
Aruba \
Australia \
Austria \
Azerbaijan \
Bahamas \
Bahrain \
Bangladesh \
Barbados \
Belarus \
Belgium \
Belize \
Benin \
Bermuda \
Bhutan \
Bolivia \
Botswana \
Brazil \
Bulgaria \
Burundi \
Japan \
Canada \
Chile \
USA \
Colombia"

if __name__ == "__main__":
    
    print("Generating Test Regions")
    print(countries)
    file = open(os.getcwd() + "/test_regions.txt","w")
    file.writelines(countries)