#!/bin/bash
# Based on GassistPi's audio-drivers/USB-MIC-HDMI/scripts/install-usb-mic-hdmi.sh: https://github.com/shivasiddharth/GassistPi
# Copyright (c) 2020 Shivasiddharth. MIT licence with two conditions: not for
# competitions or assessments without the owner's permission (see its LICENSE)

set -o errexit

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root (use sudo)" 1>&2
   exit 1
fi

cd "$(dirname "${BASH_SOURCE[0]}")"

asoundrc=/home/${SUDO_USER}/.asoundrc
global_asoundrc=/etc/asound.conf
audioconfig=/home/${SUDO_USER}/audiosetup

for rcfile in "$asoundrc" "$global_asoundrc"; do
  if [[ -f "$rcfile" ]] ; then
    echo "Renaming $rcfile to $rcfile.bak..."
    sudo mv "$rcfile" "$rcfile.bak"
  fi
done

if [ -f $audioconfig ] ; then
    sudo rm $audioconfig
fi

echo 'usb-sound-card' >> $audioconfig

sudo cp asound.conf "$global_asoundrc"
sudo cp .asoundrc "$asoundrc"
echo "Installing USB sound card configuration"
