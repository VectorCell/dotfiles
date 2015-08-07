#!/bin/bash

dir="home"

cd "$dir"
for file in $(ls); do
	backupfile="$HOME/.${file}-backup"
	if [ ! -e "$backupfile" ]; then
		mv "$HOME/.$file" "$backupfile"
	fi
	cp "$file" "$HOME/.$file"
done

cd
source .profile
