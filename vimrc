set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'msanders/snipmate.vim'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter' " shows git diff in file
Plugin 'bling/vim-airline'      " neat footer
Plugin 'tpope/vim-fugitive'     " git functions
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mileszs/ack.vim'
Plugin 'kchmck/vim-coffee-script'

" Automatically open nerdtree
let g:nerdtree_tabs_open_on_console_startup=1

" Use ack-grep instead of ack
let g:ackprg = "ack -H --nocolor --nogroup --column"

call vundle#end()
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

" Exit from INSERT mode with jj
imap jj <Esc>

" Remove leading spaces before writing buffer
autocmd BufWritePre * :%s/\s\+$//e

" Go specific plugins
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

" FileType specific configurations
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

colorscheme TomorrowNight
filetype on
