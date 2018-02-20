#!/bin/bash
# Usage:
# sudo chmod +x ./android_icon_creator.sh
# ./android_icon_creator.sh name_of_img.png
# :)

mkdir final_icon

mkdir final_icon/mipmap-anydpi-v26
rm final_icon/mipmap-anydpi-v26/$1
convert $1 -resize 36x36 final_icon/mipmap-anydpi-v26/$1

mkdir final_icon/mipmap-hdpi
rm final_icon/mipmap-hdpi/$1
convert $1 -resize 48x48 final_icon/mipmap-hdpi/$1

mkdir final_icon/mipmap-mdpi
rm final_icon/mipmap-mdpi/$1
convert $1 -resize 72x72 final_icon/mipmap-mdpi/$1

mkdir final_icon/mipmap-xhdpi
rm final_icon/mipmap-xhdpi/$1
convert $1 -resize 96x96 final_icon/mipmap-xhdpi/$1

mkdir final_icon/mipmap-xxhdpi
rm final_icon/mipmap-xxhdpi/$1
convert $1 -resize 144x144 final_icon/mipmap-xxhdpi/$1

mkdir final_icon/mipmap-xxxhdpi
rm final_icon/mipmap-xxxhdpi/$1
convert $1 -resize 192x192 final_icon/mipmap-xxxhdpi/$1

mkdir final_icon/PlayStore
rm final_icon/PlayStore/$1
convert $1 -resize 512x512 final_icon/PlayStore/$1
