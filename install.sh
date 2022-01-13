#! /bin/zsh

# Clear the environment
pre_run="${0:h}/clear_env.sh"
zsh $pre_run

# Linking the folder
for folder in */; do
    if [ -d $folder ]; then
        echo "Linking $folder"
        stow -D $folder
        stow $folder
    fi
done
