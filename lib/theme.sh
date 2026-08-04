#!/data/data/com.termux/files/usr/bin/bash

CONFIG="$HOME/RahmanCLI/config/config.conf"


get_theme(){

THEME=$(grep "^theme=" "$CONFIG" | cut -d '=' -f2)

echo "$THEME"

}



color(){

THEME=$(get_theme)


case "$THEME" in


dark)

echo -e "\033[1;37m"

;;


green)

echo -e "\033[1;32m"

;;


neon)

echo -e "\033[1;36m"

;;


*)

echo -e "\033[0m"

;;

esac

}



reset_color(){

echo -e "\033[0m"

}
