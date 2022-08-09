# ⚙️ dotfiles 🔧
My laptop configs

## Overview
- **💻 Distro:** Arch Linux
- **🎨 Theme:** Nord
- **🔳 Display Server:** Wayland *(+ xwayland)*

## CLI Utilities
- **🔆 [brightnessctl](brightnessctl)  -** Control device brightness
- **🔊 [pamixer](pamixer)  -** Control device volume
- **✂️ [wl-clipboard](wl-clipboard)  -** Clipboard
<details>
  <summary>Also Installed</summary>

- **📂 exa ![][osi] -** Modern `ls`
- **🔍 fd  -** Alternative to `find`
- **🗜 atool  -** Manage archives (zit, tar, etc.)
- **📖 tldr  -** Simplified man pages
- **🔨 ansible  -** 
- **📄 bat  -** Alternative to `cat`
- **🔗 stow  -** Symlink manager for dotfiles
- **#️⃣ tea  -** CLI tool to manage gitea
- **#️⃣ gh  -** CLI tool to manage github
</detais>
<details>
  <summary>Consider Installing</summary>

- **🗄️ [duf](https://github.com/muesli/duf) -** `df` alternative
- **🔎 [fzf](https://github.com/junegunn/fzf) -** CLI fuzzy finder
- **🔔 [undistract-me](https://github.com/jml/undistract-me) -** Notifies when slow terminal commands finish
- **🤬 [The Fuck](https://github.com/nvbn/thefuck) -** Corrects last console command
- **📂 [Color LS](https://github.com/athityakumar/colorls) -** `ls` with colors and icons
- **📂 [lsd](https://github.com/Peltoche/lsd) -** next gen `ls`
</details>

## Utilities
- **📟 [kitty](kitty) -** Terminal
- **🐚 [zsh](zsh) -** Shell
- **🔔 [mako](mako) -** Notification daemon
- **⌨️ [wvkbd](wvkbd) -** On-screen keyboard

## Display
- **🖥 [ly](ly) -** Display manage 
- **🪟 [Sway](sway) -** Wayland compositor and tiling window manager 
- **🔒 [swaylock](swaylock) -** Lock screen 
- **➖ [waybar](waybar) -** Status bar 
<details>
  <summary>Consider Installing</summary>

- **swayidle -** 
</details>
<details>
  <summary>Old</summary>

- **🪟 [river](river) -** Wayland compositor and tiling window manager
- **qtile -** Windows Manager configured in python\
- **⚙ Xresources -** Config files for Xresources
</details>

## Applications
- **🌐 [Firefox](firefox) -** Internet browser 
- **🇻 [tridactyl](tridactyl) -** Vi-bindings for Firefox 
- **🌐 [qutebrowser](qutebrowser) -** Internet browser with vim bindings 
<details>
  <summary>Also Installed</summary>

- **🔐 Bitwarden -** Password manager 
- **🔄 Syncthing -** File sync 
</details>

## TUI Applications
- **📝 [Neovim](neovim) -** Text editor based on vim 
- **🗃 [ranger](ranger) -** TUI file explorer with vi bindings 
- **🔳 [Tmux](tmux) -** Terminal multiplexer 
- **🚀 [wofi](wofi) -** application launcher 

## Media Players
- **🎬🎞️ [mpv](mpv) -** video player 
- **🖼️ [vimiv](vimiv) -** image viewer 
- **📃 [zathura](zathura) -** PDF/ePub Viewer 
- **🎨 [Spicetify](spicetify) -** Spotify theming 
<details>
  <summary>Also Installed</summary>

- **🎵🎶 Spotify -** Spotify client
</details>
<details>
  <summary>Consider Installing</summary>

- **🖼️ [imv](imv) -** image viewer
- **🖼️ [mvi](mvi) -** image viewer
- **🔤 [OSD Lyrics](https://github.com/osdlyrics/osdlyrics) -** Show synced lyrics with your favorite media player on Linux
</details>

## Productivity
<details>
  <summary>Consider Installing</summary>

- **🗓️ [calcurse](calcurse) -** TUI calendar
- **📝📋 [Taskwarrior](taskwarrior) -** TUI TODO list
- **📄 [LibreOffice](https://www.libreoffice.org/) -** Office suite
- **📄 [Calligra](https://www.libreoffice.org/) -** Office suite
</details>

## Communication
- **🎨 [BetterDiscord](betterdiscord) -** Discord theming 
<details>
  <summary>Also Installed</summary>

- **💬 Discord -** Discord client
- **💬 Element -** Matrix client 
- **💬 Telegram -** Telegram client 
- **💬 Signal -** Signal client 
</details>

## Extra
- **🎨 [GTK](gtk) -** Config files for GTK 2.0 & GTK 3.0 
- **🎨 [dir_colors](dir_colors) -** Theme for `ls` and `tree` 
- **⚛️ [electron](electron) -** Config files for electron apps 

## Games
<details>
  <summary>Consider Installing</summary>

- **🎮 [0 A.D.](https://play0ad.com/) -** A free, open-source, historical Real Time Strategy (RTS) game 
- **🎮 [FreeCiv](https://www.freeciv.org/) -** A Free and Open Source empire-building strategy game inspired by the history of human civilization
- **🎮 [Heroic](https://heroicgameslauncher.com/) -** Open Source GOG and Epic games launcher
</details>

## Android
<details>
  <summary>Also Installed</summary>

- **📱 KDE Connect -** Connect to Android phone and other devices
</details>
<details>
  <summary>Consider Installing</summary>

- **📱 [Anbox](https://anbox.io/) -** Run Android applications on any GNU/Linux operating system.
- **📱 [Waydroid](https://waydro.id/) -** Waydroid uses a container-based approach to boot a full Android system on a regular GNU/Linux system like Ubuntu.
- **📱 [srccpy](https://github.com/Genymobile/scrcpy) -** Display and control your Android device
- **📱 [guiscrcpy](https://github.com/srevinsaju/guiscrcpy) -** Open Source GUI based Android Screen Mirroring System
</details>

## Fonts
- **😀 Twemoji -** Twitter emoji font 
- **🔤 FiraGO -** Latin script font 
- **🔤 Fura Code -** Latin script monospaced Fira Code font with Nerd Font patch 
- **🔤 Amiri -** Arabic font 
- **🔤 Amiri Typewriter -** Arabic monospaced font 


## stowd
Script to easily symlink configs using stow.
- Create folder for an app and include all its configs as they appear from your home directory (or root).
  - Will usually look like: `app_name/.config/app_name/config`
  - for root: `etc/app_name/config`
- Edit `stowd.yaml` to include configs to add or remove
- Run `python stowd.py`
  - Will get prompted for password for root configs

[osi]: ./.img/osi.svg
