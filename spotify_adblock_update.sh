#!/bin/bash

echo "Update Spotify Adblock"
#based off https://github.com/abba23/spotify-adblock
git clone https://github.com/abba23/spotify-adblock.git
cd spotify-adblock
make
sudo make install
cd ..
rm -rf spotify-adblock
