"---
" Start Vundle

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'myusuf3/numbers.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'
Plugin 'othree/yajs.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tranvansang/vim-close-pair'
Plugin 'alvan/vim-closetag'

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
let blacklist = ['markdown']
autocmd BufWritePre * if index(blacklist, &ft) < 0 | :%s/\s\+$//e

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" Use system clipboard
" Active vim version needs to have +clipboard enabled
set clipboard=unnamed

" ESC after search clears highlights
nnoremap <esc> :noh<return><esc>

" Save swp files to /tmp instead of current location
set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//

" Easily move lines
nnoremap <S-j> :m .+1<CR>
nnoremap <S-k> :m .-2<CR>
vnoremap <S-j> :m '>+1<CR>gv
vnoremap <S-k> :m '<-2<CR>gv

" Toggle whitespace
nnoremap " :set list!<CR>

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
set foldmethod=indent
set nofoldenable    " open files unfolded

"---
" Filetype specifiy settings
"---

autocmd FileType text setlocal wrap linebreak
autocmd FileType markdown setlocal expandtab wrap linebreak
autocmd FileType gitcommit setlocal colorcolumn=72
" fix weird OSX crontab shizzl
" https://superuser.com/questions/359580/error-adding-cronjobs-in-mac-os-x-lion
autocmd FileType crontab setlocal nobackup nowritebackup

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

" Ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|dist'
