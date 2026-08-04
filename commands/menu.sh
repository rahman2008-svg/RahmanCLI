#!/data/data/com.termux/files/usr/bin/bash

while true
do

echo "════════════════════════════"
echo "       Rahman CLI Menu"
echo "════════════════════════════"

echo "1. Create Project"
echo "2. Build Project"
echo "3. Run Project"
echo "4. Install Package"
echo "5. Plugin Manager"
echo "6. Configuration"
echo "7. Doctor"
echo "8. Backup"
echo "9. Exit"

echo ""
read -p "Select: " choice


case $choice in

1)
echo "Example:"
echo "rahman new flask MyAPI"
read -p "Command: " cmd
eval "rahman $cmd"
;;

2)
rahman build
;;

3)
rahman run
;;

4)
read -p "Package: " pkg
rahman install $pkg
;;

5)
rahman plugin
;;

6)
rahman config
;;

7)
rahman doctor
;;

8)
rahman backup
;;

9)
echo "Bye!"
exit 0
;;

*)
echo "Invalid option"
;;

esac

done
