#!/data/data/com.termux/files/usr/bin/bash

BASE="$HOME/RahmanCLI"

echo ""
echo "════════════════════════════════════════"
echo "          🚀 Rahman CLI v3.0"
echo "════════════════════════════════════════"
echo ""

echo "GENERAL"
echo " help              Show help"
echo " version           Show version"
echo " about             About Rahman CLI"
echo " doctor            Check system"
echo " info              System information"
echo " menu              Interactive menu"
echo " completion        Enable command autocomplete"
echo " check-update      Check CLI updates"
echo " security          Security scanner"
echo ""

echo "PROJECT"
echo " new               Create project"
echo " build             Build project"
echo " run               Run project"
echo " clean             Clean files"
echo " detect            Detect project"
echo " test              Run tests"
echo " docs              Generate documentation"
echo ""

echo "WORKFLOW"
echo " workflow          Manage workflows"
echo " workflow list     List workflows"
echo " workflow run      Run workflow"
echo ""

echo "PACKAGE"
echo " install           Install package"
echo " uninstall         Remove package"
echo " pkg               Termux package manager"
echo ""

echo "PLUGIN"
echo " plugin            Manage plugins"
echo " plugin list       List plugins"
echo " plugin create     Create plugin"
echo " plugin remove     Remove plugin"
echo ""

echo "EXTENSION SDK"
echo " sdk               Extension manager"
echo " sdk create <name> Create extension"
echo " sdk list          List extensions"
echo " sdk remove <name> Remove extension"
echo ""

echo "MARKETPLACE"
echo " marketplace       Manage marketplace"
echo " marketplace list  Show packages"
echo " marketplace search <name>"
echo " marketplace install <name>"
echo ""

echo "CONFIG"
echo " config            Manage settings"
echo " theme             Change CLI theme"
echo ""

echo "RELEASE"
echo " release           Version manager"
echo " release version   Update version"
echo " release changelog Generate changelog"
echo ""

echo "BACKUP"
echo " backup            Create backup"
echo " restore           Restore backup"
echo " log               View logs"
echo " log-clear         Clear logs"
echo ""

echo "UPDATE"
echo " update            Update Rahman CLI"
echo " check-update      Check new version"
echo ""

echo "SECURITY"
echo " security          Scan Rahman CLI"
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
        [ -d "$item" ] && echo " ✔ $(basename "$item")"
    done
fi

echo ""

echo "PLUGINS"

if [ -d "$BASE/plugins" ]; then
    for item in "$BASE/plugins"/*.sh; do
        [ -f "$item" ] && echo " ✔ $(basename "$item" .sh)"
    done
fi

echo ""

echo "EXTENSIONS"

if [ -d "$BASE/extensions" ]; then
    for item in "$BASE/extensions"/*; do
        [ -d "$item" ] && echo " ✔ $(basename "$item")"
    done
fi

echo ""

echo "WORKFLOWS"

if [ -d "$BASE/workflows" ]; then
    for item in "$BASE/workflows"/*; do
        [ -f "$item" ] && echo " ✔ $(basename "$item")"
    done
fi

echo ""

echo "REMOTE MARKETPLACE"

if [ -f "$BASE/remote/market.conf" ]; then
    cat "$BASE/remote/market.conf"
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
echo " rahman workflow run test"
echo " rahman sdk create weather"
echo " rahman marketplace search flask"
echo " rahman security"
echo " rahman check-update"
echo "════════════════════════════════════════"
