# Setup Termux

## Install Packages

```
# Essentials
pkg install termux-api zsh openssh neovim

# Tools
pkg install atool bat duf exa fd fzf gh ncdu ranger stow tmux

# Package Managers / Build Tools
pkg install golang nodejs openjdk-17 php pip rust

# Neovim Extras
pkg install lua-language-server ripgrep stylua

# Pip Packages
pip install stowd trash-cli

# Npm Packages
npm install -g neovim
```

<!-- - w3m -->
<!--   - w3m-img -->

## Configure System

```
# Change shell to Zsh
chsh zsh


# Enable access to some Android folders
# https://wiki.termux.com/wiki/Internal_and_external_storage
termux-setup-storage


# Setup dotfiles
git clone DOTFILE_REPO ~/dotfiles
stowd
```
