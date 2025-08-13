#!/usr/bin/env bash

# This script should install my sway configs

# Creating folders
mkdir -p ~/.config/sway/
mkdir -p ~/.config/waybar/
mkdir -p ~/.config/wofi/

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

#sudo apt install sway swaybg swayidle sawyimg swaylock sway-notification-center -y
#sudo apt install light waybar wofi fonts-font-awesome wdisplays thunar -y
#sudo apt install pavucontrol -y
#sudo apt install grim slurp wl-clipboard -y
#sudo apt install pipewire wireplumber xdg-desktop-portal xdg-desktop-portal-wlr -y
#sudo apt install blueman -y
#sudo apt install network-manager-gnome network-manager-openvpn-gnome -y
#sudo apt install sway swaybg swayidle swayimg swaylock sway-notification-center light waybar wofi fonts-font-awesome wdisplays thunar pavucontrol grim slurp wl-clipboard pipewire wireplumber xdg-desktop-portal xdg-desktop-portal-wlr blueman network-manager-gnome network-manager-openvpn-gnome -y

# Moving files
cp $SCRIPT_DIR/swayconfig ~/.config/sway/config
cp $SCRIPT_DIR/swayaudio.sh ~/.config/sway/audio.sh
cp $SCRIPT_DIR/swaymute_audio.sh ~/.config/sway/mute_audio.sh
cp $SCRIPT_DIR/swayexit.sh ~/.config/sway/exit.sh
cp $SCRIPT_DIR/swaylock_screen.sh ~/.config/sway/lock_screen.sh
cp $SCRIPT_DIR/swaykb-layout.sh ~/.config/sway/kb-layout.sh
cp $SCRIPT_DIR/swaykb-toggle.sh ~/.config/sway/kb-toggle.sh

chmod +x ~/.config/sway/audio.sh
chmod +x ~/.config/sway/mute_audio.sh
chmod +x ~/.config/sway/exit.sh
chmod +x ~/.config/sway/lock_screen.sh
chmod +x ~/.config/sway/kb-layout.sh
chmod +x ~/.config/sway/kb-toggle.sh

cp $SCRIPT_DIR/waybarconfig ~/.config/waybar/config
cp $SCRIPT_DIR/waybarstyle.css ~/.config/waybar/style.css
cp $SCRIPT_DIR/waybarmocha.css ~/.config/waybar/mocha.css

cp $SCRIPT_DIR/woficonfig ~/.config/wofi/config
cp $SCRIPT_DIR/wofistyle.css ~/.config/wofi/style.css
