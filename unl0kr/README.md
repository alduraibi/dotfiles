# unl0kr

> On-Screen Keyboard to unlock disk encryption

**Links:** [Wiki] - [Source Code]

## Setup

- install: `yay -S unl0kr`
- remove `:allow-discards` in `/boot/loader/entries/arch.conf`
- edit `/etc/mkinitcpio.conf`
  - set **MODULES** to: `MODULES=(i915 hid_multitouch i2c_hid i2c_hid_acpi intel_lpss intel_lpss_pci)`
  - replace `encrypt` hook with `unl0kr`

## Config

- Move original config to `*.bk` in order to create symlinks
  - `sudo mv /etc/unl0kr.conf /etc/unl0kr.conf.bk`
- Create symlink of config
  - `doti add -r unl0kr`
- After any edit to config, run the following to apply.
  - `sudo mkinitcpio -P`

[wiki]: https://wiki.postmarketos.org/wiki/Unl0kr
[source code]: https://gitlab.com/postmarketOS/buffybox/-/blob/master/unl0kr/README.md
