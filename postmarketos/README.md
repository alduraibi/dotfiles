# postmarketOS

## Install

## Post-install

- Flatpak
  ```sh
  # install
  sudo apk add flatpak
  # add Flathub repository
  sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
  ```

- Avahi
  ```sh
  # install
  sudo apk add avahi
  # Enable service on boot
  sudo rc-update add avahi-daemon
  # Start service now
  sudo rc-service avahi-daemon start
  ```

- SSH
  ```sh
  # Enable service on boot
  sudo rc-update add sshd
  # Start service now
  sudo service sshd start
  ```
