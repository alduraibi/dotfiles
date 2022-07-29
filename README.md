# dotfiles 🔧⚙️

## Overview
- **💻 Distro -** Arch Linux
- **🔳 Display Server -** Wayland *(+ xwayland)*

## CLI Utilities
- **🔆 [brightnessctl](brightnessctl/README.md) -** Control device brightness
- **🔊 [pamixer](pamixer/README.md) -** Control device volume
- **📁 [exa](exa/README.md) -** Modern `ls`
- **🔍 [fd](fd/README.md) -** Alternative to `find`
- **[atool](atool/README.md) -** Manage archives (zit, tar, etc.)
- **[tldr](tldr/README.md) -** Simplified man pages
- **[ansible](ansible/README.md) -** 
- **📄 [bat](bat/README.md) -** Alternative to `cat`
- **🔗 [stow](stow/README.md) -** Symlink manager for dotfiles
- **🔗 [tea](tea/README.md) -** CLI tool to manage gitea
- **✂️ [wl-clipboard](wl-clipboard/README.md) -** Clipboard

## Utilities
- **📟 [kitty](kitty/README.md) -** Terminal
- **🐚 [zsh](zsh/README.md) -** Shell
- **🔔 [mako](mako/README.md) -** Notification daemon
- **⌨️ [wvkbd](wvkbd/README.md) -** On-screen keyboard

## Display
- **🖥 [ly](ly/README.md) -** Display manager
- **🪟 [Sway](sway/README.md) -** Wayland compositor and tiling window manager
- **🔒 [swaylock](swaylock/README.md) -** Lock screen
- **➖ [waybar](waybar/README.md) -** Status bar

## Applications
- **🌐🦊 [Firefox](firefox/README.md) -** Internet browser
- **🇻ℹ️ [tridactyl](tridactyl/README.md) -** Vi-bindings for Firefox
- **🌐 [qutebrowser](qutebrowser/README.md) -** Internet browser with vim bindings
- **🗝️🔐 Bitwarden -** Password manager
- **🔄 Syncthing:** File sync

## TUI Applications
- **📝 [Neovim](neovim/README.md) -** Text editor based on vim
- **🗃 [ranger](ranger/README.md) -** TUI file explorer with vi bindings
- **🔳 [Tmux](tmux/README.md) -** Terminal multiplexer
- **🔎🚀 [wofi](wofi/README.md) -** application launcher

## Media Players
- **🎬🎞️ [mpv](mpv/README.md) -** video player
- **🖼️ [vimiv](vimiv/README.md) -** image viewer
- **📃 [zathura](zathura/README.md) -** PDF/ePub Viewer
- **🎵🎶 Spotify -** Spotify client
- **🎨 [Spicetify](spicetify/README.md) -** Spotify theming

## Communication
- **💬 Discord -** Discord client
- **🎨 [BetterDiscord](betterdiscord/README.md) -** Discord theming
- **💬 Element -** Matrix client
- **💬 Telegram -** Telegram client

- **💬 Signal -** Signal client
## Extra
- **🎨 [GTK](gtk/README.md) -** Config files for GTK 2.0 & GTK 3.0
- **🎨 [dir_colors](dir_colors/README.md) -** Theme for `ls` and `tree`
- **⚛️ [electron](electron/README.md) -** Config files for electron apps
## Fonts
- **😀 Twemoji -** Twitter emoji font
- **🔤 FiraGO -** Font
- **🔤 Fura Code -** Monospaced Fira Code font with Nerd Font patch
- **🔤 Amiri Typewriter -** Arabic Font (with monospaced version)

## Consider
- **🖼️ [imv](imv/README.md) -** image viewer
- **🖼️ [mvi](mvi/README.md) -** image viewer
- **🗓️ [calcurse](calcurse/README.md) -** TUI calendar
- **📝📋 [Taskwarrior](taskwarrior/README.md) -** TUI TODO list
- **📄 [LibreOffice](https://www.libreoffice.org/) -** Office suite
- **📄 [Calligra](https://www.libreoffice.org/) -** Office suite
- **[duf](https://github.com/muesli/duf) -** `df` alternative
- **[fzf](https://github.com/junegunn/fzf) -** CLI fuzzy finder
- **[undistract-me](https://github.com/jml/undistract-me) -** Notifies when slow terminal commands finish
- **[The Fuck](https://github.com/nvbn/thefuck) -** Corrects last console command
- **[Color LS](https://github.com/athityakumar/colorls) -** ls with colors and icons
- **[]() -** 

## Other
- **🪟 [river](river/README.md) -** Wayland compositor and tiling window manager
**qtile:** Windows Manager configured in python\
**⚙ Xresources:** Config files for Xresources

## stowd
Script to easily symlink configs using stow.
- Create folder for an app and include all its configs as they appear from your home directory (or root).
  - Will usually look like: `app_name/.config/app_name/config`- for root: `etc/app_name/config`
- Edit `stowd.yaml` to include configs to add or remove
- Run `python stowd.py`
  - Will get prompted for password for root configs
