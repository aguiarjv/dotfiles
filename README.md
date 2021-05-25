# Linux-Configs

Here I'll be saving and updating my current linux setup files and info.

### What do I use (main workflow)?

* font: Roboto Mono Medium 12

* neovim

* tmux

* zsh and [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)

* i3 wm

* To have everything running as it should, install: ripgrep, fzf, nodejs and check the other folders in this repo.

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

To have write access to 'ntfs' file system you should install the **'ntfs-3g' package. <br />

To grant all users access to '/dev/sdb1', which will be located at '/media/victor/backup', and is of type 'ntfs' the line would be:

```
/dev/sdb1 /media/victor/backup ntfs-3g rw,auto,user,fmask=0111,dmask=0000 0 0
```


