#!/bin/sh
file_name=$1
if [ -e ~/.vim/swp/*.swp ] 
then
        echo "Another file open in vim. Swapping cancelled!"
        sleep 3s
        printf '\033c'
        vim $file_name
else
        xmodmap -e "clear Lock"
        xmodmap -e "keycode 9 = Caps_Lock"
        xmodmap -e "keycode 66 = Escape"
        xmodmap -e "add Lock = Caps_Lock"
	vim $file_name
        if [ -e ~/.vim/swp/*.swp ]
        then
            sleep 1s
        else
            xmodmap -e "clear Lock"
            xmodmap -e "keycode 66 = Caps_Lock"
            xmodmap -e "keycode 9 = Escape"
            xmodmap -e "add Lock = Caps_Lock"

        fi
fi
