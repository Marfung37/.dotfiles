#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# set PATH so it includes user's private ~/.local/bin if it exists
if [ -d "/home/mar/.local/bin" ] ; then
    PATH="$PATH:/home/mar/.local/bin"
fi
