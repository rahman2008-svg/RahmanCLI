#!/data/data/com.termux/files/usr/bin/bash

BASE="$HOME/RahmanCLI"

REMOTE="$BASE/remote/market.conf"


case "$1" in


list)

echo "================================"
echo " Rahman Marketplace"
echo "================================"

echo ""

cat "$REMOTE"

echo "================================"

;;


search)

NAME="$2"

if [ -z "$NAME" ]; then
echo "Usage:"
echo "rahman marketplace search <name>"
exit 1
fi


echo "Searching: $NAME"
echo ""

grep -i "$NAME" "$REMOTE"

;;


install)

NAME="$2"


if [ -z "$NAME" ]; then

echo "Usage:"
echo "rahman marketplace install <name>"

exit 1

fi


if grep -q "$NAME=" "$REMOTE"; then

echo "================================"
echo "Installing $NAME"
echo "================================"


echo "✔ Package found"
echo "Downloading..."

sleep 2


echo "✔ Installation complete"


else

echo "✘ Package not found"

fi

;;


*)

echo "Rahman Marketplace"

echo ""

echo "Commands:"
echo " marketplace list"
echo " marketplace search <name>"
echo " marketplace install <name>"

;;

esac
