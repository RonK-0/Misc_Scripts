#!/bin/bash

install_nightly() {
    echo "Update yt-dlp to the Nightly branch"
    sudo yt-dlp --update-to nightly
}

# Function to install from the master branch
install_master() {
    echo "Update yt-dlp to the Master branch"
    sudo yt-dlp --update-to master
}

# Prompt the user for their choice
echo "Which branch of yt-dlp would you like to update to?"
echo "1) Nightly"
echo "2) Master"
echo "any other input) Exit"
read -p "Please enter 1 or 2: " choice

# Handle user input
case $choice in
    1)
        install_nightly
        ;;
    2)
        install_master
        ;;
    *)
        echo "Invalid choice. Please enter 1 or 2. This script will terminate."
        ;;
esac