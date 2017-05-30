#!/bin/bash
##############################################
###                                        ###
###   @Author: Antonio Braz - "Tota Braz"  ###
###   @Lincense: MIT                       ###
###   @Website: www.deveartbr.com          ###
###   @e-mail: deveartbr@gmail.com         ###
###                                        ###
##############################################
# --------------------------------------------
#
# Para fazer uso deste script é necessário de:
#
#   > Distro Linux baseada em Debian;
#   > E ter instalado o FontForge (Link abaixo)
#     http://fontforge.github.io/en-US/
#
#     !!! Podendo ser instalado via repositório !!!
#     sudo add-apt-repository ppa:fontforge/fontforge;
#     sudo apt-get update;
#     sudo apt-get install fontforge;
#
# --------------------------------------------

rm binFontOrganizer/conversor.pe
mkdir binFontOrganizer
touch binFontOrganizer/conversor.pe
sudo chmod +x binFontOrganizer/conversor.pe
{
echo 'Open($1)'
echo 'Generate($1:r + ".eot")'
echo 'Generate($1:r + ".woff")'
echo 'Generate($1:r + ".svg")'
} > binFontOrganizer/conversor.pe

echo  "Convertendo arquivos.."
echo  "E criando diretorios.."

if [ -f *-BoldItalic.ttf ] ;
  then
  for f in *-BoldItalic.ttf;
    do
      fontforge -script binFontOrganizer/conversor.pe $f
      mkdir BoldItalic
      mv *-BoldItalic.* BoldItalic/ ;
  done;
  echo "Arquivos BoldItalic criados";
  else echo "Nenhum arquivo *BoldItalic-ttf encontrado" ;
fi;

if [ -f *-Bold.ttf ] ;
  then
    for f in *-Bold.ttf;
      do
        fontforge -script binFontOrganizer/conversor.pe $f
        mkdir Bold
        mv *-Bold.* Bold/ ;
    done;
     echo "Arquivos Bold criados";
  else echo "Nenhum arquivo *Bold-ttf encontrado" ;
fi;

if [ -f *-Italic.ttf ] ;
  then
    for f in *-Italic.ttf;
      do
        fontforge -script binFontOrganizer/conversor.pe $f
        mkdir Italic
        mv *-Italic.* Italic/ ;
    done;
     echo "Arquivos Italic criados";
  else echo "Nenhum arquivo *Italic-ttf encontrado" ;
fi;

if [ -f *-LightItalic.ttf ] ;
  then
    for f in *-LightItalic.ttf;
      do
        fontforge -script binFontOrganizer/conversor.pe $f
        mkdir LightItalic
        mv *-LightItalic.* LightItalic/ ;
    done;
     echo "Arquivos LightItalic criados";
  else echo "Nenhum arquivo *LightItalic-ttf encontrado" ;
fi;

if [ -f *-Light.ttf ] ;
  then
    for f in *-Light.ttf;
      do
        fontforge -script binFontOrganizer/conversor.pe $f
        mkdir Light
        mv *-Light.* Light/ ;
    done;
     echo "Arquivos Light criados";
  else echo "Nenhum arquivo *Light-ttf encontrado" ;
fi;

if [ -f *-Regular.ttf ] ;
  then
    for f in *-Regular.ttf;
      do
        fontforge -script binFontOrganizer/conversor.pe $f
        mkdir Regular
        mv *-Regular.* Regular/ ;
    done;
     echo "Arquivos Regular criados";
  else echo "Nenhum arquivo *Regular-ttf encontrado" ;
fi;

rm -r binFontOrganizer;

echo "Remove todos os .afm criados"
find . -name "*.afm" -type f -delete

