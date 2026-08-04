#!/data/data/com.termux/files/usr/bin/bash

PLUGIN_DIR="$HOME/RahmanCLI/plugins"


case "$1" in


list)

echo "================================"
echo "Rahman CLI Plugins"
echo "================================"

COUNT=0

for plugin in "$PLUGIN_DIR"/*.sh
do

    if [ -f "$plugin" ]; then

        basename "$plugin" .sh
        COUNT=$((COUNT+1))

    fi

done


echo "--------------------------------"
echo "Total Plugins: $COUNT"
echo "================================"

;;


create)


NAME="$2"


if [ -z "$NAME" ]; then

echo "Usage:"
echo "rahman plugin create <name>"

exit 1

fi



FILE="$PLUGIN_DIR/$NAME.sh"



if [ -f "$FILE" ]; then

echo "Plugin already exists."

exit 1

fi



cat > "$FILE" <<EOF
#!/data/data/com.termux/files/usr/bin/bash

echo "Rahman Plugin: $NAME"
echo "Plugin executed successfully."

EOF



chmod +x "$FILE"


echo "✔ Plugin created: $NAME"


;;



remove)


NAME="$2"


if [ -z "$NAME" ]; then

echo "Usage:"
echo "rahman plugin remove <name>"

exit 1

fi



rm -f "$PLUGIN_DIR/$NAME.sh"


echo "✔ Plugin removed: $NAME"


;;


*)


echo "Rahman CLI Plugin Manager"

echo ""

echo "Usage:"
echo " rahman plugin list"
echo " rahman plugin create <name>"
echo " rahman plugin remove <name>"


;;

esac
