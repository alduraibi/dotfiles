# ⚙️ dotfiles 🔧

My Arch and Termux configs

## Overview

- **💻 Distros:** Arch Linux and Android/Termux
- **💻 Window Manager:** Gnome
- **📝 Editor:** [Neovim](neovim)
- **🎨 Theme:** Adwaita _(with black background on termux)_

## CLI Utilities

- **🗃️ [doti](doti) -** Easily manage dotfiles
- **📄 [bat](bat) -** Alternative to `cat`
- **🌟 [glow](glow) -** Render markdown on the terminal
- **➗ [qalculate](qalculate) -** Calculator

<details>
  <summary>Also Installed</summary>

- **🔨 ansible -**
- **🗜 atool -** Manage archives (zit, tar, etc.)
- **📂 exa -** Modern `ls`
- **🔍 fd -** Alternative to `find`
- **#️⃣ gh -** CLI tool to manage github
- **📖 tldr -** Simplified man pages
- **✂️ wl-clipboard -** Clipboard
</details>
<details>
  <summary>Consider Installing</summary>

- **🗄️ [duf](https://github.com/muesli/duf) -** `df` alternative
- **🔎 [fzf](https://github.com/junegunn/fzf) -** CLI fuzzy finder
- **🤬 [The Fuck](https://github.com/nvbn/thefuck) -** Corrects last console command
- **🌳 [broot](https://github.com/Canop/broot) -** a usable `tree`
</details>

## Utilities

- **🐚 [zsh](zsh) -** Shell
- **➡️ [starship](starship) -** Shell prompt

## GUI Applications

- **🌐 [Firefox](firefox) -** Internet browser
- **🇻 [tridactyl](tridactyl) -** Vi-bindings for Firefox
<details>
  <summary>Also Installed</summary>

- **🔐 Bitwarden -** Password manager
- **🔄 Syncthing -** File sync
</details>

## TUI Applications

- **📝 [Neovim](neovim) -** Text editor based on vim
- **🗃 [ranger](ranger) -** TUI file explorer with vi bindings
- **🔳 [Tmux](tmux) -** Terminal multiplexer
- **🌐 [w3m](w3m) -** Terminal-based Internet browser

## Media Players

- **🎵🎶 Spotify -** Spotify client
  - **🎨 [Spicetify](spicetify) -** Spotify theming

## Productivity

- **📄 [LibreOffice](libreoffice) -** Office suite

<details>
  <summary>Consider Installing</summary>

- **📄 [Calligra](https://www.libreoffice.org/) -** Office suite
</details>

## Communication

- **💬 Discord -** Discord client
  - **🎨 [BetterDiscord](betterdiscord) -** Discord theming
- **💬 Element -** Matrix client
- **💬 Telegram -** Telegram client
- **💬 Signal -** Signal client

## Extra

- **🎨 [dircolors](dircolors) -** Theme for `ls` and `tree`
- **⚛️ [electron](electron) -** Config files for electron apps

## Games

- **🎮 [Heroic](https://heroicgameslauncher.com/) -** Open Source GOG and Epic games launcher

## Android

- **📱 [termux](termux) -** Terminal with a package manager that works on an android device
- **📱 [guiscrcpy](https://github.com/srevinsaju/guiscrcpy) -** Open Source GUI based Android Screen Mirroring System
</details>

## Fonts

- **😀 Twemoji -** Twitter emoji font
- **🔤 FiraGO -** Latin script font
- **🔤 Fura Code -** Latin script monospaced Fira Code font with Nerd Font patch
- **🔤 Amiri -** Arabic font
- **🔤 Amiri Typewriter -** Arabic monospaced font

## [doti](https://github.com/ghassan0/doti)

Program that manages your dotfiles by symlink-ing them into their respective directories.

- Install doti: `pip install doti` (or `yay -S doti` for Arch)
- Within your dotfiles directory, create a folder for an app and include all its configs as they appear from your home or root directory.
  - Will usually look like:
    - home: `app_name/.config/app_name/config`
    - root: `etc/app_name/config`
- Edit `doti.cfg` to include configs to add or remove
- Run `doti`
  - Will get prompted for password for root configs
