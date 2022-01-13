#! /bin/zsh
# Add the path to config files

backup="$HOME/.dotfiles_backup/"
Dir=(
    "$HOME/.config/nvim" 
    "$HOME/.config/kitty" 
    "$HOME/.cache/alacritty" 
    "$HOME/bg.png" 
    "$HOME/.zshrc" 
    "$HOME/.vimrc"
    "$HOME/.tmux.conf"
)

# Checking for backup dir
if [ ! -e $backup ]; then
    mkdir $backup
fi

# Moving dir & files
for i in $Dir; do
    if [ -d $i ]; then
        mv $i $backup${i:t:r}
    elif [ -f $i ]; then
        mv $i $backup${i:t}
    fi
done
