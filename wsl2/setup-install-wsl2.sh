#!/usr/bin/env bash

# This script should install my linux configurations
# and download the necessary packages and files

# Creating folders:

sudo mkdir -p ~/personal/
sudo mkdir -p ~/work/
sudo mkdir -p ~/dotfiles/personal

sudo mkdir -p ~/.config/nvim/

# Installing necessary packages

sudo apt install nvim tmux zsh -y
sudo apt install fzf ripgrep nodejs -y
sudo apt install htop -y
sudo apt install ranger -y

# Downloading config files from github

# dotfiles
wget --no-check-certificate --content-disposition https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/dotfiles/aliases
mv -f aliases ~/dotfiles/personal/

wget --no-check-certificate --content-disposition https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/dotfiles/tmux
mv -f tmux ~/dotfiles/personal

# tmux config
wget --no-check-certificate --content-disposition https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/tmux/.tmux.conf
mv -f .tmux.conf ~/

# nvim init and coc-settings
wget --no-check-certificate --content-disposition https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/vim-config/myconfig.vim
mv -f myconfig.vim ~/.config/nvim/init.vim

wget --no-check-certificate --content-disposition https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/vim-config/coc-settings/coc-settings.json
mv -f coc-settings.json ~/.config/nvim/
