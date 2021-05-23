# Vim Configuration File

This is my init.vim (now using nvim) file for general use.

Things to remember when using it:
* Rename it to .vimrc(\~) or init.vim(\~/.config/nvim/)
* Create a directory called undodir at ~/.vim/undodir
* It uses [vim plug](https://github.com/junegunn/vim-plug) as the plugin manager
* After setting up the file, run :PluginInstall at vim command mode
* Some programs are needed:
    ```
    sudo apt install ripgrep fzf nodejs zsh
    ```
* Also install [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)


The Vim Cheat Sheets directory has some .pdf files to help study VIM

.vimrc was inspired on [ThePrimeagen YouTube video](https://www.youtube.com/watch?v=n9k9scbTuvQ)

Also check [this video](https://www.youtube.com/watch?v=q7gr6s8skt0) on Search and Replace using :CocSearch and macros to change several lines in different files!

### Some plugins info

Check the plugins installed and check their **documentation** to setup properly.

For instance, with **CoC** it is possible to install **several extensions** to help coding. vim-dispatch also has features to be explored. ***Read the documentation!***

## Python

Some of the configurations are based on [fisadev vim config](https://github.com/fisadev/fisa-vim-config), check it!

Also, **:CocInstall coc-python** helps you with autocompletion in python. You may also need to install:
```
pip install jedi black pylint
```
**:CocConfig** opens the configuration.json file for CoC, it is also included in this repository.
