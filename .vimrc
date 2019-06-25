filetype off

syntax on

set number
set relativenumber
set cursorline
set encoding=utf-8
set autoread
set laststatus=2
set nocompatible
set wildmenu

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

set runtimepath+=~/.vim-plugins/LanguageClient-neovim
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf

call vundle#begin()

Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'altercation/vim-colors-solarized'
Plugin 'arcticicestudio/nord-vim'
Plugin 'joshdick/onedark.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rakr/vim-one'
Plugin 'dracula/vim'
Plugin 'rhysd/vim-clang-format'
Plugin 'kana/vim-operator-user'
Plugin 'w0rp/ale'
Plugin 'junegunn/fzf.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-endwise'
Plugin 'zivyangll/git-blame.vim'
Plugin 'Yggdroot/indentLine'

call vundle#end()

filetype plugin indent on

"colorscheme onedark
"let g:Powerline_symbols = 'unicode'
let g:dracula_colorterm = 0
color dracula
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let g:ale_linters = {
\    'cpp': ['clang', 'clangcheck', 'cppcheck'],
\    'c': ['clang', 'clangcheck', 'cppcheck'],
\    'docker' : ['dockerfile_lint'],
\    'python': ['pylint', 'flake8'],
\    'java': ['checkstyle', 'javac'],
\    'rust': ['cargo'],
\    'ruby': ['ruby'],
\    'objc': ['clang']
\    }

let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_set_balloons = 1
let g:ale_set_highlights = 1
let g:airline#extensions#ale#enabled = 1 
let g:ale_echo_cursor = 1

let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠️ '

set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P 
set statusline+=%{FugitiveStatusline()}
set laststatus=2

nnoremap ]b :bnext<cr>
nnoremap [b :bprev<cr>

nnoremap ]t :tabn<cr>
nnoremap [t :tabp<cr>

"nnoremap <C-]> :bnext<cr>
"nnoremap <C-[> :bprev<cr>

map <C-n> :NERDTreeToggle<CR>
inoremap jj <Esc>

map <C-h> :ALEDetail<CR>
map <C-d> :<C-u>call gitblame#echo()<CR>
map <C-b> :Buffers<CR>
map <C-f> :Files<CR>
map <C-g> :GFiles<CR>
map <C-c> :ClangFormat<CR>

command! W w
command! Q q
command! WQ wq
command! Wq wq
