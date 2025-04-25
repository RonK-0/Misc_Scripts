# Miscelaneous Bash Scripts

A collection of miscelaneous bash scripts I use

## Package Update related:

### `spotify_adblock_update.sh`

- Update Script for [abba23](https://github.com/abba23/)'s [Spotify Adblock](https://github.com/abba23/spotify-adblock)

### `yt-dlp_upd.sh`

- Simple script to ask the user whether they want to update yt-dlp to the latest nightly or latest master build

### `upd.sh`

- My usual update script for updating packages installed through APT and Flatpak along with yt-dlp

## Tools:

### `LAMP folder`

- Install Script for LAMP (Linux, Apache, MySQL, PHP) Stack
- Start and Stop Script for MySQL

### `stress.sh`

- Script to install then run _[The Stress Terminal UI: s-tui](https://github.com/amanusk/s-tui)_

## Experiments:

### `CBPP_DB_11.sh`

- An experimental script I created a while back for _[Crunchbang++ 11](https://crunchbangplusplus.org/)_.
- It installs some tools like gedit, git, python3 along with configuration tools and themes for the CBPP desktop (lxmenu-data openbox-menu).
- The script does the following to the repo configuration.
  1. It adds the official _Debian 11 (Bullseye)_ repos to supplement the limited packages available on the _CBPP 11_ repos.
  2. Then it adds the Bullseye backport repos then performs an `apt uprade` and `apt dist-upgrade`.
  3. Finally it switches the Debian 11 repos to the _Debian 12 (Bookworm)_ repos then performs another series of upgrades.
- This was made to test if I can accidentally [FrankenDebian](https://wiki.debian.org/DontBreakDebian) a distro while moving from one Debian release to another, which I didn't though the multiple `apt dist-upgrade` could pose issues when some packages do not exist between different Debian release repos so its better to avoid installing other packages not on the repos before attempting this.


## Misc:

### `nf.sh`

- Calls neofetch with additional parameters to also display CPU speed & temp, DE version, Memory Usage percent, and display all GPUs

### `xed_themes.sh`

- Adds additional themes for the Xed text editor from [gedit-color-schemes](https://github.com/trusktr/gedit-color-schemes) by [trusktr](https://github.com/trusktr)