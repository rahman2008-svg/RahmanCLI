#!/data/data/com.termux/files/usr/bin/bash

echo "========== Rahman CLI Info =========="

echo ""
echo "User       : $(whoami)"
echo "Home       : $HOME"

echo ""
echo "System     : $(uname -o)"
echo "Kernel     : $(uname -r)"
echo "Architecture: $(uname -m)"

echo ""
echo "Bash       : $(bash --version | head -1)"

echo ""
echo "Git        : $(git --version)"

echo ""
echo "Python     : $(python --version)"

echo ""
echo "Node       : $(node -v)"

echo ""
echo "NPM        : $(npm -v)"

echo ""
echo "Java       : $(java -version 2>&1 | head -1)"

echo ""
echo "===================================="
