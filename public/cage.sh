#!/usr/bin/env sh

# Cursor
export XCURSOR_THEME=Bibata-Modern-Classic
export XCURSOR_SIZE=20

# Nvidia Specifications
export LIBVA_DRIVER_NAME=nvidia
export GBM_BACKEND=nvidia-drm
export __GLX_VENDOR_LIBRARY_NAME=nvidia

export NVD_BACKEND=direct
export WLR_RENDERER_ALLOW_SOFTWARE=1

# Toolkit Backend Variables
export GDK_BACKEND=wayland,x11
export QT_QPA_PLATFORM=wayland,xcb
export SDL_VIDEODRIVER=wayland
export CLUTTER_BACKEND=wayland

# XDG Specifications
export XDG_CURRENT_DESKTOP=cage
export XDG_SESSION_TYPE=wayland
export XDG_SESSION_DESKTOP=cage

# Apps Specifications
export ELECTRON_OZONE_PLATFORM_HINT=wayland

cage -- /usr/bin/alacritty -e /usr/bin/tmux &

# Start Environment
/usr/bin/dbus-update-activation-environment --systemd --all &
/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
