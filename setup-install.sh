#!/usr/bin/env bash

# This script should install my linux configurations
# and download the necessary packages and files

# Creating folders:

sudo mkdir -p ~/personal/
sudo mkdir -p ~/work/
sudo mkdir -p ~/dotfiles/personal

sudo mkdir -p ~/.config/i3/
sudo mkdir -p ~/.config/i3status/
sudo mkdir -p ~/.config/nvim/

sudo mkdir -p /media/victor/backup
sudo mkdir -p /media/victor/windows
sudo mkdir -p /media/victor/usb

# Installing necessary packages

sudo apt install nvim tmux zsh i3 -y
sudo apt install fzf ripgrep nodejs -y
sudo apt install htop ntfs-3g xfce4-terminal -y
sudo apt install ranger feh -y

# Downloading config files from github

# dotfiles
wget --no-check-certificate --content-disposition https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/dotfiles/aliases
mv -f aliases ~/dotfiles/personal/

wget --no-check-certificate --content-disposition https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/dotfiles/monitor
mv -f monitor ~/dotfiles/personal

wget --no-check-certificate --content-disposition https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/dotfiles/tmux
mv -f tmux ~/dotfiles/personal

# i3 config and i3 status
wget --no-check-certificate --content-disposition https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/i3/i3config
mv -f i3config ~/.config/i3/config

wget --no-check-certificate --content-disposition https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/i3/i3status
mv -f i3status ~/.config/i3status/config

# tmux config
wget --no-check-certificate --content-disposition https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/tmux/.tmux.conf
mv -f .tmux.conf ~/

# nvim init and coc-settings
wget --no-check-certificate --content-disposition https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/vim-config/myconfig.vim
mv -f myconfig.vim ~/.config/nvim/init.vim

wget --no-check-certificate --content-disposition https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/vim-config/coc-settings/coc-settings.json
mv -f coc-settings.json ~/.config/nvim/
