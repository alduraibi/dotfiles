# Gnome

## Power profiles

```sh
# install gnome-control-center deps
sudo pacman -S --asdeps system-config-printer power-profiles-daemon
# enable power-profiles-daemon
sudo systemctl enable --now power-profiles-daemon
```

## Auto-login fix

1. Install [Passwords and Keys](https://flathub.org/apps/org.gnome.seahorse.Application) flatpak
2. Open `Passwords and Keys` -> right-click `login` -> set empty password


## Remote desktop (extend display)

- `gsettings set org.gnome.desktop.remote-desktop.rdp screen-share-mode extend`
- Settings -> Sharing -> Turn on Sharing (top right button) -> Turn on Remote Desktop
- install `Connections` from flathub
- sudo ufw allow rdp

## Shortcuts

- Toggle Fullscreen Mode: `Alt+F11`

## Theme

### GTK3 theme

1. Install for dark adwaita on gtk3 apps
   ```sh
   yay -S adw-gtk3
   ```
2. Go to `gnome-tweaks` -> `appearance` -> `legacy application` -> `adw-gtk3-dark`

### QT theme

1. Install for adwaita on QT apps
   ```sh
   sudo pacman -S adwaita-qt5 adwaita-qt6 qgnomeplatform-qt5 qgnomeplatform-qt6
   ```
2. Add `export QT_QPA_PLATFORMTHEME=gnome` to zshenv

### Application Themes

- [Firefox](../firefox/README.md#Theme)
- [Steam](../steam/README.md#Theme)

## Extensions

Install `Extension Manager` flatpak to install and manage the following extensions:

- [Alphabetical App Grid]
  - Position of ordered folders -> Start
- [Always Show Titles In Overview]
  - Enable `Always show window cose buttons`
- [AppIndicator and KStatusNotifierItem Support]
- [Blur my Shell]
- [Caffeine]
- [Clipboard History]
- [Dim Completed Calendar Events]
- [Do Not Disturb While Screen Sharing Or Recording]
- [GSConnect]
  ```sh
  # sudo pacman -S --asdeps folks libgdata gsound python-nautilus
  # allow in firewall (first include in ufw-custom)
  sudo ufw allow gsconnect
  ```
- [Hibernate Status Button]
- [Hot Edge]
  ```sh
  sudo pacman -S libgda6
  ```
- ~~[Improved OSK]~~
- [Just Perfection]
  - Visibility -> Activities Button -> off
  - Visibility -> Keyboard Layout -> off
  - Visibility -> Accessibility Menu -> off
  - Behavior -> Workspace Wraparound -> on
  - Behavior -> Window Demands Attention Focus -> on
  - Behavior -> Always Show Workspace Switcher -> on
- [PiP on top]
- [Rounded Window Corners]
- [Screen Rotate]




[Alphabetical App Grid]: https://extensions.gnome.org/extension/4269/alphabetical-app-grid/
[Always Show Titles In Overview]: https://extensions.gnome.org/extension/1689/always-show-titles-in-overview/
[AppIndicator and KStatusNotifierItem Support]: https://extensions.gnome.org/extension/615/appindicator-support/
[Blur my Shell]: https://extensions.gnome.org/extension/3193/blur-my-shell/
[Caffeine]: https://extensions.gnome.org/extension/517/caffeine/
[Clipboard History]: https://extensions.gnome.org/extension/4839/clipboard-history/
[Dim Completed Calendar Events]: https://extensions.gnome.org/extension/5979/dim-completed-calendar-events/
[Do Not Disturb While Screen Sharing Or Recording]: https://extensions.gnome.org/extension/5985/do-not-disturb-while-screen-sharing-or-recording/
[GSConnect]: https://extensions.gnome.org/extension/1319/gsconnect/
[Hibernate Status Button]: https://extensions.gnome.org/extension/755/hibernate-status-button/
[Hot Edge]: https://extensions.gnome.org/extension/4222/hot-edge/
[Improved OSK]: https://extensions.gnome.org/extension/4413/improved-osk/
[Just Perfection]: https://extensions.gnome.org/extension/3843/just-perfection/
[PiP on top]: https://extensions.gnome.org/extension/4691/pip-on-top/
[Rounded Window Corners]: https://extensions.gnome.org/extension/5237/rounded-window-corners/
[Screen Rotate]: https://extensions.gnome.org/extension/5389/screen-rotate/
