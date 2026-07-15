-- Autostart processes (was exec-once). Run once when Hyprland starts. Most are handled by uwsm anyways uuuuuwwwwwsssmmmmmmmm

hl.on("hyprland.start", function()
    -- Wallpaper
    hl.exec_cmd("~/.dotfiles/scripts/wbg next")

    -- Environment
    hl.exec_cmd("/usr/bin/dbus-update-activation-environment --systemd --all")
    hl.exec_cmd("/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh")

    -- hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
end)
