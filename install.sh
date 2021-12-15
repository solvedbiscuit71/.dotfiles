#!/usr/bin/env zsh

# Clear the environment
./clear_env.sh

for folder in */ ;
do
    if [ -d $folder ]
    then
        echo "Linking $folder"
        stow -D $folder
        stow $folder
    fi
done
