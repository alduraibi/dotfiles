# 🦊 Firefox

> The open-source privacy respecting web browser from Mozilla.

### Theme ([firefox-gnome-theme])

- Clone repo:
```sh
git clone https://github.com/rafaelmardojai/firefox-gnome-theme
cd firefox-gnome-theme
```
- Run auto-install script:
```sh
./scripts/auto-install.sh
```

- Make sure these are set to true in `about:config`:
  - `toolkit.legacyUserProfileCustomizations.stylesheets`
  - `svg.context-properties.content.enabled`
- Optional settings: (add as boolean in `about:config`)
  - Hide single tab: `gnomeTheme.hideSingleTab`
- Login to Firefox account
  - Change `Device Name` in settings
- Right Toolbar and open `Bookmarks Toolbar…`
  - Click `Never Show`
- Unpin all extensions from toolbar except `Bitwarden`
- Right Toolbar and open `Customize Toolbar…`
  - Move `new tab` button to the right of `refresh`
  - Move `Firefox View` button to the left of `extensions`
  - Hide `Save to Pocket`
  - Hide `Firefox account`

> Note: To update, `git pull` and run the script again

## Installed Add-ons

- **[uBlock Origin][ublock]** - Ad-Blocker
- **[Bitwarden]** - Password manager
  - Set `Vault timeout` to `Never`
  - Enable `Auto-fill on page load`
- **[I don't care about cookies][cookies]** - Disable cookie warnings
- **[Reddit Enhancement Suite][res]** - Improves reddit
- **[Terms of service; Didn't read][tosdr]** - tldr for TOS
  - `Preferences` -> uncheck `Send Notifications`
- **[Privacy Badger][badger]** - Blocks invisible trackers


[firefox-gnome-theme]: https://github.com/rafaelmardojai/firefox-gnome-theme
[ublock]: https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/
[bitwarden]: https://addons.mozilla.org/en-US/firefox/addon/bitwarden-password-manager/
[cookies]: https://addons.mozilla.org/en-US/firefox/addon/i-dont-care-about-cookies/
[res]: https://addons.mozilla.org/en-US/firefox/addon/reddit-enhancement-suite/
[badger]: https://addons.mozilla.org/en-US/firefox/addon/privacy-badger17/?utm_content=addons-manager-reviews-link&utm_medium=firefox-browser&utm_source=firefox-browser
[tosdr]: https://addons.mozilla.org/en-US/firefox/addon/terms-of-service-didnt-read/
