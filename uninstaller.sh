#!/bin/bash

user=$(whoami)
bin_folder="/usr/local/bin/"
logo_folder="/usr/local/src/catfetch/"

if [ $user != "root" ]; then
	echo "Root permissions required"
	echo "(try run this with sudo)"
	exit
fi

echo "Uninstalling..."

sudo rm $bin_folder/catfetch
sudo rm -rf $logo_folder

echo "Uninstalled..."
