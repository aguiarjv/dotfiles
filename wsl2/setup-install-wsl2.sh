#!/usr/bin/env bash

# This script should install my linux configurations
# and download the necessary packages and files

# Creating folders:

mkdir -p ~/personal/
mkdir -p ~/work/
mkdir -p ~/dotfiles/personal

mkdir -p ~/.config/nvim/

# Installing necessary packages

#sudo apt install nvim tmux zsh -y
#sudo apt install fzf ripgrep nodejs -y
#sudo apt install htop -y
#sudo apt install ranger -y

sudo apt install nvim tmux zsh fzf ripgrep nodejs htop ranger -y

# Downloading config files from github

# dotfiles
wget --no-check-certificate --content-disposition -O aliases https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/dotfiles/aliases
mv -f aliases ~/dotfiles/personal/

wget --no-check-certificate --content-disposition -O tmux https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/dotfiles/tmux
mv -f tmux ~/dotfiles/personal

# tmux config
wget --no-check-certificate --content-disposition -O .tmux.conf https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/wsl2/.tmux.conf
mv -f .tmux.conf ~/

#.zshrc file
wget --no-check-certificate --content-disposition -O .zshrc https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/wsl2/.zshrc
mv -f .zshrc ~/

# nvim init and coc-settings
wget --no-check-certificate --content-disposition https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/vim-config/myconfig.vim
mv -f myconfig.vim ~/.config/nvim/init.vim

wget --no-check-certificate --content-disposition -O coc-settings.json https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/vim-config/coc-settings/coc-settings.json
mv -f coc-settings.json ~/.config/nvim/
