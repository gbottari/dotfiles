#!/bin/sh

declare -a files=("$HOME/.i3/config.base"
		  "/etc/i3status.conf"
		  "$HOME/.screenlayout"
		  "$HOME/.gitconfig"
		  "$HOME/.config/compton.conf"
		 )

for p in "${files[@]}"
do
	echo Backing up: $p
	cp -r --parents $p ../config_files/
done
