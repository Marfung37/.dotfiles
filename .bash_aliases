# some nice format commands 
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# for repo for dot files
PS1='[\u@\h \W]\$ '
alias config='/usr/bin/git --git-dir=/home/mar/.cfg/ --work-tree=/home/mar'

# shorthand for listing a directory
alias ll="ls -alh"

# shorthand for making directory and cding into into
mkcd () {
    mkdir -p -- "$1" && cd -P -- "$1"
}

# shorthand for cd to directory and ls
cdls () { cd "$@" && ls; }

# Sfinder commands
alias extendedPieces="python /home/mar/Document/PerfectClear/sfinderTools/ExtendedSfinderPieces/pieces.py"

# git download files
alias gits="bash /home/mar/.scripts/download_git.sh"

# autojump
[[ -s /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh

# g++ compile
g++17 () {
    g++ -std=c++17 -Wall -Wextra -pedantic -Weffc++ -fsanitize=address,undefined -o ${1%.*} "$1"
}

# download music from youtube
yt-music () {
    yt-dlp -f 'ba' -x --audio-format mp3 "$1" -o "$2"
}

# copy into clipboard
alias copy="xclip -selection clipboard"

# buffer overflow better print
py-print () {
    python -c "python -c 'import sys; sys.stdout.buffer.write($1)'"
}

# run javafx
alias javafxc="javac --module-path=$JAVAFX --add-modules=javafx.controls,javafx.fxml $1"
alias javafx="java --module-path=$JAVAFX --add-modules=javafx.controls,javafx.fxml $1"

# alias cp with rsync to see progress
cp_p()
{
   strace -q -ewrite cp -- "${1}" "${2}" 2>&1 \
      | awk '{
        count += $NF
            if (count % 10 == 0) {
               percent = count / total_size * 100
               printf "%3d%% [", percent
               for (i=0;i<=percent;i++)
                  printf "="
               printf ">"
               for (i=percent;i<100;i++)
                  printf " "
               printf "]\r"
            }
         }
         END { print "" }' total_size=$(stat -c '%s' "${1}") count=0
}


