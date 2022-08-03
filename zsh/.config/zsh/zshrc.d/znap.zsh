# znap.zsh

## Download Znap, if it's not there yet.
#[[ -f $XDG_DATA_HOME/zsh/znap/zsh-snap/znap.zsh ]] ||
#    git clone --depth 1 -- \
#        https://github.com/marlonrichert/zsh-snap.git $XDG_DATA_HOME/zsh/znap/zsh-snap
#
#source $XDG_DATA_HOME/zsh/znap/zsh-snap/znap.zsh  # Start Znap

# Download Znap, if it's not there yet.
[[ -f $XDG_DATA_HOME/zsh-snap/plugins/zsh-snap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git $XDG_DATA_HOME/zsh-snap/plugins/zsh-snap

source $XDG_DATA_HOME/zsh-snap/plugins/zsh-snap/znap.zsh  # Start Znap

# `znap prompt` makes your prompt visible in just 15-40ms!
znap prompt sindresorhus/pure

#znap source omkatv/zsh-defer
#znap source wfxr/forgit

znap source zsh-users/zsh-autosuggestions

znap source zsh-users/zsh-syntax-highlighting
