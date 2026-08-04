#!/data/data/com.termux/files/usr/bin/bash


BASE="$HOME/RahmanCLI"


echo "================================"
echo " Rahman CLI Doctor"
echo "================================"


check()
{

NAME="$1"

CMD="$2"


if command -v "$CMD" >/dev/null 2>&1

then

echo "✔ $NAME installed"

else

echo "✘ $NAME missing"

fi

}



check "Git" git

check "Python" python

check "Node" node

check "NPM" npm

check "Java" java

check "Gradle" gradle

check "Kotlin" kotlinc

check "Rust" rustc

check "Go" go



echo ""

echo "Project Environment"

echo "--------------------------------"


if [ -d "$BASE/templates" ]

then

echo "✔ Templates available"

else

echo "✘ Templates missing"

fi



if [ -d "$BASE/plugins" ]

then

echo "✔ Plugins available"

else

echo "✘ Plugins missing"

fi



if [ -f "$BASE/config/config.conf" ]

then

echo "✔ Config OK"

else

echo "✘ Config missing"

fi



if [ -d "$BASE/logs" ]

then

echo "✔ Logs enabled"

else

echo "✘ Logs missing"

fi



if [ -d "$BASE/backup" ]

then

echo "✔ Backup system ready"

else

echo "✘ Backup unavailable"

fi



echo ""

echo "Storage"

echo "--------------------------------"


df -h "$HOME"



echo ""

echo "================================"
echo " Doctor Complete"
echo "================================"
