#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Load aliases
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

# Run autojump
[[ -s /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh

# Default editor
export EDITOR="/usr/bin/nvim"
export VISUAL="/usr/bin/nvim"

# Change bash prompt
source ~/.local/bin/git-prompt.sh
PS1='[\u@\h \W]$(__git_ps1 " (%s)")\$ '

# sage root
export SAGE_ROOT=/home/mar/.local/src/sage

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"

# nvm
source /usr/share/nvm/init-nvm.sh

cd () {
  if builtin cd "$@"; then
    export gr=$(git rev-parse --show-toplevel 2>/dev/null || echo "")
  fi
}

# pnpm
export PNPM_HOME="/home/mar/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
