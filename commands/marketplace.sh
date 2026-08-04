#!/data/data/com.termux/files/usr/bin/bash


BASE="$HOME/RahmanCLI"

MARKET="$BASE/marketplace/index.conf"


case "$1" in


list)

echo "================================"
echo " Rahman Marketplace"
echo "================================"

echo ""

echo "Templates:"
grep -A10 "\[TEMPLATES\]" "$MARKET" | tail -n +2

echo ""

echo "Plugins:"
grep -A10 "\[PLUGINS\]" "$MARKET" | tail -n +2

echo "================================"

;;


install)

NAME="$2"


if [ -z "$NAME" ]; then
echo "Usage:"
echo "rahman marketplace install <name>"
exit 1
fi


echo "Installing marketplace item: $NAME"


if grep -q "$NAME=" "$MARKET"; then

echo "✔ $NAME found in marketplace"

else

echo "✘ Package not found"

fi

;;


*)

echo "Usage:"
echo ""
echo "rahman marketplace list"
echo "rahman marketplace install <name>"

;;

esac
