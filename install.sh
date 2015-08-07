#!/bin/bash

dir="home"

cd "$dir"
for file in $(ls); do
	backupfile="$HOME/.${file}-backup"
	if [ ! -e "$backupfile" ]; then
		echo mv "$HOME/.$file" "$backupfile"
	fi
	echo cp "$file" "$HOME/.$file"
done

cd
echo source .profile
