# Jellyfin Media Player

Installed from flathub

### Enable scaling

- Copy desktop file:
  ```sh
  sudo cp /var/lib/flatpak/exports/share/applications/com.github.iwalton3.jellyfin-media-player.desktop ~/.local/share/applications/
  ```
- Append the following to the `Exec=` line:
  ```sh
  # --scale-factor 1.5
  vi ~/.local/share/applications/com.github.iwalton3.jellyfin-media-player.desktop
  ```

### Enable fullscreen

- Copy desktop file (if not done already)
- Append the following to the `Exec=` line:
  ```sh
  # --fullscreen
  vi ~/.local/share/applications/com.github.iwalton3.jellyfin-media-player.desktop
  ```
