# .zprofile

if [ -e ${ZDOTDIR}/zprofile.d ]; then
  for file in ${ZDOTDIR}/zprofile.d/*.zsh; do source $file; done
fi
