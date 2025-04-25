#!/bin/bash

echo "CBPP 11 / Debian 11 Bullseye upgrade to Debian 12 Bookworm : An experiment"

echo "--------------------"

echo "Add Debian Bullseye Repos to sources.list"

sudo echo "# deb cdrom:[Debian GNU/Linux 11 _Bullseye_ - Official Snapshot amd64 LIVE/INSTALL Binary 20230513-22:13]/ bullseye non-free main contrib 

deb https://deb.debian.org/debian/ bullseye contrib main non-free
# deb-src https://deb.debian.org/debian/ bullseye contrib main non-free

deb http://security.debian.org/debian-security/ bullseye-security main contrib non-free
# deb-src http://security.debian.org/debian-security/ bullseye-security main contrib non-free  " > /etc/apt/sources.list

echo "Done adding Debian Bullseye Repos to sources.list"

echo "--------------------"

echo "Check for Updates"

sudo apt update

echo "Done checking for Updates"

echo "--------------------"

echo "Installing apps"

sudo apt install gedit hwinfo gnome-system-monitor git python3-full lxmenu-data openbox-menu curl wget

echo "Done installing apps"

echo "--------------------"

echo "Installing themes"

sudo apt install qt5-style-kvantum* materia-gtk-theme materia-kde numix-gtk-theme numix-icon-theme papirus-icon-theme

git clone https://github.com/addy-dclxvi/openbox-theme-collections ~/.themes

echo "Done installing themes"

echo "--------------------"

echo "Add Debian Bullseye Backports to sources.list"

sudo echo "deb https://deb.debian.org/debian/ bullseye contrib main non-free
# deb-src https://deb.debian.org/debian/ bullseye contrib main non-free

deb http://deb.debian.org/debian bullseye-backports main contrib non-free
# deb-src http://deb.debian.org/debian bullseye-backports main contrib non-free

deb http://security.debian.org/debian-security/ bullseye-security main contrib non-free
# deb-src http://security.debian.org/debian-security/ bullseye-security main contrib non-free   " > /etc/apt/sources.list

echo "Done adding Debian Bullseye Backports to sources.list"

echo "--------------------"

echo "Check for Updates"

sudo apt update

echo "Done checking for Updates"

echo "--------------------"

echo "Installing updates from bullseye-backports repo"

sudo apt -t bullseye-backports upgrade -y

echo "Done installing updates from bullseye-backports repo"

echo "--------------------"

echo "Apply Updates"

sudo apt upgrade -y && sudo apt dist-upgrade -y

echo "Done Applying Updates"

echo "--------------------"

echo "Upgrade to Debian Bookworm repo"

sudo echo "deb https://deb.debian.org/debian/ bookworm contrib main non-free non-free-firmware
# deb-src https://deb.debian.org/debian/ bookworm contrib main non-free non-free-firmware

deb http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware
# deb-src http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware

deb http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware
# deb-src http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware     " > /etc/apt/sources.list

echo "Done Upgrading to Debian Bookworm repo"

echo "--------------------"

echo "Check for Updates"

sudo apt update

echo "Done checking for Updates"

echo "--------------------"

echo "Apply Updates"

sudo apt upgrade -y && sudo apt dist-upgrade -y

echo "Done Applying Updates"

echo "--------------------"

echo "Cleanup"

sudo apt autoremove -y

echo "Done Cleaningup"

echo "--------------------"

echo "DONE!"

exit 0

## Replacement menu
# https://forums.bunsenlabs.org/viewtopic.php?id=3387
