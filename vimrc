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
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter' " shows git diff in file
Plugin 'bling/vim-airline'      " neat footer
Plugin 'tpope/vim-fugitive'     " git functions
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mileszs/ack.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'thoughtbot/vim-rspec'
Plugin 'fatih/vim-go'
Plugin 'tomlion/vim-solidity'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'leafgarland/typescript-vim'

" Automatically open nerdtree
" let g:nerdtree_tabs_open_on_console_startup=1
"
let mapleader = ","

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

" Custom mappings
map - :NERDTreeToggle<CR>

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Remove leading spaces before writing buffer
autocmd BufWritePre * :%s/\s\+$//e

filetype plugin indent on
syntax on

" FileType specific configurations
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
autocmd FileType java set expandtab shiftwidth=4 softtabstop=4
autocmd FileType php set expandtab shiftwidth=4 softtabstop=4

colorscheme TomorrowNight
filetype on

autocmd BufWritePost,FileWritePost *.go execute 'GoLint' | cwindow
let g:go_fmt_command = "goimports"
let g:go_list_type = "quickfix"
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck', 'gocyclo', 'deadcode', 'gosimple', 'staticcheck']
let g:go_metalinter_autosave_enabled = ['vet', 'golint', 'errcheck', 'gocyclo', 'deadcode', 'gosimple', 'staticcheck']
let g:go_metalinter_autosave = 1
let g:go_metalinter_deadline = "40s"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:indentLine_color_term = 239
let g:indent_guides_auto_colors = 0

" Font size for gui vim
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 9
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h12
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif
