# Main Linux Configurations

This repo was made to be used as a reference to my current Linux setup.
Here I will describe what I am currently using and how to set it up.

## What do I use as my main workflow?

- Font: Roboto Mono Medium

- neovim

- tmux

- i3 wm

- [Oh My Posh](https://ohmyposh.dev/)

---

## Table of Contents

- [Requirements](#requirements)
- [Installation](#installation)
- [Post-Installation](#post-installation)
- [Basic Shortcuts and Commands](#basic-shortcuts-and-commands)
- [Automatically Mount Partitions](#automatically-mount-partitions)

---

## Requirements

- Install  [Oh My Posh](https://ohmyposh.dev/) and read how to configure it
- Install patched fonts such as Nerd Fonts (e.g. Roboto Mono Nerd Font)
- Install [neovim](https://github.com/neovim/neovim)
- Run ``install.sh`` (see below)


## Installation
**Installation on Ubuntu**<br>

The installation is pretty simple. It will download and install some of the necessary sotfware and libs.
It also will create my default directories and organize the files. To install simply follow:

- Git clone this repo
- Change the USER_NAME variable in the ``install.sh`` file to your current home user
- Run ``install.sh``


## Post-Installation

After everything is installed some of the configurations should me changed as follows:

- The USER_NAME variable in the ``~/.tmux.conf`` to your current home user.
- The ``~/scripts/monitor`` file should be changed to your current monitor settings.
- The ``~/scripts/tv-audio``, ``~/scripts/mic-audio`` and ``~/scripts/set-audio-profiles`` files should be altered to your current audio settings.
- To check your monitor settings use ``$ arandr``. ``$ pacmd list-cards`` and ``$ pacmd list-sinks`` might be helpful to check the audio settings.


## Basic Shortcuts and Commands
**To be updated**<br>

There are a few basic shortcuts and commands that you should know to have a better workflow. You can customize it as you please.<br />
I've made a few cheat sheets on the programs and shortcuts that I use:

* **[nvim](./old/vim-config/remaps-list.md)** - leader key: **space**
* **[tmux](./tmux/tmux-shortcuts.md)** - leader key: **ctrl-a**
* **[i3wm](./i3/i3-shortcuts.md)** - leader key: **super**
* **[Terminal](./old/dotfiles/terminal-shortcuts.md)**


## Automatically Mount Partitions
reference: [AutomaticallyMountPartitions](https://help.ubuntu.com/community/AutomaticallyMountPartitions) <br />

In order to mount partitions on startup the 'filesystem table' should be edited. It can be a **dangerous process**, so be sure to **save a backup file**.
This file is located at:

```
/etc/fstab
```

To get all the information you need about the partitions available on your system, use the following command:

```
$ lsblk -o NAME,SIZE,TYPE,FSTYPE,UUID
```

To have **write access to 'ntfs'** file system you should install the **'ntfs-3g' package**. <br />

To grant all users access to '/dev/sdb1', which will be located at '/media/victor/backup', and is of type 'ntfs' the line would be:

```
/dev/sdb1 /media/victor/backup ntfs-3g rw,auto,user,fmask=0111,dmask=0000 0 0
```
