# Black Box

> A beautiful GTK 4 terminal.

## Integrate with `Files`

- Install extension:
  ```sh
  yay -S nautilus-open-any-terminal
  ```
- Set Black Box (Flatpak version) as default for extension
  ```sh
  gsettings set com.github.stunkymonkey.nautilus-open-any-terminal terminal blackbox
  gsettings set com.github.stunkymonkey.nautilus-open-any-terminal flatpak system
  ```
- Optional: Open in a new tab of Black Box instead of a new window
  ```sh
  gsettings set com.github.stunkymonkey.nautilus-open-any-terminal new-tab true
  ```

## Theme

Taken from [here](https://gist.github.com/vixalien/befdb265f7ed9132f990832b2aa35e05)

- use `doti` to symlink theme into place
  - `Preferences` -> `Terminal` -> `Theme`
  - Select the dark and light `Adwaita` themes in the preferences
- `Preferences` -> `General` -> `Show Borders` -> `off`
- `Preferences` -> `General` -> `Theme Integration` -> `off`
- `Preferences` -> `Terminal` -> `Font` -> `Monospace 10`
- `Preferences` -> `Terminal` -> `Cell Spacing` -> `Height` -> `1.30`
- `Preferences` -> `Terminal` -> `Padding` -> `8`
