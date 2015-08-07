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

echo "changes will not occur until the following command is run, or bash is restarted"
echo "source ~/.profile"
