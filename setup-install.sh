#!/usr/bin/env bash

# This script should install my linux configurations
# and download the necessary packages and files

# Creating folders:

mkdir -p ~/personal/
mkdir -p ~/work/
mkdir -p ~/dotfiles/personal

mkdir -p ~/.config/i3/
mkdir -p ~/.config/i3status/
mkdir -p ~/.config/nvim/

sudo mkdir -p /media/victor/backup
sudo mkdir -p /media/victor/windows
sudo mkdir -p /media/victor/usb

# Installing necessary packages

#sudo apt install nvim tmux zsh i3 -y
#sudo apt install fzf ripgrep nodejs -y
#sudo apt install htop ntfs-3g xfce4-terminal -y
#sudo apt install ranger feh -y

sudo apt install nvim tmux zsh i3 fzf ripgrep nodejs htop ntfs-3g xfce4-terminal ranger feh -y

# Downloading config files from github

# dotfiles
wget --no-check-certificate --content-disposition -O aliases https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/dotfiles/aliases
mv -f aliases ~/dotfiles/personal/

wget --no-check-certificate --content-disposition -O monitor https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/dotfiles/monitor
mv -f monitor ~/dotfiles/personal

wget --no-check-certificate --content-disposition -O tmux https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/dotfiles/tmux
mv -f tmux ~/dotfiles/personal

# i3 config and i3 status
wget --no-check-certificate --content-disposition https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/i3/i3config
mv -f i3config ~/.config/i3/config

wget --no-check-certificate --content-disposition https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/i3/i3status
mv -f i3status ~/.config/i3status/config

# tmux config
wget --no-check-certificate --content-disposition -O .tmux.conf https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/tmux/.tmux.conf
mv -f .tmux.conf ~/

# nvim init and coc-settings
wget --no-check-certificate --content-disposition https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/vim-config/myconfig.vim
mv -f myconfig.vim ~/.config/nvim/init.vim

wget --no-check-certificate --content-disposition -O coc-settings.json https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/vim-config/coc-settings/coc-settings.json
mv -f coc-settings.json ~/.config/nvim/
