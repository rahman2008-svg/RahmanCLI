#!/data/data/com.termux/files/usr/bin/bash


BASE="$HOME/RahmanCLI"

DOCS="$BASE/docs"


mkdir -p "$DOCS"


echo "================================"
echo " Rahman CLI Documentation"
echo "================================"


# Commands Documentation

cat > "$DOCS/commands.md" << EOF
# Rahman CLI Commands

Generated automatically.

## General

- help
- version
- about
- doctor
- info

## Project

- new
- build
- run
- clean
- detect
- test

## Package

- install
- uninstall
- pkg

## Plugin

- plugin

## Config

- config

## Release

- release
EOF



# Plugin Documentation

cat > "$DOCS/plugins.md" << EOF
# Rahman CLI Plugins

Installed Plugins:

EOF


for plugin in "$BASE/plugins"/*.sh
do

if [ -f "$plugin" ]
then

basename "$plugin" .sh >> "$DOCS/plugins.md"

fi

done



# Template Documentation

cat > "$DOCS/templates.md" << EOF
# Rahman CLI Templates

Available Templates:

EOF


for template in "$BASE/templates"/*
do

if [ -d "$template" ]
then

basename "$template" >> "$DOCS/templates.md"

fi

done



# Alias Documentation

cat > "$DOCS/aliases.md" << EOF
# Rahman CLI Aliases


EOF


cat "$BASE/config/aliases.conf" >> "$DOCS/aliases.md"



echo ""
echo "✔ Documentation Generated"
echo ""

echo "Location:"
echo "$DOCS"

echo "================================"
