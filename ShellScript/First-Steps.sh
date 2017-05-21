#!/bin/bash

cd 
mkdir bin
cd bin

# 1. Add the Spotify repository signing key to be able to verify downloaded packages
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
# 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get purge openjdk* -y
sudo add-apt-repository ppa:webupd8team/java -y
sudo add-apt-repository "deb http://archive.canonical.com/ precise partner" -y
sudo add-apt-repository ppa:webupd8team/sublime-text-3
#themes
sudo add-apt-repository ppa:noobslab/themes
sudo add-apt-repository ppa:noobslab/icons

sudo apt-get update

sudo apt-get install oracle-java8-installer -y
sudo apt-get install oracle-java8-set-default -y
sudo apt-get install SMPlayer -y 
sudo apt-get install Synaptic  -y 
sudo apt-get install Winetricks  -y 
sudo apt-get install Wine Gecko  -y 
sudo apt-get install p7zip-full  -y 
sudo apt-get install Gufw  -y 
sudo apt-get install Cheese -y 
sudo apt-get install dropbox -y 
sudo apt-get install Skype -y 
sudo apt-get install ttf-mscorefonts- installer  -y 
sudo apt-get install HardInfo  -y 
sudo apt-get install steam-launcher -y 
sudo apt-get install python-gpgme -y 
sudo apt-get install hardinfo -y 
sudo apt-get install spotify-client -y 
sudo apt-get install gnome-tweak-tool  -y 
sudo apt-get  install gcolor2  -y 
sudo apt-get install sublime-text -y 
sudo apt-get install wine -y 
sudo apt-get install playonlinux -y 
sudo apt-get install arc-icons -y 
sudo apt-get install arc-theme -y 


# installing libs
sudo apt-get install libxss1 libappindicator1 libindicator7
sudo apt-get install gstreamer0.10-plugins-ugly libxine1-ffmpeg gxine mencoder libdvdread4 totem-mozilla icedax tagtool easytag id3tool lame nautilus-script-audio-convert libmad0 mpg321 libavcodec-extra -y 
#installing google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb

 mdm gnome-shell gnome-shell-extensions gnome-tweak-tool gnome-contacts gnome-control-center 


sudo apt-get install rar  -y 
sudo apt-get install p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller -y 

sudo apt-get install pepperflashplugin-nonfree  && sudo update-pepperflashplugin-nonfree --install  


sudo apt-get update
sudo apt-get install acroread && sudo apt-get autoremove 

rm -R ../bin
