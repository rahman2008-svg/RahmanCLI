#!/data/data/com.termux/files/usr/bin/bash

source "$HOME/RahmanCLI/lib/logger.sh"

BASE="$HOME/RahmanCLI"
TEMPLATES="$BASE/templates"

TYPE="$1"
NAME="$2"


if [ -z "$TYPE" ] || [ -z "$NAME" ]; then

    echo "================================"
    echo "Rahman CLI - New Project"
    echo "================================"

    echo "Usage:"
    echo "  rahman new <template> <project-name>"
    echo ""

    echo "Examples:"
    echo "  rahman new bash hello"
    echo "  rahman new python bot"
    echo "  rahman new node website"
    echo "  rahman new android MyApp"
    echo "  rahman new flask BlogAPI"
    echo "  rahman new fastapi Backend"
    echo "  rahman new express Server"
    echo "  rahman new react Portfolio"

    echo "================================"

    exit 1
fi


TEMPLATE_DIR="$TEMPLATES/$TYPE"


if [ ! -d "$TEMPLATE_DIR" ]; then

    echo "Template '$TYPE' not found."
    echo ""

    echo "Available templates:"

    for dir in "$TEMPLATES"/*; do
        [ -d "$dir" ] && basename "$dir"
    done

    exit 1
fi



if [ -e "$NAME" ]; then

    echo "Project '$NAME' already exists."

    exit 1
fi



mkdir -p "$NAME"


cp -r "$TEMPLATE_DIR"/. "$NAME"/



echo "================================"
echo "Rahman CLI"
echo "================================"

echo "✔ Project created successfully"
echo "Template : $TYPE"
echo "Project  : $NAME"
echo "Location : $(pwd)/$NAME"

echo "================================"



# Save log
log "new $TYPE $NAME"
