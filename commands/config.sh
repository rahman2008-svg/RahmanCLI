#!/data/data/com.termux/files/usr/bin/bash

CONFIG="$HOME/RahmanCLI/config/config.conf"


show_config(){

echo "================================"
echo "Rahman CLI Configuration"
echo "================================"

cat "$CONFIG"

echo "================================"

}


set_config(){

KEY="$1"
VALUE="$2"


if [ -z "$KEY" ] || [ -z "$VALUE" ]; then

echo "Usage:"
echo "rahman config set <key> <value>"

exit 1

fi


sed -i "s/^$KEY=.*/$KEY=$VALUE/" "$CONFIG"


echo "✔ Updated $KEY"

}



reset_config(){

cat > "$CONFIG" <<EOF
name=Rahman CLI
version=2.0.0
author=Abdur Rahman
theme=default
EOF


echo "✔ Config reset"

}



case "$1" in


get)

show_config

;;


set)

set_config "$2" "$3"

;;


reset)

reset_config

;;


*)

show_config

;;

esac
