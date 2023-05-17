# Bitwarden

Installed from flathub

### Enable wayland

- Copy desktop file:
  ```sh
  sudo cp /var/lib/flatpak/exports/share/applications/com.bitwarden.desktop.desktop ~/.local/share/applications/
  ```
- Append the following to the `Exec=` line:
  ```sh
  # --ozone-platform-hint=wayland --enable-features=WaylandWindowDecorations`
  vi ~/.local/share/applications/com.bitwarden.desktop.desktop
  ```
