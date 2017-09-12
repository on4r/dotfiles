"---
" Start Vundle

set nocompatible
filetype off

set rtp+=~/dotfiles/vim/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'myusuf3/numbers.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'

call vundle#end()
filetype plugin indent on

" End Vundle
"---

" Enable syntax highlighting
syntax on

" Color scheme
let g:gruvbox_contrast_dark="hard"
let g:gruvbox_contrast_light="hard"
set background=dark
colorscheme gruvbox

" Leader key
let mapleader=","

" set default colors
set term=screen-256color

" Enable Colored Column
set colorcolumn=120

" Different for gitcommit
autocmd Filetype gitcommit set colorcolumn=72

" Enable line numbering
set number

" Keep info in memory to speed things up
set hidden
set history=100

" The time in milliseconds that is waited for a key code or mapped key sequence to complete.
set ttimeoutlen=10

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

"---
" General
"---

set tabstop=4
set shiftwidth=4
"set expandtab       " convert tabs to spaces
set autoindent
set hlsearch        " highlight search
set ignorecase      " case insensistive search
set incsearch       " show search matches while typing
set nowrap          " don't wrap lines
set showmatch       " show matching parenthesis
set smartcase       " if search contains uppercase letter it gets case sensitive
set smartindent
set title           " display buffer title on topbar
set visualbell      " don't beep
set noerrorbells    " don't beep

"---
" Plugin Configurations
"---

" NERDTree
nmap <leader>. :NERDTreeToggle<CR>
nmap <leader>- :NERDTreeFind<CR>
let NERDTreeShowHidden=1
let NERDTreeMapActivateNode='<right>'
let NERDTreeIgnore=['\.DS_STORE', '\~$', '\.swp']

" Lightline
set laststatus=2

" Numbers
" nothing here yet
