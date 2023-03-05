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

if [ -e ${ZDOTDIR}/zshrc.d ]; then
  for file in ${ZDOTDIR}/zshrc.d/*.zsh; do source $file; done
fi

# start prompt
#eval "$(starship init zsh)"
