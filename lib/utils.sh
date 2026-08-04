#!/data/data/com.termux/files/usr/bin/bash

BASE="$HOME/RahmanCLI"

load_colors() {
    source "$BASE/lib/colors.sh"
}

success() {
    load_colors
    echo -e "${GREEN}✔ $1${NC}"
}

error() {
    load_colors
    echo -e "${RED}✖ $1${NC}"
}

info() {
    load_colors
    echo -e "${CYAN}➜ $1${NC}"
}

warn() {
    load_colors
    echo -e "${YELLOW}⚠ $1${NC}"
}
