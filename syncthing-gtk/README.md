# Syncthing GTK

Installed through Flathub

## Preferences

- `Interface` -> `Minimize to tray start` -> enable
- `Interface` -> `Display desktop notifications for` -> `errors`
- `Interface` -> `When starting and Syncthing daemon is not running` -> `start daemon in background`

## Start on Boot

Open `Gnome Tweaks` -> `Startup Applications` -> `+` -> `Syncthing GTK`

## Firewall

```sh
sudo ufw allow fragments
```
