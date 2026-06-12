# ALIASES

# exit terminal
alias q="exit"
alias Q="exit"
alias q!="exit"
alias :q="exit"
alias :q!="exit"
alias wq="exit"
alias :wq="exit"
# znap (plugin manager)
alias PU="znap pull"
# neovim
hash nvim &> /dev/null && {
  alias vi="\nvim"
  alias nvim="NVIM_APPNAME=nvim-lazyvim nvim"
}
# paru/yay
hash paru &> /dev/null && {
  alias yay="paru"
}
# bat/cat
hash bat &> /dev/null && {
  alias cat="bat"
}
# dd
alias dd="dd status=progress"
# cp/mv/rm/ln
#alias cp="cp -iR"
#alias mv="mv -i"
#alias rm="rm -Ir"
alias rsync="rsync -ah --info=progress2"
# mkdir
alias mkdir="mkdir -p"
# ls & eza
hash eza &> /dev/null && {
  alias ls="eza --icons"
  alias la="eza -a --icons"
  alias ll="eza -l --icons --git"
  alias lla="eza -la --icons --git"
  alias tree="eza --tree --icons --git"
  # alias ls="eza"
  # alias la="eza -a"
  # alias ll="eza -l --git"
  # alias lla="eza -la --git"
  # alias tree="eza --tree --git"
} || {
  alias ls="ls --color=auto"
  alias la="ls -a --color=auto"
  alias ll="ls -hl --color=auto"
  alias lla="ls -hla --color=auto"
}
# grep
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
# diff
alias diff="diff --color=auto"
# ip
alias ip='ip -color=auto'
# cd ..
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
# python
alias py="python"
alias py-in="python -m install -e"
# pip
alias pip-in="pip install"
alias pip-un="pip uninstall"
alias pip-up="pip install --upgrade"
alias pip-outdated="pip list --outdated --format=freeze"
# arch pkgbuild
alias makepkg-install="makepkg -si"
alias makepkg-srcinfo="makepkg --printsrcinfo > .SRCINFO"
alias makepkg-checksums="updpkgsums"
# git
alias g="git"
# wl-clipboard
hash wl-copy &> /dev/null && {
  alias copy="wl-copy"
  alias paste="wl-paste"
}
# termux-clipboard
hash termux-clipboard-set &> /dev/null && {
  alias copy="termux-clipboard-set"
  alias paste="termux-clipboard-get"
}
# mount
alias mount="mount -o uid=1000,gid=1000"
