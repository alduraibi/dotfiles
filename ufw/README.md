# ufw

> Uncomplicated Firewall

**Links:** [Arch Wiki]

## Setup

```sh
# install ufw:
sudo pacman -S ufw
# enable ufw
sudo systemctl enable --now ufw
# set default to deny
sudo ufw default deny
# set enable
sudo ufw enable
```

## Applications

- Avahi: `sudo ufw allow avahi`
- [Fragments](../fragments/README.md#Firewall): `sudo ufw allow fragments`
- Syncthing: `sudo ufw allow syncthing`
- SSH: `sudo ufw limit SSH`
- [Valent](../valent/README.md#Firewall): `sudo ufw allow kdeconnect`
- Wireguard: `sudo ufw allow wireguard`

[arch wiki]: https://wiki.archlinux.org/title/ufw
