# ufw

> Uncomplicated Firewall

**Links:** [Arch Wiki] | [Alpine Wiki]

## Install

### Arch Linux
```sh
# install ufw:
sudo pacman -S ufw
# enable service
sudo systemctl enable --now ufw
```

### postmarketOS
```sh
# Disable nftables
sudo rc-update del nftables

# install ufw:
sudo apk add ip6tables ufw
# enable service
sudo rc-update add ufw
```

### Setup
```sh
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

[Arch Wiki]: https://wiki.archlinux.org/title/ufw
[Alpine Wiki]: https://wiki.alpinelinux.org/wiki/Uncomplicated_Firewall
