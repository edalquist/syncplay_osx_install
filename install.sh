#!/bin/bash

set -e

# Run everything from the user's home dir
cd ~/

# Download & Install miniconda
curl -O https://repo.continuum.io/miniconda/Miniconda-latest-MacOSX-x86_64.sh
bash Miniconda-latest-MacOSX-x86_64.sh -bf

# Ensure conda is on the path
PATH="/Users/$USER/miniconda2/bin:$PATH"

# Install the required python packages
conda create -y -n syncplay python pyside pip
source activate syncplay
conda install -y qt

# Download SyncPlay
pip install twisted
git clone https://github.com/Syncplay/syncplay

# Open and then Close VLC before this
echo "Please Close VLC After it Opens"
open -W /Applications/VLC.app

# Install VLC control script
cp syncplay/resources/lua/intf/syncplay.lua /Applications/VLC.app/Contents/MacOS/share/lua/intf/
