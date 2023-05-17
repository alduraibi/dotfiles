# Spotify

Installed from flathub

### Enable scaling

- Copy desktop file:
  ```sh
  sudo cp /var/lib/flatpak/exports/share/applications/com.spotify.Client.desktop ~/.local/share/applications/
  ```
- Append the following to the `Exec=` line:
  ```sh
  # --force-device-scale-factor=1.5
  vi ~/.local/share/applications/com.spotify.Client.desktop
  ```
