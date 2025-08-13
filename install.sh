#!/usr/bin/env bash

# This script should install my linux configs
# after gitclone the repo

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
USER_NAME="joao-aguiar"

# Creating Folders
#mkdir -p ~/personal/
#mkdir -p ~/work/

#mkdir -p ~/Pictures/OP-Wallpapers/

#sudo mkdir -p /media/$USER_NAME/backup/
#sudo mkdir -p /media/$USER_NAME/windows/
#sudo mkdir -p /media/$USER_NAME/usb/

# Installing some of the necessary packages

#sudo apt install thunar xfce4-terminal fonts-font-awesome -y
#sudo apt install tmux fzf ripgrep nodejs -y
#sudo apt install htop ntfs-3g xclip -y
#sudo apt install ranger feh build-essential fd-find -y

sudo apt install thunar tmux fonts-font-awesome fzf ripgrep nodejs htop ntfs-3g xclip ranger feh build-essential fd-find -y

# Moving files
#cp -r $SCRIPT_DIR/nvim/.config/nvim ~/.config/
cp -r $SCRIPT_DIR/scripts/ $HOME
#cp -r $SCRIPT_DIR/.poshthemes/ $HOME

#cp $SCRIPT_DIR/.bashrc $HOME
cp $SCRIPT_DIR/tmux/.tmux.conf $HOME
