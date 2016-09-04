set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'christoomey/vim-system-copy'
call vundle#end()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
execute pathogen#infect()
call pathogen#helptags()
let g:system_copy#copy_command='xclip -sel clipboard'
let g:system_copy#paste_command='xclip -sel clipboard -o'
set backspace=indent,eol,start
set expandtab
set smarttab
" 1 tab == 4 spaces
set tabstop=4
set softtabstop=3
set expandtab
syntax on
set ruler
set relativenumber
set number
set showmatch
set autoindent
set wildmode=longest:full,full
set background=light
colorscheme PaperColor
"ignore up down right left keys in insert mode.
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Right> <NOP>
inoremap <Left> <NOP>
"ignore up down right left keys in normal mode.
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Right> <NOP>
noremap <Left> <NOP>
nnoremap j gj
nnoremap k gk
