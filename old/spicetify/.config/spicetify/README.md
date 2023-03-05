# spicetify
> Command-line tool to customize the official [Spotify][site1] client. Supports Windows, MacOS and Linux.<sup>[1][desc]</sup>

**Links:** [Website][site] - [Source Code][code] - [Documentation][docs] - [Package][pkg]

## Directions:
- Install [spotify][pkg1]
- Gain write permission on Spotify files:
  ```
  sudo chmod a+wr /opt/spotify
  sudo chmod a+wr /opt/spotify/Apps -R
  ```
- Install [spicetify-cli][site] from the [aur][pkg]
- Install [spicetify-themes-git][site2] from the [aur][pkg2]
- Apply spicetify:
  `spicetify backup apply`


[site]: https://spicetify.app/
[desc]: https://github.com/spicetify/spicetify-cli
[code]: https://github.com/spicetify/spicetify-cli
[docs]: https://spicetify.app/docs/getting-started
[site1]: https://spotify.com/
[site2]: https://github.com/spicetify/spicetify-themes
[pkg]: https://aur.archlinux.org/packages/spicetify-cli
[pkg1]: https://aur.archlinux.org/packages/spotify
[pkg2]: https://aur.archlinux.org/packages/spicetify-themes-git
