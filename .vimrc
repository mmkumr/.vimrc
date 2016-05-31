execute pathogen#infect()
call pathogen#helptags()
" for configuring tab spaces and deleted button action.
set backspace=indent,eol,start "In some cases delete buttom may not work in insert mode.
set smarttab
" 1 tab == 4 spaces
set tabstop=4
set softtabstop=3
set expandtab
" end for tab configuration.
syntax on
set ruler
set relativenumber
let g:system_copy#copy_command='xclip -sel clipboard' "for creating a shorcut for coping the text after installing the system-copy plugin
let g:system_copy#paste_command='xclip -sel clipboard -o' "for creating a shorcut for pasteing the text after installing the system-copy plugin. You must also install xclip in your system.
set number
colorscheme summerfruit256 "light colour scheme.
set showmatch
