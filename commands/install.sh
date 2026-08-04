#!/data/data/com.termux/files/usr/bin/bash


PACKAGE_DB="$HOME/RahmanCLI/packages/packages.conf"


NAME="$1"


if [ -z "$NAME" ]; then

echo "Usage:"
echo "rahman install <package>"

exit 1

fi



COMMAND=$(grep "^$NAME=" "$PACKAGE_DB" | cut -d '=' -f2-)



if [ -z "$COMMAND" ]; then

echo "Package not found in Rahman repository."

exit 1

fi



echo "================================"
echo "Rahman CLI Installer"
echo "Installing: $NAME"
echo "================================"


eval "$COMMAND"



echo "✔ Installation completed"
