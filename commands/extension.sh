#!/data/data/com.termux/files/usr/bin/bash

BASE="$HOME/RahmanCLI"

ACTION="$1"
NAME="$2"


MARKET="$BASE/extensions-market/index.conf"


case "$ACTION" in


list)

echo "================================"
echo " Rahman CLI Extensions"
echo "================================"

if [ -d "$BASE/extensions" ]; then

for ext in "$BASE/extensions"/*; do

[ -d "$ext" ] && echo "✔ $(basename "$ext")"

done

else

echo "No extensions installed."

fi

;;



search)

if [ -z "$NAME" ]; then

echo "Usage:"
echo "rahman extension search <name>"
exit 1

fi


echo "Searching extension: $NAME"

grep "$NAME" "$MARKET"

;;



install)

if [ -z "$NAME" ]; then

echo "Extension name required"

exit 1

fi


URL=$(grep "^$NAME=" "$MARKET" | cut -d "=" -f2)


if [ -z "$URL" ]; then

echo "Extension not found."

exit 1

fi


mkdir -p "$BASE/extensions/$NAME"


cat > "$BASE/extensions/$NAME/command.sh" <<EOF
#!/data/data/com.termux/files/usr/bin/bash

echo "Rahman Extension: $NAME"
echo "Installed successfully"
EOF


chmod +x "$BASE/extensions/$NAME/command.sh"


echo "✔ Extension installed: $NAME"


;;



remove)

if [ -z "$NAME" ]; then

echo "Extension name required"

exit 1

fi


rm -rf "$BASE/extensions/$NAME"

echo "✔ Extension removed: $NAME"

;;



*)

echo "Usage:"
echo ""
echo " rahman extension list"
echo " rahman extension search <name>"
echo " rahman extension install <name>"
echo " rahman extension remove <name>"

;;


esac
