set nocompatible              " be iMproved, required
filetype off                  " required
"plug installation manager.
call plug#begin('~/.vim/plugged')
Plug 'agude/vim-eldar'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'https://github.com/vim-syntastic/syntastic.git'
Plug 'lifepillar/vim-solarized8'
call plug#end()
syntax enable             " Turn on syntax highlighting
"nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"For toogle nerdtree with ctrl + n
map <C-n> :NERDTreeToggle<CR>
"End nerdtree
set backspace=indent,eol,start
filetype plugin indent on
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab
syntax on
set ruler
set relativenumber
set number
set showmatch
set autoindent
set wildmode=longest:full,full
colorscheme solarized8_dark
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
map <C-h> <c-w>h
map <C-j> <c-w>j
map <C-k> <c-w>k
map <C-l> <c-w>l
set directory=$HOME/.vim/swp//
hi Normal ctermbg=none
