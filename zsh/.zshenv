# .zshenv

export ZDOTDIR=${XDG_CONFIG_HOME:=~/.config}/zsh


if [ -e ${ZDOTDIR}/zshenv.d ]; then
  for file in ${ZDOTDIR}/zshenv.d/*.zsh; do source $file; done
fi
