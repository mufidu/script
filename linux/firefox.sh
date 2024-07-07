#!/usr/bin/env bash
#
# This script requires Bash, curl, wget and pup. You can find the latter here:
#  https://github.com/ericchiang/pup
#
# Copyright 2021 Alex DeLorenzo. License: AGPLv3
#
# Usage:
#  $ ./install_ff.sh amd64
#
export ARCH="${1:-amd64}"
export URL="https://packages.ubuntu.com/bionic/$ARCH/firefox/download"
export DEB_PATH="div#content > ul > li > a attr{href}"

export deb_url=$(curl -s "$URL" | pup "$DEB_PATH")
export deb_file=$(basename "$deb_url")

# download if file does not exist
if ! test -e "$deb_file"; then
  printf "Downloading $deb_url\n"
  wget "$deb_url"
fi

# get current and downloaded firefox versions
export curr_ver=$(apt show firefox | grep Version | col2 | cut -d- -f1)
export download_ver=$(dpkg -I "$deb_file" | grep Version | col2 | cut -d- -f1)
printf "Installed: $curr_ver\n"
printf "Downloaded: $download_ver\n"

# check if installed version is different from downloaded version
if test "$curr_ver" != "$download_ver"; then
  # install
  sudo apt install ./"$deb_file"

  # hold version
  sudo apt-mark hold firefox
fi
