# FUNCTIONS

# Copy package description to clipboard
getdesc () {
  paru -Si "$@" | grep Description | cut -d":" -f2- | tr -d "\n" | wl-copy
}
# Copy first line of package optional deps to clipboard
getoptl () {
  paru -Si "$@" | grep Optional\ Deps | cut -d":" -f2- | tr -d "\n" | wl-copy
}

