#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# set PATH so it includes user's private ~/.local/bin if it exists
if [ -d "/home/mar/.local/bin" ] ; then
    PATH="$PATH:/home/mar/.local/bin"
fi

if [ -d "/home/mar/.local/share/gem/ruby/3.0.0/bin" ] ; then
    PATH="$PATH:/home/mar/.local/share/gem/ruby/3.0.0/bin"
fi

# set PATH to use the python and pip in ~/.config/python-pkgs
if [ -d "/home/mar/.virtualenv/debugpy/bin" ] ; then
    PATH="/home/mar/.virtualenv/debugpy/bin:$PATH"
fi


# enable fcitx (IMF) for different langs
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

# enable screen share on xorg
export XDG_SESSION_TYPE=X11

# Java home
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
export JAVAFX=/usr/lib/jvm/java-17-openjdk/lib/javafx.base.jar:/usr/lib/jvm/java-17-openjdk/lib/javafx.controls.jar:/usr/lib/jvm/java-17-openjdk/lib/javafx.fxml.jar:/usr/lib/jvm/java-17-openjdk/lib/javafx.graphics.jar:/usr/lib/jvm/java-17-openjdk/lib/javafx.media.jar:/usr/lib/jvm/java-17-openjdk/lib/javafx.swing.jar:/usr/lib/jvm/java-17-openjdk/lib/javafx-swt.jar:/usr/lib/jvm/java-17-openjdk/lib/javafx.web.jar

# sfinder path
export SFINDER=/home/mar/Documents/sfinderTools/solution-finder/sfinder.jar
