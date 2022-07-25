# Lines configured by zsh-newuser-install
HISTFILE="$XDG_DATA_HOME"/zsh/histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' max-errors 2
zstyle :compinstall filename '/home/ghassan/.config/zsh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

if [ -e $XDG_CONFIG_HOME/zsh/.alias ]; then
  source $XDG_CONFIG_HOME/zsh/.alias
fi
if [ -e $XDG_CONFIG_HOME/zsh/.functions ]; then
  source $XDG_CONFIG_HOME/zsh/.functions
fi

# To place .dir_colors in config directory instead of directly in the home folder
if [ -e $XDG_CONFIG_HOME/dir_colors/.dir_colors ]; then
	eval $(dircolors $XDG_CONFIG_HOME/dir_colors/.dir_colors)
fi

# Set gsettings
if [ -e $XDG_CONFIG_HOME/gtk-3.0/gsettings.sh ]; then
	eval $($XDG_CONFIG_HOME/gtk-3.0/gsettings.sh)
fi
