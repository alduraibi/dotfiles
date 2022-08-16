# Environmental Variables

### Wayland ###
[[ "$XDG_SESSION_TYPE" == "wayland" ]] && {
  export BEMENU_BACKEND=wayland
  export BEMENU_OPTS="-i"
  export CLUTTER_BACKEND=wayland
  export MOZ_ENABLE_WAYLAND=1
  #export MOZ_DBUS_REMOTE=1
  export QT_QPA_PLATFORM=wayland
  #export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
  export SDL_VIDEODRIVER=wayland
}
