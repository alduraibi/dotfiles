# .zshenv

export ZDOTDIR=${XDG_CONFIG_HOME:=~/.config}/zsh

# Load wayland env variables
[[ ! -f "${ZDOTDIR}/zshenv.d/wayland.zsh" ]] || source "${ZDOTDIR}/zshenv.d/wayland.zsh"
# Load xdg env variables
[[ ! -f "${ZDOTDIR}/zshenv.d/xdg.zsh" ]] || source "${ZDOTDIR}/zshenv.d/xdg.zsh"
