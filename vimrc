set nocompatible              " be iMproved, required
filetype off                  " required
call plug#begin('~/.vim/plugged')
Plug 'agude/vim-eldar'
Plug 'https://github.com/scrooloose/nerdtree.git'
call plug#end()
if has('syntax')
        syntax enable             " Turn on syntax highlighting
        silent! colorscheme eldar " Custom color scheme
endif

"nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>
"End nerdtree
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
colorscheme eldar
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
set directory=$HOME/.vim/swp//
