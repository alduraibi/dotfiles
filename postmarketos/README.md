# postmarketOS

## Install

## Post-install

- Flatpak
  ```sh
  # install
  sudo apk add flatpak
  # add Flathub repository
  sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

  # Set priority order to flatpak for gnome-software
  gsettings set org.gnome.software packaging-format-preference "['flatpak']"
  ```

- Avahi
  ```sh
  # install
  sudo apk add avahi
  # Enable service on boot
  sudo rc-update add avahi-daemon
  # Start service now
  sudo rc-service avahi-daemon start
  # Add nftables rule in firewall section
  ```

- SSH
  ```sh
  # Enable service on boot
  sudo rc-update add sshd
  # Start service now
  sudo service sshd start
  ```

- [Firewall](../ufw/README.md)
  - Switch to [ufw](../ufw/README.md) after this [issue](https://gitlab.com/postmarketOS/pmaports/-/issues/2398) is resolved.
  - For the meantime, use [nftables](../nftables/README.md)
    - After any changes: `sudo service nftables restart`
