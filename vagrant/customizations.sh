#add tools to the path
#THIS MUST BE UPDATED TO WORK WITH YOUR DESIGN SO THAT ALL TOOLS ARE ON THE PATH
export PATH="/ectf/tools:$PATH"
echo "export PATH=/ectf/tools:$PATH" >> ~/.bashrc
sudo apt install -y python3-pip clang-format
sudo pip3 install numpy PyNaCl pydub

# install LibSodium
# wget https://download.libsodium.org/libsodium/releases/libsodium-1.0.18-stable.tar.gz
# tar -xf libsodium-1.0.18-stable.tar.gz
# ./configure/libsodium-stable
# make && make check && make install

