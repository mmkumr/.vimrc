file_name=$1 
xmodmap -e "clear Lock"
xmodmap -e "keycode 9 = Caps_Lock"
xmodmap -e "keycode 66 = Escape"
xmodmap -e "add Lock = Caps_Lock"
vim $file_name
xmodmap -e "clear Lock"
xmodmap -e "keycode 66 = Caps_Lock"
xmodmap -e "keycode 9 = Escape"
xmodmap -e "add Lock = Caps_Lock"
