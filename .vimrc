filetype off

set number
set cursorline
set encoding=utf-8
set autoread
set laststatus=2
set nocompatible
set wildmenu


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Lokaltog/vim-powerline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'arcticicestudio/nord-vim'
Plugin 'joshdick/onedark.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

filetype plugin indent on

"let g:Powerline_symbols = 'unicode'
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1

syntax on

colorscheme onedark

nnoremap ]b :bnext<cr>
nnoremap [b :bprev<cr>

map <C-n> :NERDTreeToggle<CR>
inoremap jj <Esc>

set wrap
set linebreak
set breakindent
set breakat&vim
set textwidth=80
set nolist

set softtabstop=0
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
set cindent
set autoindent

set hlsearch
set incsearch
set ignorecase
set smartcase

