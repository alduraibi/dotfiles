# arch / btrfs / gnome / wayland

## Manual install of arch with btrfs

0.  Create installation disk:
    ```sh
    dd bs=4M if=path/to/archlinux-version-x86_64.iso of=/dev/sdx conv=fsync oflag=direct status=progress
    ```
1.  Connect to internet:
    ```sh
    iwctl
    device list
    station YOURDEVICE scan
    station YOURDEVICE connect YOURSSID
    ```
2.  Connect to ssh:
    1. Start ssh:
       ```sh
       systemctl start sshd.service
       ```
    2. Set a password for root:
       ```sh
       passwd
       ```
    3. Display IP address:
       ```sh
       ip addr show
       ```
    4. Connect from a different pc:
       ```sh
       ssh root@IP-ADDRESS
       ```
3.  Update system clock:
    ```sh
    timedatectl set-ntp true
    ```
4.  Partition the disk:

    ```sh
    fdisk -l
    fdisk /dev/the_disk_to_be_partitioned
    ```

    1.  Create boot partition (skip if dual booting with windows)
        - `g`
        - `n`
          - _press enter_
          - `+1G`
          - `t`
          - `1`
    2.  If existing efi partition is small (~100MB), create a seperate boot partition (XBOOTLDR)
        - type: `Linux extended boot`
        - GUID: `bc13c2ff-59e6-4262-a352-b275fd6f7172`
        - file system: any (FAT32)
        - size: 550M
        - disable `fast boot` mode
        - must be on the same physical disk as the ESP (EFI partition)
    3.  Create the linux partition
        - n
        - _press enter_
        - _press enter_
    4.  Encryption with LUKS
        1. Encrypt root partition:
           ```sh
           cryptsetup -y -v luksFormat /dev/nvme0n1p#
           ```
           Enter disk encryption password
        2. Check the results:
           ```sh
           cryptsetup luksDump /dev/nvme0n1p#
           ```
        3. Backup LUKS header
           ```sh
           cryptsetup luksHeaderBackup /dev/nvme0n1p# --header-backup-file /luksheader.img
           ```
        4. On separate non-ssh terminal, run to transfer backed up LUKS header
           ```sh
           scp root@192.168.XX.XX:/luksheader.img ~/
           ```
        5. Open volume:
           ```sh
           cryptsetup luksOpen /dev/nvme0n1p# cryptroot
           ```
    5.  Format the EFI partition (skip when dual booting):
        ```sh
        mkfs.vfat -F32 -n EFI /dev/nvme0n1p1
        ```
    6.  Format the linux partition:
        ```sh
        mkfs.btrfs -L archlinux /dev/mapper/cryptroot
        ```
    7.  Create subvolumes:
        1. Mount root btrfs volume:
           ```sh
           mount /dev/mapper/cryptroot /mnt
           ```
        2. Create btrfs subvolumes:
           ```sh
           btrfs subvolume create /mnt/@
           btrfs subvolume create /mnt/@home
           btrfs subvolume create /mnt/@log
           btrfs subvolume create /mnt/@pkg
           btrfs subvolume create /mnt/@swap
           btrfs subvolume create /mnt/@.snapshots
           ```
        3. Unmount root volume:
           ```sh
           umount /mnt
           ```
    8.  Mount subvolumes:
        ```sh
        mount -o noatime,compress=zstd,subvol=@ /dev/mapper/cryptroot /mnt
        mkdir -p /mnt/{home,var/log,var/cache/pacman/pkg,.snapshots,swap}
        mount -o noatime,compress=zstd,subvol=@home /dev/mapper/cryptroot /mnt/home
        mount -o noatime,compress=zstd,subvol=@log /dev/mapper/cryptroot /mnt/var/log
        mount -o noatime,compress=zstd,subvol=@pkg /dev/mapper/cryptroot /mnt/var/cache/pacman/pkg
        mount -o noatime,compress=zstd,subvol=@.snapshots /dev/mapper/cryptroot /mnt/.snapshots
        mount -o noatime,compress=zstd,subvol=@swap /dev/mapper/cryptroot /mnt/swap
        ```
    9.  Swap: (size = ram + sqrt(ram)
        ```sh
        truncate -s 0 /mnt/swap/swapfile
        chattr +C /mnt/swap/swapfile
        # set count to: RAM + sqrt(RAM)
        dd if=/dev/zero of=/mnt/swap/swapfile bs=1G count=XX status=progress
        chmod 600 /mnt/swap/swapfile
        mkswap -U clear /mnt/swap/swapfile
        swapon /mnt/swap/swapfile
        ```
    10. Check if UEFI is available:
        ```sh
        efivar --list
        ```
    11. Mount partions (XBOOTLDR)
        1.  Mount ESP partition to `/mnt/efi`
        2.  Mount XBOOTLDR partition to `/mnt/boot`\
            or `mount --mkdir /dev/efi_system_partition /mnt/boot`

5.  Install Arch:
    1. Update mirror list:
       ```sh
       reflector --latest 10 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
       ```
    2. Install essential packages:
       ```sh
       pacstrap /mnt base base-devel linux linux-lts linux-firmware linux-headers btrfs-progs cryptsetup intel-ucode vulkan-intel vulkan-icd-loader git vim zsh archlinux-contrib pacman-contrib networkmanager gnome gnome-tweaks
       ```
6.  Configure the system:

    1. Generate an fstab file (use -U or -L to define by UUID or labels, respectively):
       ```sh
       genfstab -U /mnt >> /mnt/etc/fstab
       # edit in case of any errors:
       vim /mnt/etc/fstab
       ```
    2. Change root into the new system:
       ```sh
       arch-chroot /mnt
       ```
    3. Set timezone:
       ```sh
       ln -sf /usr/share/zoneinfo/Asia/Riyadh /etc/localtime
       hwclock --systohc
       ```
    4. Localization:

       ```sh
       # Uncomment `en_US.UTF-8 UTF-8` and other needed locales
       vim /etc/locale.gen

       # Generate the locales by running:
       locale-gen

       # Create the locale.conf(5) file, and set the LANG variable accordingly:
       echo LANG=en_US.UTF-8 > /etc/locale.conf
       ```

    5. Create the hostname file and write the hostname within it:
       ```sh
       echo computer-name > /etc/hostname
       ```
    6. Edit HOOKS in `/etc/mkinitcpio.conf`:
       ```sh
       HOOKS=(base udev autodetect modconf kms keyboard keymap consolefont block encrypt filesystems fsck)
       ```
    7. Create a new initramfs:
       ```sh
       mkinitcpio -P
       ```
    8. Set the root password: (optional)
       ```sh
       passwd
       ```
    9. Allow users in group `wheel` to run sudo:
       ```sh
       echo "%wheel ALL=(ALL) ALL" | (EDITOR="tee -a" visudo)
       ```
    10. Create a user account:
        ```sh
        useradd -m -G wheel -s /bin/zsh ghassan
        passwd ghassan
        ```
    11. Bootloader
        ```sh
        # In chroot, use command:
        bootctl install
        ```
        Note: update systemd-boot
        1. manually by running: `bootctl update`
        2. automatically by enabling: `systemd-boot-update.service`
    12. Boot entries (replace intel with amd for amd)
        - Create file `/boot/loader/entries/arch.conf` with contents:
          ```
          title   Arch Linux
          linux   /vmlinuz-linux
          initrd  /intel-ucode.img
          initrd  /initramfs-linux.img
          options cryptdevice=UUID=device-UUID:cryptroot:allow-discards root=/dev/mapper/cryptroot rootflags=noatime,compress=zstd,subvol=@ rw
          ```
        - Create file `/boot/loader/entries/arch-lts.conf` with contents:
          ```
          title   Arch Linux (lts)
          linux   /vmlinuz-linux-lts
          initrd  /intel-ucode.img
          initrd  /initramfs-linux-lts.img
          options cryptdevice=UUID=device-UUID:cryptroot:allow-discards root=/dev/mapper/cryptroot rootflags=noatime,compress=zstd,subvol=@ rw
          ```
    13. Start systemd services:
        ```sh
        systemctl enable gdm NetworkManager systemd-boot-update
        ```

7.  ssh keys

    ```sh
    # Switch to user
    su - ghassan

    # Create main ssh key (ed25519)
    ssh-keygen -t ed25519 -C "$USER@$HOST"
    # Also create backup ssh key (rsa) to use with older systems
    ssh-keygen -t rsa -b 4096 -C "$USER@$HOST"

    # Copy contents of main public ssh key to add to github then:

    # Clone ansible setup to be run
    git clone git@github.com:ghassan0/archi.git

    # Exit from user account
    exit
    ```

8.  Reboot

    ```sh
    sync    # (?)
    exit
    umount -R /mnt
    reboot
    ```

## Post-install

- Pre-Reqs

  - Install aur helper:

    ```sh
    git clone https://aur.archlinux.org/paru-bin.git
    cd paru-bin
    makepkg -si
    cd ..
    sudo rm -r paru-bin
    ```

  - SSH

    ```sh
    # Create main ssh key (ed25519) (then copy public key to github)
    ssh-keygen -t ed25519 -C "$USER@$HOST"
    cat ~/.ssh/id_ed25519.pub
    # Also create backup ssh key (rsa) to use with older systems
    ssh-keygen -t rsa -b 4096 -C "$USER@$HOST"

    # enable ssh
    sudo systemctl enable --now sshd
    ```

  - Dotfiles

    ```sh
    paru -S doti

    # clone dotfile repo
    git clone git@github.com:ghassan0/dotfiles.git ~/.dotfiles

    doti -r
    ```

- System

  - Install missing firmware:

    ```sh
    yay -S sof-firmware linux-firmware-qlogic upd72020x-fw aic94xx-firmware wd719x-firmware ast-firmware
    ```

  - Clock stuff:

    - create `sudo vim /etc/chrony.conf`

      ```sh
      server 0.pool.ntp.org offline
      server 1.pool.ntp.org offline
      server 2.pool.ntp.org offline
      server 3.pool.ntp.org offline
      ```

    - run

      ```sh
      yay -S chrony networkmanager-dispatcher-chrony

      sudo echo 'Environment=SYSTEMD_TIMEDATED_NTP_SERVICES=chronyd.service:systemd-timesyncd.service' >> /usr/lib/systemd/system/systemd-timedated.service

      sudo systemctl disable systemd-timesyncd
      sudo systemctl enable --now chronyd systemd-timedated
      ```

  - enable early KMS:

    - run `sudo vim /etc/mkinitcpio.conf` and change the `MODULES=()` line to `MODULES=(i915)`
    - run `lsmod | grep intel_agp`
    - if the model **IS** loaded: change the `MODULES=()` line to `MODULES=(intel_agp i915)`
    - run `sudo mkinitcpio -P` and reboot

  - font stuff:

    ```sh
    sudo pacman -S ttf-liberation ttf-dejavu ttf-nerd-fonts-symbols-common
    ```

  - audio stuff:

    ```sh
    sudo pacman -S --asdeps wireplumber pipewire-alsa pipewire-audio pipewire-jack pipewire-pulse pipewire-zeroconf
    ```

  - Hardware Acceleration (intel GPUs, check arch wiki for other GPUs)

    ```sh
    # run to see your GPU
    lspci | grep VGA

    # for Intel GPU's 2014 and newer run:
    sudo pacman -S intel-media-driver libvdpau-va-gl libva-utils vdpauinfo intel-media-sdk
    export LIBVA_DRIVER_NAME=iHD

    # for Intel GPU's 2013 and older run:
    sudo pacman -S libva-intel-driver libvdpau-va-gl libva-utils vdpauinfo intel-media-sdk
    export LIBVA_DRIVER_NAME=i965

    # for both:
    export VDPAU_DRIVER=va_gl
    # confirm everything is working by:
    vainfo
    vdpauinfo

    # if everything is working, add the following block to
    sudo vim /etc/environment
    ```

    ```sh
    #
    # This file is parsed by pam_env module
    #
    # Syntax: simple "KEY=VAL" pairs on separate lines
    #
    #
    # Hardware Acceleration / GPU
    LIBVA_DRIVER_NAME=iHD
    # or LIBVA_DRIVER_NAME=i965 (for Intel GPU's 2013 and older)
    VDPAU_DRIVER=va_gl
    # If your Intel GPU is gen 8+:
    MESA_LOADER_DRIVER_OVERRIDE=iris
    ```

    - check **power and thermals** link at the bottom for VP9 decoding

  - ~~Undervolting~~

    - install packages: `yay -S intel-undervolt mprime-bin`
    - add `msr.allow_writes=on` at the end of the options line in `/boot/loader/entries/arch.conf` and the lts version
    - reboot
    - edit file `sudo vim sudo vim /etc/intel-undervolt.conf`
      ```sh
      undervolt 0 'CPU' -10
      undervolt 1 'GPU' 0
      undervolt 2 'CPU Cache' 0
      undervolt 3 'System Agent' 0
      undervolt 4 'Analog I/O' 0
      ```
    - run `sudo intel-undervolt apply && sudo intel-undervolt read` and make sure it applied properly
    - stress test by running `mprime` for 30 minutes
      - then decrease the mV by -10 for every successful run until your laptop crashes or hangs
      - set to last stable value
    - run `sudo systemctl enable --now intel-undervolt.service`

  - thermald (Intel only)

    ```sh
    # install package
    sudo pacman -S thermald
    # enable service (NOTE: for yoga c940 do the next step before starting the service)
    sudo systemctl enable --now thermald
    ```

    - For yoga c940 (do before starting systemd service):
      ```sh
      sudo cp files/c940/thermald.xml /etc/thermald/thermal-conf.xml
      sudo mkdir -p /etc/systemd/system/thermald.service.d
      sudo cp files/c940/thermald.service /etc/systemd/system/thermald.service.d/c940.conf
      ```

- System (extra)

  - ufw

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

  - avahi

    ```sh
    # install avahi and dep:
    sudo pacman -S avahi
    sudo pacman -S --asdeps nss-mdns

    # disable conflicting service
    sudo systemctl disable systemd-resolved
    # enable avahi
    sudo systemctl enable --now avahi-daemon

    # change line in file
    sudo sed -ie "s/^hosts:.*/hosts: mymachines mdns_minimal [NOTFOUND=return] resolve [\!UNAVAIL=return] files myhostname dns/g" /etc/nsswitch.conf

    # unblock UDP port 5353 in firewall
    sudo ufw allow avahi
    ```

  - Bluetooth

    ```sh
    sudo systemctl enable --now bluetooth
    ```

  - Printing

    ```sh
    # install packages
    sudo pacman -S cups cups-pdf
    # enable cups
    sudo systemctl enable --now cups
    ```

  - reflector (updates pacman mirrorlist)

    ```sh
    # install reflector
    sudo pacman -S reflector
    # edit config with the contents below
    sudo vim /etc/xdg/reflector/reflector.conf
    # enable reflector
    sudo systemctl enable --now reflector.timer
    sudo systemctl enable --now paccache.timer
    ```

    - Contents of config:
      ```
      --save /etc/pacman.d/mirrorlist
      --protocol https
      --latest 10
      --sort rate
      ```

  - On-Screen Keyboard for disk encryption

    - install: `yay -S osk-sdl`
    - remove `:allow-discards` in `/boot/loader/entries/arch.conf`
    - edit `/etc/mkinitcpio.conf`
      - set **MODULES** to: `MODULES=(i915 hid_multitouch i2c_hid i2c_hid_acpi intel_lpss intel_lpss_pci)`
      - replace `encrypt` hook with `osk-sdl`
    - edit config file `/etc/osk-sdl.conf`
    - `sudo mkinitcpio -P` (run after config adjustments)

- Gnome (theme, extensions, etc.)

  - Power profiles

    ```sh
    # install gnome-control-center deps
    sudo pacman -S --asdeps system-config-printer power-profiles-daemon
    # enable power-profiles-daemon
    sudo systemctl enable --now power-profiles-daemon
    ```

  - Auto-login fix

    1. install package `sudo pacman -S seahorse`
    2. open seahorse -> right-click `login` -> set empty password

  - GTK3 theme

    ```sh
    # install adw-gtk3 for dark adwaita on gtk3 apps
    yay -S adw-gtk3
    # go to gnome-tweaks -> appearance -> legacy application -> adw-gtk3-dark
    ```

  - QT theme

    ```sh
    # install adw-gtk3 for dark adwaita on gtk3 apps
    sudo pacman -S adwaita-qt5 adwaita-qt6 qgnomeplatform-qt5 qgnomeplatform-qt6
    add `export QT_QPA_PLATFORMTHEME=gnome` to zshenv
    ```

- Applications

  - Syncthing (GTK) (old way)

    ```sh
    # install packages
    sudo yay -S syncthing-gtk
    # allow in firewall
    sudo ufw allow syncthing
    # enable user service
    systemctl --user enable --now syncthing
    ```

- Remote desktop (extend display)

  - `gsettings set org.gnome.desktop.remote-desktop.rdp screen-share-mode extend`
  - Settings -> Sharing -> Turn on Sharing (top right button) -> Turn on Remote Desktop
  - install `Connections` from flathub
  - sudo ufw allow rdp

- WireGuard (vpn)

  - sudo ufw allow wireguard

- Lenovo Yoga C940

  ```sh
  # enable tablet mode
  yay -S yoga-usage-mode-dkms-git
  # add `yoga-usage-mode` to file:
  sudo vim /etc/modules-load.d/modules.conf
  ```

## References

- [arch install guide](https://wiki.archlinux.org/title/Installation_guide)
- [arch post install](https://wiki.archlinux.org/title/General_recommendations)
- [btrfs](https://btrfs.wiki.kernel.org/index.php/FAQ)
- [dm-crypt](https://wiki.archlinux.org/title/Dm-crypt/)
- [power and thermals](https://gist.github.com/LarryIsBetter/218fda4358565c431ba0e831665af3d1)
