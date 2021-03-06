# Importing oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# Theme
export TERM="xterm-256color"
ZSH_THEME="dracula"

# Uncomment the following line to disable colors in ls.
ENABLE_LS_COLORS="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# ---------
# Plugins
# ---------

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf "$@" --preview 'tree -C {} | head -200' ;;
    *)            fzf "$@" ;;
  esac
}

bindkey '^y' autosuggest-accept

# --------------------
# User configuration
# --------------------

# Encoding
export LANG=en_US.UTF-8

# Editor
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# -------------
# Export PATH
# -------------
path+=(
    "$HOME/.script"
    "/opt/homebrew/bin"
)

# -------------
# Aliases
# -------------

# ls alternate
alias l="exa -al -s=type --icons --no-user"

# VimWiki
alias wiki="nvim ~/Documents/.vimwiki/index.md"

# Git Aliases
alias gs="git status"
alias gc="git commit"
alias gl="git log --oneline --graph"
alias gp="git push"
alias gu="git restore"

# Deleting all .out & .out.dSYM files created by clang++
alias rmOut="fd --hidden --no-ignore -e out -x rm && fd -e dSYM -x rm -R"

# -------------
# Bookmarks
# -------------

alias bd="cd ~/.dotfiles"
alias bc="cd ~/Code"
