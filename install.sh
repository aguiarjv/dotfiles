#!/usr/bin/env bash


# This script should install my linux configs
# after gitclone the repo

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
USER_NAME="victor"

# Creating Folders
mkdir -p ~/personal/
mkdir -p ~/work/

mkdir -p ~/.config/i3/
mkdir -p ~/.config/i3status/

mkdir -p ~/Pictures/OP-Wallpapers/

sudo mkdir -p /media/$USER_NAME/backup/
sudo mkdir -p /media/$USER_NAME/windows/
sudo mkdir -p /media/$USER_NAME/usb/


# Installing some of the necessary packages

#sudo apt install i3 i3status dmenu thunar xfce4-terminal -y
#sudo apt install tmux fzf ripgrep nodejs -y
#sudo apt install htop ntfs-3g xclip -y
#sudo apt install ranger feh build-essentials -y

sudo apt install i3 i3status dmenu thunar xfce4-terminal tmux fzf ripgrep nodejs htop ntfs-3g xclip ranger feh build-essentials -y


# Moving files
cp -r $SCRIPT_DIR/nvim/.config/nvim ~/.config/
cp -r $SCRIPT_DIR/scripts/ $HOME

cp $SCRIPT_DIR/.bashrc $HOME
cp $SCRIPT_DIR/tmux/.tmux.conf $HOME

cp $SCRIPT_DIR/i3/i3config ~/.config/i3/config
cp $SCRIPT_DIR/i3/i3status ~/.config/i3status/config
