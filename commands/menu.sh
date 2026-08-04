#!/data/data/com.termux/files/usr/bin/bash

while true
do

clear

echo "════════════════════════════════"
echo "        🚀 Rahman CLI v3.1"
echo "════════════════════════════════"
echo ""

echo "1. Create Project"
echo "2. Build Project"
echo "3. Run Project"
echo "4. Detect Project"
echo "5. Install Package"
echo "6. Manage Plugins"
echo "7. SDK Extensions"
echo "8. Marketplace"
echo "9. Doctor"
echo "10. Security Scan"
echo "11. Backup"
echo "12. Configuration"
echo "0. Exit"

echo ""
read -p "Select Option: " CHOICE


case $CHOICE in

1)
bash "$HOME/RahmanCLI/commands/new.sh"
;;

2)
bash "$HOME/RahmanCLI/commands/build.sh"
;;

3)
bash "$HOME/RahmanCLI/commands/run.sh"
;;

4)
bash "$HOME/RahmanCLI/commands/detect.sh"
;;

5)
bash "$HOME/RahmanCLI/commands/install.sh"
;;

6)
bash "$HOME/RahmanCLI/commands/plugin.sh"
;;

7)
bash "$HOME/RahmanCLI/commands/sdk.sh"
;;

8)
bash "$HOME/RahmanCLI/commands/marketplace.sh"
;;

9)
bash "$HOME/RahmanCLI/commands/doctor.sh"
;;

10)
bash "$HOME/RahmanCLI/commands/security.sh"
;;

11)
bash "$HOME/RahmanCLI/commands/backup.sh"
;;

12)
bash "$HOME/RahmanCLI/commands/config.sh"
;;

0)
echo "Goodbye!"
exit 0
;;

*)
echo "Invalid option"
;;

esac


echo ""
read -p "Press Enter to continue..."

done
