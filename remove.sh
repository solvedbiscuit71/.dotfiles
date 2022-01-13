#!/usr/bin/env zsh

for folder in */; do
    if [ -d $folder ]; then
        echo "Removing $folder"
        stow -D $folder
    fi
done
