#just to active the sudo passwd
sudo clear

cd /etc/NetworkManager/system-connections/

echo "Saved wifi list:"
echo ""
ls -l -a

echo ""
echo ""
echo "Type the wifi's name:"
read WIFI_NAME
sudo cat "$WIFI_NAME"

echo ""
echo "!!!Atention!!!"
echo "the passwors key will be as:"
echo "\"psk\"=\"PASSWORD\". "
