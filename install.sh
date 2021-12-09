#!/usr/bin/env zsh

# Clear the environment
./clear_env.sh

for folder in */ ;
do
    echo "Linking $folder"
    stow -D $folder
    stow $folder
done
