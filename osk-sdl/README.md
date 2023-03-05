# osk-sdl

> On-Screen Keyboard to unlock disk encryption

**Links:** [Wiki] - [Source Code]

## Setup

- install: `yay -S osk-sdl`
- remove `:allow-discards` in `/boot/loader/entries/arch.conf`
- edit `/etc/mkinitcpio.conf`
  - set **MODULES** to: `MODULES=(i915 hid_multitouch i2c_hid i2c_hid_acpi intel_lpss intel_lpss_pci)`
  - replace `encrypt` hook with `osk-sdl`

## Config

- Move original config to `*.bk` in order to create symlinks
  - `sudo mv /etc/osk-sdl.conf /etc/osk-sdl.conf.bk`
- Create symlink of config
  - `doti add -r osk-sdl`
- After any edit to config, run the following to apply.
  - `sudo mkinitcpio -P`

[wiki]: https://wiki.postmarketos.org/wiki/Osk-sdl
[source code]: https://gitlab.com/postmarketOS/osk-sdl
