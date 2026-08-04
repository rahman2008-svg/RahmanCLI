#!/data/data/com.termux/files/usr/bin/bash


BASE="$HOME/RahmanCLI"

CHANGELOG="$BASE/CHANGELOG.md"


case "$1" in


version)

VERSION="$2"


if [ -z "$VERSION" ]; then

echo "Usage:"
echo "rahman release version <version>"

exit 1

fi


sed -i "s/version=.*/version=$VERSION/" "$BASE/config/config.conf"


echo "✔ Version updated to $VERSION"


;;



changelog)


DATE=$(date "+%Y-%m-%d")


echo "# Release $DATE" >> "$CHANGELOG"

echo "" >> "$CHANGELOG"

echo "- New features added" >> "$CHANGELOG"

echo "- Bug fixes" >> "$CHANGELOG"


echo "✔ Changelog updated"


;;



status)


echo "================================"
echo "Rahman CLI Release Status"
echo "================================"


echo "Version:"
grep version "$BASE/config/config.conf"


echo ""

echo "Git Status:"

git status


echo "================================"


;;



*)

echo "Rahman CLI Release Manager"

echo ""

echo "Commands:"
echo " rahman release version <version>"
echo " rahman release changelog"
echo " rahman release status"


;;

esac
