-- Migrated from default/cursor.conf
-- Cursor theme env vars + setcursor.
-- NOTE: kept DISABLED to match the original setup (its `source=` line was
-- commented out in hyprland.conf). Enable by uncommenting the
-- `require("default.cursor")` line in hyprland.lua.

hl.env("XCURSOR_THEME",    "Bibata-Modern-Classic")
hl.env("XCURSOR_SIZE",     "20")
hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Classic")
hl.env("HYPRCURSOR_SIZE",  "20")

hl.on("hyprland.start", function()
    hl.exec_cmd('/usr/bin/hyprctl setcursor "Bibata-Modern-Classic" 20')
end)
