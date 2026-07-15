hl.env("XCURSOR_THEME",    "Bibata-Modern-Classic")
hl.env("XCURSOR_SIZE",     "20")
hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Classic")
hl.env("HYPRCURSOR_SIZE",  "20")

hl.on("hyprland.start", function()
    hl.exec_cmd('/usr/bin/hyprctl setcursor "Bibata-Modern-Classic" 20')
end)
