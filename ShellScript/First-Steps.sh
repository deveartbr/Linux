#!/bin/bash

sudo apt-get purge openjdk* -y
sudo add-apt-repository ppa:webupd8team/java -y
sudo add-apt-repository "deb http://archive.canonical.com/ precise partner" -y

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
sudo apt-get install  python-gpgme -y 
sudo apt-get install hardinfo -y 
sudo apt-get install docky -y 

sudo apt-get install gstreamer0.10-plugins-ugly libxine1-ffmpeg gxine mencoder libdvdread4 totem-mozilla icedax tagtool easytag id3tool lame nautilus-script-audio-convert libmad0 mpg321 libavcodec-extra -y 

sudo apt-get install rar  -y 
sudo apt-get install p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller -y 

sudo apt-get install pepperflashplugin-nonfree  && sudo update-pepperflashplugin-nonfree --install  


sudo apt-get update
sudo apt-get install acroread && sudo apt-get autoremove 
