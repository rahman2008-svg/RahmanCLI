#!/data/data/com.termux/files/usr/bin/bash

BASE="$HOME/RahmanCLI"

echo ""
echo "════════════════════════════════════════"
echo "          🚀 Rahman CLI v2.9"
echo "════════════════════════════════════════"
echo ""


echo "GENERAL"
echo " help                    Show help"
echo " version                 Show version"
echo " about                   About Rahman CLI"
echo " doctor                  Check system"
echo " info                    System information"
echo " menu                    Interactive menu"
echo " check-update            Check CLI updates"
echo " security                Security scanner"
echo ""


echo "PROJECT"
echo " new                     Create project"
echo " build                   Build project"
echo " run                     Run project"
echo " clean                   Clean files"
echo " detect                  Detect project"
echo " test                    Run tests"
echo " docs                    Generate documentation"
echo ""


echo "PACKAGE"
echo " install                 Install package"
echo " uninstall               Remove package"
echo " pkg                     Termux package manager"
echo ""


echo "PLUGIN"
echo " plugin                  Manage plugins"
echo ""


echo "EXTENSION SDK"
echo " sdk                     Extension SDK manager"
echo " sdk create <name>       Create extension"
echo " sdk list                List SDK extensions"
echo ""


echo "EXTENSION MARKETPLACE"
echo " extension               Manage extensions"
echo " extension list          Installed extensions"
echo " extension search <name> Search extensions"
echo " extension install <name> Install extension"
echo " extension remove <name> Remove extension"
echo ""


echo "MARKETPLACE"
echo " marketplace             Manage marketplace"
echo " marketplace list        Show packages"
echo " marketplace search <name>"
echo " marketplace install <name>"
echo ""


echo "CONFIG"
echo " config                  Manage settings"
echo " theme                   Change CLI theme"
echo ""


echo "RELEASE"
echo " release                 Version manager"
echo ""


echo "BACKUP"
echo " backup                  Create backup"
echo " restore                 Restore backup"
echo " log                     View logs"
echo " log-clear               Clear logs"
echo ""


echo "UPDATE"
echo " update                  Update Rahman CLI"
echo " check-update            Check new version"
echo ""


echo "ALIAS"
echo " i   → install"
echo " n   → new"
echo " b   → build"
echo " r   → run"
echo ""


echo "GIT"
echo " git init"
echo " git clone <url>"
echo " git status"
echo ""


echo "TEMPLATES"

if [ -d "$BASE/templates" ]; then

for item in "$BASE/templates"/*; do

    if [ -d "$item" ]; then
        echo " ✔ $(basename "$item")"
    fi

done

fi

echo ""


echo "PLUGINS"

if [ -d "$BASE/plugins" ]; then

for item in "$BASE/plugins"/*.sh; do

    if [ -f "$item" ]; then
        echo " ✔ $(basename "$item" .sh)"
    fi

done

fi

echo ""


echo "EXTENSIONS"

if [ -d "$BASE/extensions" ]; then

COUNT=0

for item in "$BASE/extensions"/*; do

    if [ -d "$item" ]; then
        echo " ✔ $(basename "$item")"
        COUNT=$((COUNT+1))
    fi

done

if [ "$COUNT" -eq 0 ]; then
    echo " No extensions installed."
fi

else

echo " No extensions installed."

fi


echo ""


echo "REMOTE MARKETPLACE"

if [ -f "$BASE/remote/market.conf" ]; then

cat "$BASE/remote/market.conf"

else

echo "No remote marketplace found."

fi


echo ""


echo "════════════════════════════════════════"
echo "Usage:"
echo " rahman <command>"
echo ""

echo "Examples:"
echo " rahman new flask BlogAPI"
echo " rahman build"
echo " rahman run"
echo " rahman sdk create weather"
echo " rahman extension install weather"
echo " rahman marketplace search flask"
echo " rahman security"

echo "════════════════════════════════════════"
