#!/bin/sh

declare -a files=("$HOME/.i3/config.base"
		  "$HOME/.i3status.conf"
		  "$HOME/.screenlayout"
		  "$HOME/.gitconfig"
		  "$HOME/.config/compton.conf"
		  "$HOME/.Xresources"
		  "$HOME/.yaourtrc"
		 )

rm -r ../config_files
mkdir ../config_files

for p in "${files[@]}"
do
	echo Backing up: $p
	cp -r --parents $p ../config_files/
done
