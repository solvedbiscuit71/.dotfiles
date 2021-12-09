#!/usr/bin/env zsh
# Add the path to config files

backup=~/.dotfiles_backup/
Dir=(
    ~/.config/nvim \
    ~/.config/kitty \
    ~/bg.png \
    ~/.zshrc
)

# Checking for backup dir
if [ ! -d $backup ]
then
    mkdir $backup
    echo "Creating:$backup" >> $backup/dotfiles.log
fi

# Moving dir & files
for i in ${Dir[@]}; do
    if [ -d $i ]
    then
        echo "Moving $i to $backup${i:t:r}" >> $backup/dotfiles.log
        mv $i $backup${i:t:r}
    elif [ -f $i ]
    then
        echo "Moving $i to $backup${i:t}" >> $backup/dotfiles.log
        mv $i $backup${i:t}
    fi
done
