#!/data/data/com.termux/files/usr/bin/bash

source "$HOME/RahmanCLI/lib/project.sh"

if ! project_exists; then
    echo "No rahman.json found."
    exit 1
fi

echo "================================"
echo "Rahman CLI Project"
echo "================================"
echo "Name    : $(project_name)"
echo "Type    : $(project_type)"
echo "Version : $(project_version)"
echo "Author  : $(project_author)"
echo "Build   : $(project_build)"
echo "Run     : $(project_run)"
echo "================================"
