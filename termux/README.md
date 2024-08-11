# Termux

> An Android terminal emulator and Linux environment app that works directly with no rooting or setup required. A minimal base system is installed automatically - additional packages are available using the APT package manager.<sup>[1][desc]</sup>

**Links:** [Website] - [Source Code]

## Setup

My Termux setup:

- Install Packages
```sh
# Essentials
pkg install git python termux-api openssh

# Tools
pkg install atool bat duf exa fd fzf tmux
```

- Change shell to Zsh
```sh
pkg install zsh
chsh zsh
```

- Enable access to some Android folders
```sh
# https://wiki.termux.com/wiki/Internal_and_external_storage
termux-setup-storage

```

- Setup dotfiles
```sh
# Clone repo
git clone DOTFILE_REPO ~/.dotfiles
cd ~/.dotfiles

# create and activate venv
python -m venv venv
source venv/bin/activate

# install doti and dependencies
python -m pip install doti
pkg install stow

# run doti to setup dotfiles
doti
```

- Neovim
```sh
pkg install neovim
# Neovim Extras
#pkg install lua-language-server ripgrep stylua

# Pip Packages
#pip install trash-cli

# Npm Packages
#npm install -g neovim
```

[website]: https://termux.dev/
[desc]: https://termux.dev/
[source code]: https://github.com/termux/termux-app
