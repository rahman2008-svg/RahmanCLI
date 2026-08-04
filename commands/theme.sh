#!/data/data/com.termux/files/usr/bin/bash


CONFIG="$HOME/RahmanCLI/config/config.conf"


case "$1" in


dark|green|neon|default)

sed -i "s/^theme=.*/theme=$1/" "$CONFIG"

echo "✔ Theme changed to: $1"

;;


*)

echo "Usage:"
echo "rahman theme dark"
echo "rahman theme green"
echo "rahman theme neon"
echo "rahman theme default"

;;

esac
