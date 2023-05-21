# pacman

> Official package manager for Arch Linux.

**Links:** [Website] - [Source Code] - [Arch Wiki]

### Setup

```sh
# install ufw:
sudo pacman -S ufw
# enable ufw
sudo systemctl enable --now ufw
# set default to deny
sudo ufw default deny
# limit ssh access in firewall
sudo ufw limit SSH
# set enable
sudo ufw enable
```

[website]: https://archlinux.org/pacman/
[source code]: https://gitlab.archlinux.org/pacman/pacman
[arch wiki]: https://wiki.archlinux.org/title/Pacman
