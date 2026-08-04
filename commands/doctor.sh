#!/data/data/com.termux/files/usr/bin/bash

BASE="$HOME/RahmanCLI"
source "$BASE/lib/utils.sh"

check() {
    if command -v "$1" >/dev/null 2>&1; then
        success "$1 installed"
    else
        error "$1 not found"
    fi
}

echo "=== Rahman CLI Doctor ==="

check git
check python
check node
check npm
check java
check bash
