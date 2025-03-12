#!/usr/bin/env bash

# This script should install my i3 configs

# Creating folders
mkdir -p ~/.config/i3/
mkdir -p ~/.config/i3status/

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

sudo apt install i3 i3status dmenu -y

# Moving files
cp $SCRIPT_DIR/i3config ~/.config/i3/config
cp $SCRIPT_DIR/i3status ~/.config/i3status/config
