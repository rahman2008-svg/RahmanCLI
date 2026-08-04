#!/data/data/com.termux/files/usr/bin/bash

BASE="$HOME/RahmanCLI"

ACTION="$1"
NAME="$2"

if [ -z "$ACTION" ]; then

echo "Usage:"
echo " rahman sdk create <name>"
echo " rahman sdk list"

exit 1

fi


case "$ACTION" in


create)

if [ -z "$NAME" ]; then

echo "Extension name required"

exit 1

fi


DIR="$BASE/extensions/$NAME"

mkdir -p "$DIR"


cat > "$DIR/extension.conf" <<EOF
name=$NAME
version=1.0
author=Rahman CLI Developer
EOF


cat > "$DIR/command.sh" <<EOF
#!/data/data/com.termux/files/usr/bin/bash

echo "Rahman Extension: $NAME"
echo ""
echo "$NAME extension running..."
EOF


cat > "$DIR/README.md" <<EOF
# $NAME Extension

Created with Rahman CLI SDK.
EOF


chmod +x "$DIR/command.sh"


echo "✔ Extension created: $NAME"


;;


list)

echo "================================"
echo " Rahman CLI Extensions"
echo "================================"


if [ -d "$BASE/extensions" ]; then

for ext in "$BASE/extensions"/*; do

[ -d "$ext" ] && echo "✔ $(basename "$ext")"

done

fi


;;


*)

echo "Unknown SDK command"

;;


esac
