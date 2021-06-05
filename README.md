# Linux-Configs

Here I'll be saving and updating my current linux setup files and info.

### What do I use (main workflow)?

* font: Roboto Mono Medium 12

* neovim

* tmux

* zsh and [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)

* i3 wm

### Installation Script (Ubuntu)

I made a very simple [installion script](https://github.com/aguiarjv/Linux-Configs/blob/main/setup-install.sh) to setup everything as it should be.<br />
Just download it and then run (**careful: it might overwrite some files**):

```
$ bash setup-install.sh
```

I also made a version of this [script for wsl2](https://github.com/aguiarjv/Linux-Configs/blob/main/wsl2/setup-install-wsl2.sh). It doesn't contain the i3wm package and some graphical stuff.

### Basic Shortcuts and Commands

There are a few basic shortcuts and commands that you should know to have a better workflow. You can customize it as you please.<br />
I've made a few cheat sheets on the programs and shortcuts that I use:

* **[nvim](./vim-config/remaps-list.md)** - leader key: **space**
* **[tmux](./tmux/tmux-shortcuts.md)** - leader key: **ctrl-a**
* **[i3wm](./i3/i3-shortcuts.md)** - leader key: **super**
* **[Terminal](./dotfiles/terminal-shortcuts.md)**


### Automatically Mount Partitions
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


