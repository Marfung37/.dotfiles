#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias config='/usr/bin/git --git-dir=/home/mar/.cfg/ --work-tree=/home/mar'

# Default editor
export EDITOR="/usr/bin/nvim"

# shorthand for listing a directory
alias ll="ls -al"

# Sfinder commands
alias sfinder="sh /home/mar/.scripts/sfinder.sh"
alias extendedPieces="python /home/mar/Documents/sfinderTools/ExtendedSfinderPieces/pieces.py"

# git download files
alias gits="bash /home/mar/.scripts/download_git.sh"

# autojump
[[ -s /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh

# g++ compile
alias g++17="g++ -std=c++17 -Wall -Wextra -pedantic -Weffc++ -fsanitize=address,undefined"
