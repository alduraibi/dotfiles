# 🦊 Firefox

> The open-source privacy respecting web browser from Mozilla.

## Theme

Gnome theme taken from [here](firefox-gnome-theme)

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

- **[Arabic spell-checking dictionary]** - Arabic dictionary and spell checker
- **[Bitwarden]** - Password manager
  - Set `Vault timeout` to `Never`
  - Enable `Auto-fill on page load`
- **[ClearURLs]** - Removes tracking elements from URLs
- **[Dark Reader]** - Dark mode for every website
- **[Facebook Container]** - Prevent Facebook from tracking you around the web
- **[Firefox Translations]** - Offline translations
- **[I don't care about cookies]** - Disable cookie warnings
- **[LanguageTool]** - Grammar and Spell Checker
- **[Reddit Enhancement Suite]** - Improves reddit
- **[Simple Translate]** - Online translations
- **[SponsorBlock]** - Skip Sponsorships on YouTube
- **[uBlock Origin]** - Ad-Blocker

<details>
  <summary>Disabled Add-ons</summary>
  
- **[Enhancer for YouTube]** - Take control of YouTube
- **[User-Agent Switcher and Manager]** - Change the browser user-agent
- **[Video DownloadHelper]** - Download videos from anywhere
</details>


[firefox-gnome-theme]: https://github.com/rafaelmardojai/firefox-gnome-theme
[Arabic spell-checking dictionary]: https://addons.mozilla.org/en-US/firefox/addon/arabic-spell-checking-dictiona/
[Bitwarden]: https://addons.mozilla.org/en-US/firefox/addon/bitwarden-password-manager/
[ClearURLs]: https://addons.mozilla.org/en-US/firefox/addon/clearurls/
[Dark Reader]: https://addons.mozilla.org/en-US/firefox/addon/darkreader/
[Facebook Container]: https://addons.mozilla.org/en-US/firefox/addon/facebook-container/
[Firefox Translations]: https://addons.mozilla.org/en-US/firefox/addon/firefox-translations/
[I don't care about cookies]: https://addons.mozilla.org/en-US/firefox/addon/i-dont-care-about-cookies/
[LanguageTool]: https://addons.mozilla.org/en-US/firefox/addon/languagetool/
[Reddit Enhancement Suite]: https://addons.mozilla.org/en-US/firefox/addon/reddit-enhancement-suite/
[Simple Translate]: https://addons.mozilla.org/en-US/firefox/addon/simple-translate/
[SponsorBlock]: https://addons.mozilla.org/en-US/firefox/addon/sponsorblock/
[uBlock Origin]: https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/
[Enhancer for YouTube]: https://addons.mozilla.org/en-US/firefox/addon/enhancer-for-youtube/
[User-Agent Switcher and Manager]: https://addons.mozilla.org/en-US/firefox/addon/user-agent-string-switcher/
[Video DownloadHelper]: https://addons.mozilla.org/en-US/firefox/addon/video-downloadhelper/
