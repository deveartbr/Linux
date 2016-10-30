#!/bin/sh
#This script was made by TotaBraz (Antonio Braz)
#Just to help someone to install more Dropbox accounts in the same User on Linux
TESTE=0
while [ "$TESTE" != "1" ]
do
	clear 
	echo "/////////////////////////////////////////////////////////"
	echo "// Bem-vindo ao script do mestre tota para preguiçosos //"
	echo "///////// Instalando outra instância do dropbox /////////"
	echo "/////////////////////////////////////////////////////////"
    echo
    echo "Informe o nome de seu dropbox secundário:"
    echo ">>*O que vira depois do dropbox-" 
    read NAME
    DROPBOX="dropbox-$NAME"
    echo
    echo "Nome da pasta será: $DROPBOX"
    echo "isto esta correto? Sim <1> | Não <0>"
    read TESTE
done

echo "Você ja instalou o nautilus-dropbox? Sim <1> | Não <0>"
read TESTE
if [ $TESTE != "1" ]
then
	sudo apt-get update
	sudo apt-get install nautilus-dropbox
else 	
	echo
fi

echo "Criando diretório home do $DROPBOX"
mkdir "$HOME"/.$DROPBOX

echo "Configurando diretório home do $DROPBOX"
HOME="$HOME/.$DROPBOX"

echo "startando nova instância do dropbox"
/usr/bin/dropbox start -i

echo "Criando atalho do diretório na pasta /Home/Dropbox-$NAME"
ln -s ~/.dropbox-$NAME/Dropbox ~/Dropbox-$NAME


# REMEMBER !!! 
# To start the main Dropbox
# $ /usr/bin/dropbox start -i
# To start the others: 
# For each instance installed
# $ HOME="$HOME/.dropbox-THE_NAME_YOU_CHOSE" && /usr/bin/dropbox start -i
