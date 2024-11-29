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
