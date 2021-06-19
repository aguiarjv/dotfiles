#!/usr/bin/env bash

# This script should install my linux configurations
# and download the necessary packages and files

# Creating folders:

mkdir -p ~/personal/
mkdir -p ~/work/
mkdir -p ~/dotfiles/personal/zsh/

mkdir -p ~/.config/nvim/

# Installing necessary packages

#sudo apt install nvim tmux zsh -y
#sudo apt install fzf ripgrep nodejs -y
#sudo apt install htop -y
#sudo apt install ranger -y

sudo apt install nvim tmux zsh fzf ripgrep nodejs htop ranger -y

# Downloading config files from github

# dotfiles
wget --no-check-certificate --content-disposition -O tmux https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/dotfiles/tmux
mv -f tmux ~/dotfiles/personal

# zsh files
wget --no-check-certificate --content-disposition -O zshrc https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/zsh-config/zshrc
mv -f zshrc ~/dotfiles/personal/zsh/

wget --no-check-certificate --content-disposition -O zsh-aliases https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/zsh-config/zsh-aliases
mv -f zsh-aliases ~/dotfiles/personal/zsh/

wget --no-check-certificate --content-disposition -O zsh-functions https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/zsh-config/zsh-functions
mv -f zsh-functions ~/dotfiles/personal/zsh/

wget --no-check-certificate --content-disposition -O zsh-vim-mode https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/zsh-config/zsh-vim-mode
mv -f zsh-vim-mode ~/dotfiles/personal/zsh/

# tmux config
wget --no-check-certificate --content-disposition -O .tmux.conf https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/wsl2/.tmux.conf
mv -f .tmux.conf ~/

# nvim init and coc-settings
wget --no-check-certificate --content-disposition https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/vim-config/myconfig.vim
mv -f myconfig.vim ~/.config/nvim/init.vim

wget --no-check-certificate --content-disposition -O coc-settings.json https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/vim-config/coc-settings/coc-settings.json
mv -f coc-settings.json ~/.config/nvim/
