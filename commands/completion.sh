#!/data/data/com.termux/files/usr/bin/bash

BASE="$HOME/RahmanCLI"

mkdir -p "$HOME/.termux"

SOURCE="$BASE/completion/rahman-completion.bash"

if [ -f "$SOURCE" ]; then

echo "source $SOURCE" >> "$HOME/.bashrc"

echo "================================"
echo "Rahman CLI Completion"
echo "================================"
echo "✔ Auto completion enabled"
echo ""
echo "Restart Termux"
echo "================================"

else

echo "Completion file not found."

fi
