#!/data/data/com.termux/files/usr/bin/bash

echo "================================"
echo " Installing Rahman CLI "
echo "================================"


INSTALL_DIR="$HOME/RahmanCLI"


if [ -d "$INSTALL_DIR" ]; then

echo "Rahman CLI already exists."

else

echo "Downloading Rahman CLI..."

git clone https://github.com/rahman2008-svg/RahmanCLI.git "$INSTALL_DIR"

fi


mkdir -p "$HOME/bin"


cp "$INSTALL_DIR/rahman" "$HOME/bin/rahman"


chmod +x "$HOME/bin/rahman"


if ! grep -q "$HOME/bin" ~/.bashrc
then

echo 'export PATH=$HOME/bin:$PATH' >> ~/.bashrc

fi


source ~/.bashrc


echo ""
echo "✔ Rahman CLI Installed"
echo ""

rahman version
