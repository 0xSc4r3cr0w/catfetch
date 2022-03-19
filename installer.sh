#!/bin/bash

user=$(whoami)
bin_folder="/usr/local/bin/"
logo_folder="/usr/local/src/catfetch/"

if [ $user != "root" ]; then
	echo "Root permissions required"
	echo "(try run this with sudo)"
	exit
fi

echo "Installing..."

cd ./source
sudo cp catfetch $bin_folder && sudo chmod +x $bin_folder/catfetch
sudo mkdir $logo_folder && sudo cp logo $logo_folder && sudo chmod +r $logo_folder/logo

echo "Installed..."
echo "Make sure that the folder /usr/local/bin/ is in the system PATH."
