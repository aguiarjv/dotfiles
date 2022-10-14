# Key Remaps
This file includes the key remaps made for my vim configuration file
* **leader = space**

## VIM

* **\<leader>y = "+y**      -> copy to clipboard
* **\<leader>Y = gg"+yG**   -> copy all file content  to clipboard
* **\<leader>P = "+p**      -> paste from the clipboard

* **J**  -> (vm) move line down on visual mode
* **K**  -> (vm) move line up on visual mode
* **\<leader>j**  -> move line up on normal mode

* **\<leader>d = "_d**       -> deletes and does not save into default register
* **\<leader>p = "_dP**      -> (vm) replaces currently selected text with default register without yanking it

* **\<leader>ptj** -> opens a terminal window on the bottom side
* **\<leader>ptl** -> opens a terminal window on the right side

* **\<leader>pv** -> opens a file tree as split window

* Change between split windows:
    - **\<leader>h**
    - **\<leader>j**
    - **\<leader>k**
    - **\<leader>l**


## CoC - Conquer of Completion

* **\<leader>prw** -> CocSearch on cursor word

* **\<leader>cr** -> :CocRestart

* GoTo code navigation
    - **\<leader>gd** -> coc-definition
    - **\<leader>gy** -> coc-type-definition
    - **\<leader>gi** -> coc-implementation
    - **\<leader>gr** -> coc-references
    - **\<leader>rr** -> coc-rename
    - **\<leader>g[** -> coc-diagnostic-prev
    - **\<leader>g]** -> coc-diagnostic-next
    - **\<leader>gp** -> coc-diagnostic-prev-error
    - **\<leader>gn** -> coc-diagnostic-next-error

## fzf

* **\<leader>pw** -> search pattern cursor word
* **\<leader>phw** -> search pattern cursor word
* **\<leader>ps** -> search pattern

* **CTRL-P** -> git files

* **\<leader>pf** -> open files

## Todo list (used after :Todo command)

* **\<leader>tf** -> check task
* **\<leader>tj** -> add task

## Fugitive

* **\<leader>gj** -> diff get
* **\<leader>gf** -> diff get
* **\<leader>gs** -> status

## Undo tree

* **\<leader>u** -> show undo tree



