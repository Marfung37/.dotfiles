#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias config='/usr/bin/git --git-dir=/home/mar/.cfg/ --work-tree=/home/mar'

# Additional locations for PATH
export PATH=$PATH:$HOME/.local/bin

# Default editor
explort EDITOR="/usr/bin/nvim"
