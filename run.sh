#!/bin/bash

set -e

# Run everything from the user's home dir
cd ~/

# Ensure conda is on the path
PATH="/Users/$USER/miniconda2/bin:$PATH"

# Setup syncplay pyton env
source activate syncplay

cd syncplay
./syncplayClient.py
