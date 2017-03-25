#!/bin/sh

# Open menu with Super key
read -p "Would you like to open the menu just with SuperKey (windows key)?" yn
select yn in "Y" "n"; do
    case $yn in
        [Yy]* ) gsettings set org.gnome.mutter overlay-key "'Super_L'";gsettings set org.pantheon.desktop.gala.behavior overlay-action "'wingpanel --toggle-indicator=app-launcher'";;
        [Nn]* ) exit;;
    esac

EOF
