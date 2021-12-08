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

plugins=(git)
source $ZSH/oh-my-zsh.sh

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf "$@" --preview 'tree -C {} | head -200' ;;
    *)            fzf "$@" ;;
  esac
}

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

# Neovim Aliases
alias vim="nvim"

# Vim Wiki
alias wiki="vim ~/Documents/.vimwiki/index.wiki"

# Git Aliases
alias gs="git status"
alias gc="git commit"
alias gl="git log --oneline --graph"
alias gp="git push"
alias gu="git restore ."

# Deleting all .out & .out.dSYM files created by clang++
alias da="find ./ -name '*.out' -delete | find ./ -name '*.out.dSYM' -exec rm -R {} \;"

# Alias to edit dotfiles
alias rc="vim ~/.zshrc"
