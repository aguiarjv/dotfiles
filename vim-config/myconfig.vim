syntax on

"\-----------------------------------------------------------------------/
"|                             General                                   |
"|                          Configuration                                |
"/-----------------------------------------------------------------------\

set guicursor=
set noshowmatch
set noerrorbells   " will not beep on an error message
set hidden
set signcolumn=yes

set showcmd        " show commands pressed on lower right of screen
set ruler          " show line and collumn
set nohlsearch     " not highlight search
set incsearch      " when searching show where the pattern is matched while typing
set relativenumber " set relative line numbers
set number         " set line numbers
set nowrap         " will not wrap lines

set noswapfile     " will not create swap files
set nobackup
set undodir=~/.vim/undodir   " folder where undofile will be saved into. Has to be created manually!!
set undofile       " save changes into the file

" TABS AND IDENTATION!
set expandtab      " enter spaces when tab is pressed
set textwidth=120  " break lines when line length increases
set tabstop=4      " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4   " number of spaces to use for auto indent

set autoindent     " copy indent from current line when starting new line
set smartindent

set noshowmode
set termguicolors

" Give more space for displaying messages.
"set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c


set statusline^=%{coc#status()}

" set colorcolumn=80         " sets a collumn in the middle of the file
" highlight ColorColumn ctermbg=0 guibg=lightgrey


"\-----------------------------------------------------------------------/
"|                              Plugins                                  |
"|                           Configuration                               |
"/-----------------------------------------------------------------------\

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'       " Fuzzy finder. Find files

Plug 'sheerun/vim-polyglot' " Pack of languages for vim

Plug 'tpope/vim-fugitive'   " Git on vim
Plug 'tpope/vim-dispatch'   " Leverage the power of Vim's compiler plugins without being bound by synchronicity
Plug 'tpope/vim-surround'   " It's used to surround words. e.g: Hello -> (Hello)

"Plug 'mattn/emmet-vim'      " Generate html

Plug 'vim-utils/vim-man'    " View man pages on vim
Plug 'mbbill/undotree'      " See undo tree
Plug 'vuciv/vim-bujo'       " To do lists
Plug 'jremmen/vim-ripgrep'

" Command :MarkdownPreview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}          " Markdown Preview Plugin

" Auto close plugins options
"Plug 'alvan/vim-closetag'  "Close (X)HTML tags
Plug 'jiangmiao/auto-pairs'


" Colorscheme configs
Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'phanviet/vim-monokai-pro'
Plug 'vim-airline/vim-airline'

call plug#end()
"run :PlugInstall


"\-----------------------------------------------------------------------/
"|                            ColorScheme                                |
"|                           Configuration                               |
"/-----------------------------------------------------------------------\

let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'

colorscheme gruvbox
set background=dark


"\-----------------------------------------------------------------------/
"|                            Key Mapping                                |
"|                           Configuration                               |
"|                                                                       |
"|   nnoremap = use on normal mode                                       |
"|   vnoremap = use on visual mode                                       |
"/-----------------------------------------------------------------------\

inoremap <C-c> <esc>

" Binding increment to Ctrl-S
nnoremap <C-s> <C-a>

" Unbinding Ctrl-A so we can use it as tmux prefix key
map <C-a> <Nop>
map g<C-a> <Nop>

let g:coc_disable_startup_warning = 1   " coc warning message

if executable('rg')
    let g:rg_derive_root='true'   " so ripgrep can search from root instead of just file's path
endif

let loaded_matchparen = 1
let mapleader = " "   " set leader to <space>

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

" Changes the fzf window to appear in the middle of the screen
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

" ------------------- VIM REMAPS -----------------------------------

" Copy and paste
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

nnoremap <leader>P "+p
vnoremap <leader>P "+p

" Moving lines up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Deletes and does not save into default register
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" Replaces currently selected text with default register
" without yanking it
vnoremap <leader>p "_dP

" Opens a terminal window on the bottom side
" i to use the terminal. type 'exit' to exit terminal
" <Ctrl+\> <Ctrl+n> to exit insert mode in terminal
nnoremap <leader>ptj :new term://zsh<bar> :wincmd J<bar> :resize 10<CR>
nnoremap <leader>ptl :new term://zsh<bar> :wincmd L<bar> :vertical resize 50<CR>

" Change between split windows
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Open file tree as split and resizes it
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


" ------------------- CoC REMAPS -----------------------------------

" CocSearch on cursor word
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>

" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nnoremap <leader>cr :CocRestart

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


" ------------------- fzf REMAPS -----------------------------------

" Fuzzy Finder search pattern cursor word
nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>phw :h <C-R>=expand("<cword>")<CR><CR>

" Fuzzy Finder search pattern
nnoremap <Leader>ps :Rg<SPACE>

" Fuzzy Finder CTRL-P Git Files
nnoremap <C-p> :GFiles<CR>

" Fuzzy Finder open files
nnoremap <Leader>pf :Files<CR>

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" Open undo-tree
nnoremap <leader>u :UndotreeShow<CR>

" vim TODO
" these commands work after the :Todo command
nmap <Leader>tf <Plug>BujoChecknormal
nmap <Leader>tj <Plug>BujoAddnormal
let g:bujo#todo_file_path = $HOME . "/.cache/bujo"

" Sweet Sweet FuGITive
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gs :G<CR>

" -----------COMPLETION COMMANDS --------------
" Mapping the coc completion plugin to Tab
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" Next = Tab   Previous = S-Tab
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" To make <cr> select the first completion item and confirm the completion when no item has been selected
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" Mapping the completion plugin into C-space
"inoremap <silent><expr> <C-space> coc#refresh()
"-------------------------------------------------------------

command! -nargs=0 Prettier :CocCommand prettier.formatFile

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

autocmd BufWritePre * :call TrimWhitespace()


