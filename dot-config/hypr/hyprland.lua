-- Main Hyprland config (Lua) — migrated from hyprland.conf
--
-- Hyprland 0.55+ Lua format. See https://wiki.hypr.land/Configuring/Start/
-- The companion daemons (hyprlock / hypridle / hyprpaper) still use their own
-- hyprlang .conf files and are NOT loaded from here.

------------------------------------------------------------------- MONITORS
-- monitor=, 1920x1080, 0x0, 1
hl.monitor({
    output   = "",
    mode     = "1920x1080",
    position = "0x0",
    scale    = 1,
})

---------------------------------------------------------------------- INPUT
hl.config({
    input = {
        kb_layout          = "us,us",
        kb_variant         = ",intl",
        kb_model           = "",
        kb_options         = "",
        kb_rules           = "",
        numlock_by_default = true,
        follow_mouse       = 1,
        sensitivity        = 0, -- -1.0 - 1.0, 0 means no modification.
        touchpad = {
            natural_scroll = true,
        },
    },
})

-------------------------------------------------------------------- GENERAL
hl.config({
    general = {
        gaps_in  = 5,
        gaps_out = 5,
        border_size = 2,
        col = {
            active_border   = "rgba(8839efff)",
            inactive_border = "rgba(595959aa)",
        },
        allow_tearing = true,
        layout = "master",
    },
})

----------------------------------------------------------------------- MISC
hl.config({
    misc = {
        disable_splash_rendering = true,
        disable_hyprland_logo    = true,
    },
})

----------------------------------------------------------------- DECORATION
hl.config({
    decoration = {
        rounding         = 0,
        active_opacity   = 1.0,
        inactive_opacity = 0.9,
        blur = {
            enabled           = false,
            new_optimizations = true,
            size              = 5,
            passes            = 4,
        },
        shadow = {
            enabled = false,
        },
    },
})

----------------------------------------------------------------- ANIMATIONS
hl.config({
    animations = {
        enabled = true,
    },
})

-- bezier = NAME, x1, y1, x2, y2  ->  hl.curve(NAME, { points = { {x1,y1}, {x2,y2} } })
hl.curve("myBezier",       { type = "bezier", points = { {0.05, 0.9},  {0.1, 1.05} } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0},    {0.35, 1}   } })
hl.curve("easeInOutExpo",  { type = "bezier", points = { {0.87, 0},    {0.13, 1}   } })
hl.curve("easeInOutBack",  { type = "bezier", points = { {0.68, -0.6}, {0.32, 1.6} } })

-- animation = NAME, on, speed, curve, style
hl.animation({ leaf = "windows",     enabled = true, speed = 3,  bezier = "default",       style = "gnomed" })
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 3,  bezier = "default",       style = "gnomed" })
hl.animation({ leaf = "layers",      enabled = true, speed = 3,  bezier = "easeInOutCubic" })
hl.animation({ leaf = "layersOut",   enabled = true, speed = 3,  bezier = "easeInOutCubic" })
hl.animation({ leaf = "border",      enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 8,  bezier = "default" })
hl.animation({ leaf = "fade",        enabled = true, speed = 7,  bezier = "default" })
hl.animation({ leaf = "workspaces",  enabled = true, speed = 3,  bezier = "easeInOutCubic" })

--------------------------------------------------------------------- LAYOUTS
hl.config({
    dwindle = {
        -- `pseudotile` is no longer a dwindle option in 0.55 (dropped from the
        -- original config); use the SUPER+J pseudo bind instead.
        preserve_split = true,
    },
    master = {
        new_status = "master",
    },
})

---------------------------------------------------------------------- CURSOR
hl.config({
    cursor = {
        no_hardware_cursors = true,
    },
})

hl.device({
    name        = "epic-mouse-v1",
    sensitivity = -0.5,
})

------------------------------------------------------------ INLINE WINDOW RULE
-- windowrulev2 = immediate, class:^(steam_app_0)$
hl.window_rule({
    name  = "steam-immediate",
    match = { class = "^(steam_app_0)$" },
    immediate = true,
})

--------------------------------------------------------------------- INCLUDES
require("default.startup")     -- Autostart
require("default.binds")       -- Keybinds
require("default.windowrules") -- Window rules
require("morghulis")           -- Morghulis binds + layer rules

-- Disabled (were commented-out source= lines in the original config):
-- require("default.cursor")   -- Cursor theme env + setcursor
-- require("plugins.hyprexpo")  -- hyprexpo workspace-overview plugin
