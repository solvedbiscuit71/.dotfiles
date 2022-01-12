# Importing oh-my-zsh
export ZSH="/Users/praveenperumal/.oh-my-zsh"

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
# Aliases
# -------------

# ls alternate
alias l="exa -la"

# VimWiki
alias wiki="vim ~/Documents/.vimwiki/index.md"

# Git Aliases
alias gs="git status"
alias gc="git commit"
alias gl="git log --oneline --graph"
alias gp="git push"
alias gu="git restore ."

# Deleting all .out & .out.dSYM files created by clang++
alias rmOut="find ./ -name '*.out' -delete | find ./ -name '*.out.dSYM' -exec rm -R {} \;"
