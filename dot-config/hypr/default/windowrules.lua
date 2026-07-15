-- Migrated from default/windowrules.conf
-- Window rules. Each `windowrule { name; match:...; <effects> }` block becomes
-- an hl.window_rule({ name=, match={...}, <effects> }) call.

-------------------------------------------------------- stay_focused rules
hl.window_rule({
    name  = "polkit-stay_focused",
    match = { class = "polkit-gnome-authentication-agent-1" },
    stay_focused = true,
})

hl.window_rule({
    name  = "firefox-cookies-stay_focused",
    match = { class = "firefox", title = "Removing Cookies and Site Data" },
    stay_focused = true,
})

hl.window_rule({
    name  = "bleachbit-stay_focused",
    match = { class = "org.bleachbit.BleachBit", title = "Delete confirmation" },
    stay_focused = true,
})

hl.window_rule({
    name  = "zed-settings-stay_focused",
    match = { class = "dev.zed.Zed", title = "Zed — Settings" },
    stay_focused = true,
})

hl.window_rule({
    name  = "portal-stay_focused",
    match = { class = "xdg-desktop-portal-gtk" },
    stay_focused = true,
})

----------------------------------------------------------------- Brave (ws 2)
hl.window_rule({
    name  = "brave-workspace",
    match = { class = "^(.*[Bb]rave-browser.*)$" },
    workspace = 2,
})

hl.window_rule({
    name  = "brave-pip",
    match = { title = "(Picture in picture)" },
    float = true,
    size  = "600 350",
    move  = "1310 720",
    pin   = true,
})

hl.window_rule({
    name  = "brave-save-file",
    match = { class = "(brave)", title = "(Save File)" },
    float = true,
    size  = "715 570",
    move  = "710 160",
})

------------------------------------------------------- Code / Cursor / Zed (ws 3)
hl.window_rule({
    name  = "code-workspace",
    match = { class = "^(code.*)$" },
    workspace = 3,
})

hl.window_rule({
    name  = "cursor-workspace",
    match = { class = "cursor" },
    workspace = 3,
})

hl.window_rule({
    name  = "antigravity-workspace",
    match = { class = "antigravity" },
    workspace = 3,
})

hl.window_rule({
    name  = "zed-workspace",
    match = { class = "dev.zed.Zed" },
    workspace = 3,
})

------------------------------------------------------- File managers (ws 4)
hl.window_rule({
    name  = "nautilus-workspace",
    match = { class = "^(.*[Nn]autilus.*)$" },
    workspace = 4,
})

hl.window_rule({
    name  = "thunar-workspace",
    match = { class = "^(.*[Tt]hunar.*)$" },
    workspace = 4,
})

hl.window_rule({
    name  = "thunar-new-folder",
    match = { class = "([Tt]hunar)", title = "(Create New Folder)" },
    size  = "400 150",
    move  = "485 350",
})

hl.window_rule({
    name  = "player-float",
    match = { class = "(Player)", title = "(Player)" },
    float = true,
})

------------------------------------------------------- Chat apps (ws 5)
hl.window_rule({
    name  = "discord-workspace",
    match = { class = "^([Dd]iscord)$" },
    workspace = 5,
})

hl.window_rule({
    name  = "telegram-workspace",
    match = { class = "^(org.telegram.desktop)$" },
    workspace = 5,
})

hl.window_rule({
    name  = "slack-workspace",
    match = { class = "^([Ss]lack)" },
    workspace = 5,
})

------------------------------------------------------- Mail / office (ws 6)
hl.window_rule({
    name  = "libreoffice-workspace",
    match = { class = "^([Ll]ibreoffice.*)$" },
    workspace = 6,
})

hl.window_rule({
    name  = "thunderbird-workspace",
    match = { class = "^([Tt]hunderbird)$" },
    workspace = 6,
})

hl.window_rule({
    name  = "protonmail-workspace",
    match = { title = "^(.*Proton Mail.*)$" },
    workspace = 6,
})

hl.window_rule({
    name  = "gmail-workspace",
    match = { title = "^(.*Gmail.*)$" },
    workspace = 6,
})

------------------------------------------------------- Media players (ws 7)
hl.window_rule({
    name  = "soundcloud-workspace",
    match = { title = "^(.*[Ss]ound[Cc]loud.*)$" },
    workspace = 7,
})

hl.window_rule({
    name  = "youtube-music-workspace",
    match = { title = "YouTube Music" },
    workspace = 7,
})

hl.window_rule({
    name  = "vlc-workspace",
    match = { class = "^([Vv]lc)$" },
    workspace = 7,
})

hl.window_rule({
    name  = "mpv-workspace",
    match = { class = "mpv" },
    workspace = 7,
})

hl.window_rule({
    name  = "celluloid-workspace",
    match = { class = "io.github.celluloid_player.Celluloid" },
    workspace = 7,
})

------------------------------------------------------- Downloads / clean (ws 8)
hl.window_rule({
    name  = "uget-workspace",
    match = { class = "^(.*uget-gtk.*)$" },
    workspace = 8,
})

hl.window_rule({
    name  = "bleachbit-workspace",
    match = { class = "^(.*bleachbit.*)$" },
    workspace = 8,
})

------------------------------------------------------- Games / heavy (ws 9)
hl.window_rule({
    name  = "steam-workspace",
    match = { class = "^(.*[Ss]team.*)$" },
    workspace = 9,
})

hl.window_rule({
    name  = "faugus-workspace",
    match = { class = "^(faugus-.*)$" },
    workspace = 9,
})

hl.window_rule({
    name  = "teams-workspace",
    match = { class = "teams-for-linux" },
    workspace = 9,
})

hl.window_rule({
    name  = "shotcut-workspace",
    match = { class = "org.shotcut.Shotcut" },
    workspace = 9,
})

------------------------------------------------------- Floating / misc
hl.window_rule({
    name  = "floatcritty",
    match = { class = "^(floatcritty)$" },
    float = true,
    size  = "900 600",
    move  = "510 50",
    pin   = true,
    animation = "slide",
})

hl.window_rule({
    name  = "engrampa-float",
    match = { class = "^(engrampa)$" },
    float = true,
})

hl.window_rule({
    name  = "kitty-no_blur",
    match = { class = "^(kitty)$" },
    no_blur = true,
})

hl.window_rule({
    name  = "kitty-float",
    match = { class = "^(kitty)" },
    float = true,
    size  = "900 520",
    move  = "230 160",
})

hl.window_rule({
    name  = "protonvpn",
    match = { class = "^(protonvpn-app)" },
    pin  = true,
    size = "400 600",
    move = "10 420",
})

hl.window_rule({
    name  = "whatsapp",
    match = { title = "^(.*WhatsApp.*)$" },
    workspace = 5,
    tile = true,
})

------------------------------------------------------- no_blur
hl.window_rule({
    name  = "vlc-no_blur",
    match = { class = "^(vlc)$" },
    no_blur = true,
})

hl.window_rule({
    name  = "brave-no_blur",
    match = { class = "^(.*[Bb]rave-browser.*)$" },
    no_blur = true,
})
