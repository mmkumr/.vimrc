#!/bin/sh
file_name=$1
ps -e | grep vim

if [ $? -eq 0 ] 
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
        ps -e | grep vim
        if [ $? -ne 0 ]
        then
            xmodmap -e "clear Lock"
            xmodmap -e "keycode 66 = Caps_Lock"
            xmodmap -e "keycode 9 = Escape"
            xmodmap -e "add Lock = Caps_Lock"

        fi
fi
