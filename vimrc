set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim' 
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'msanders/snipmate.vim'
let g:nerdtree_tabs_open_on_console_startup=1

filetype plugin indent on     " required

set t_Co=256
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set number        " Show line numbers
set splitbelow    " When you split horizontaly, create the split below
set splitright    " When you split verticaly, create the split on the right
set hlsearch      " Highlight all matches
set incsearch     " Search pattern is match as you type

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Go specific plugins
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

colorscheme TomorrowNight
