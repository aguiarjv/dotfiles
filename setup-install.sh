#!/usr/bin/env bash

# This script should install my linux configurations
# and download the necessary packages and files

# Creating folders:

mkdir -p ~/personal/
mkdir -p ~/work/
mkdir -p ~/dotfiles/zsh/

mkdir -p ~/.config/i3/
mkdir -p ~/.config/i3status/
mkdir -p ~/.config/nvim/

sudo mkdir -p /media/victor/backup
sudo mkdir -p /media/victor/windows
sudo mkdir -p /media/victor/usb

# Installing necessary packages

#sudo apt install nvim tmux zsh i3 i3status dmenu -y
#sudo apt install fzf ripgrep nodejs -y
#sudo apt install htop ntfs-3g xfce4-terminal -y
#sudo apt install ranger feh -y

sudo apt install nvim tmux zsh i3 i3status dmenu fzf ripgrep nodejs htop ntfs-3g xfce4-terminal ranger feh -y

# Downloading config files from github

# dotfiles
wget --no-check-certificate --content-disposition -O monitor https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/dotfiles/monitor
mv -f monitor ~/dotfiles/

wget --no-check-certificate --content-disposition -O tmux https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/dotfiles/tmux
mv -f tmux ~/dotfiles/

# zsh files
wget --no-check-certificate --content-disposition -O zshrc https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/zsh-config/zshrc
mv -f zshrc ~/dotfiles/zsh/

wget --no-check-certificate --content-disposition -O zsh-aliases https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/zsh-config/zsh-aliases
mv -f zsh-aliases ~/dotfiles/zsh/

wget --no-check-certificate --content-disposition -O zsh-functions https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/zsh-config/zsh-functions
mv -f zsh-functions ~/dotfiles/zsh/

wget --no-check-certificate --content-disposition -O zsh-vim-mode https://raw.githubusercontent.com/aguiarjv/Linux-Configs/main/zsh-config/zsh-vim-mode
mv -f zsh-vim-mode ~/dotfiles/zsh/

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
