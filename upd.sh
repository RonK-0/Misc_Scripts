#!/bin/bash
echo "Check for Updates, Install Updates, and Remove unneeded"
sudo apt-get update && sudo apt-get full-upgrade -y && sudo apt-get autoremove -y

echo "Update yt-dlp to latest nightly"
sudo yt-dlp --update-to nightly

echo "Update flatpaks and remove any unused packages"
sudo flatpak update -y && flatpak remove --unused -y
