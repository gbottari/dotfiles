#!/bin/sh

i3_file="$HOME/.i3/config.base"
theme_color="purple"
old_mtime=$(date -r $i3_file)

# Edit the base file.
vim $i3_file

new_mtime=$(date -r $i3_file)

if [ "$new_mtime" != "$old_mtime"  ]; then
	# The file was modified. Rerun j4-make-config and restart i3.
	j4-make-config $theme_color && i3-msg restart
fi


