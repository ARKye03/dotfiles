-- Keybindings, submaps and gestures.

local mainMod = "SUPER"

--------------------------------------------------------------------- APP BINDS
-- Terminals
hl.bind(mainMod .. " + Return",         hl.dsp.exec_cmd("/usr/bin/uwsm app -- warp-terminal"))
hl.bind(mainMod .. " + SHIFT + Return", hl.dsp.exec_cmd("/usr/bin/uwsm app -- alacritty"))

-- Browser
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("/usr/bin/uwsm app -- brave"))

-- Utils
hl.bind(mainMod .. " + M",         hl.dsp.exec_cmd("/usr/bin/uwsm app -- alacritty --class floatcritty -e /usr/bin/ncmpcpp -c ~/.ncmpcpp/config"))
hl.bind(mainMod .. " + E",         hl.dsp.exec_cmd("/usr/bin/uwsm app -- nautilus"))
hl.bind(mainMod .. " + SHIFT + E", hl.dsp.exec_cmd("/usr/bin/uwsm app -- thunar"))

----------------------------------------------------------------- MASTER LAYOUT
hl.bind(mainMod .. " + SHIFT + P", hl.dsp.layout("swapwithmaster master"))
hl.bind(mainMod .. " + N",         hl.dsp.layout("cyclenext"))

------------------------------------------------------------------- SCREENSHOTS
hl.bind("Print",                       hl.dsp.exec_cmd("~/.dotfiles/scripts/screenshots region"))
hl.bind(mainMod .. " + Print",         hl.dsp.exec_cmd("~/.dotfiles/scripts/screenshots full"))
hl.bind(mainMod .. " + SHIFT + Print", hl.dsp.exec_cmd("~/.dotfiles/scripts/screenshots window"))
hl.bind(mainMod .. " + Q",             hl.dsp.exec_cmd("~/.dotfiles/scripts/screenshots aspect"))

------------------------------------------------------------- WALLPAPERS (wbg)
hl.bind(mainMod .. " + U",         hl.dsp.exec_cmd("~/.dotfiles/scripts/wbg next"))
hl.bind(mainMod .. " + SHIFT + U", hl.dsp.exec_cmd("~/.dotfiles/scripts/wbg previous"))

----------------------------------------------------------------- HYPR ECOSYSTEM
hl.bind(mainMod .. " + P", hl.dsp.exec_cmd("/usr/bin/uwsm app -- hyprpicker -a"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("/usr/bin/uwsm app -- hyprlock"))

----------------------------------------------------------------- WINDOW CONTROL
hl.bind(mainMod .. " + C",     hl.dsp.window.close())
hl.bind(mainMod .. " + J",     hl.dsp.window.pseudo())
hl.bind(mainMod .. " + K",     hl.dsp.layout("togglesplit"))
hl.bind(mainMod .. " + F",     hl.dsp.window.fullscreen())
hl.bind(mainMod .. " + Space", hl.dsp.window.float({ action = "toggle" }))

-- Copy focused window's initialClass (nushell). Long-bracket string keeps the
-- backslash-escaped $ and " verbatim, exactly as the shell must receive them.
hl.bind(mainMod .. " + SHIFT + A", hl.dsp.exec_cmd([[nu -c "let class = (hyprctl activewindow -j | from json | get initialClass); notify-send \$\"initialClass: (\$class)\"; \$class | wl-copy"]]))

-- Quit the session
hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.exec_cmd("uwsm stop"))

-------------------------------------------------------------- VOLUME (repeat)
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("/usr/bin/wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle & morghulis -r change_volume"),        { repeating = true })
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("/usr/bin/wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+ & morghulis -r change_volume"),  { repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("/usr/bin/wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%- & morghulis -r change_volume"),       { repeating = true })

---------------------------------------------------------- BRIGHTNESS (repeat)
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd("brightnessctl set +10% & morghulis -r change_brightness"), { repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 10%- & morghulis -r change_brightness"), { repeating = true })

------------------------------------------------------------------- MEDIA KEYS
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("/usr/bin/playerctl play-pause"))
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("/usr/bin/playerctl next"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("/usr/bin/playerctl previous"))

------------------------------------------------------------------- MOVE FOCUS
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

----------------------------------------------------- WORKSPACES (switch / move)
-- SUPER + [1..0]        -> focus workspace 1..10 (0 maps to 10)
-- SUPER + SHIFT + [1..0]-> move active window to workspace 1..10
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,         hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

---------------------------------------------------- WORKSPACES (scroll / cycle)
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

hl.bind(mainMod .. " + CTRL + right", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + CTRL + left",  hl.dsp.focus({ workspace = "e-1" }))

hl.bind(mainMod .. " + ALT + right", hl.dsp.window.move({ workspace = "r+1" }))
hl.bind(mainMod .. " + ALT + left",  hl.dsp.window.move({ workspace = "r-1" }))

hl.bind(mainMod .. " + CTRL + L", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + CTRL + H", hl.dsp.focus({ workspace = "e-1" }))

hl.bind(mainMod .. " + ALT + L", hl.dsp.window.move({ workspace = "r+1" }))
hl.bind(mainMod .. " + ALT + H", hl.dsp.window.move({ workspace = "r-1" }))

-------------------------------------------------------- MOUSE DRAG / RESIZE
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

------------------------------------------------------- RESIZE ACTIVE (repeat)
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.resize({ x = 10,  y = 0,   relative = true }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + left",  hl.dsp.window.resize({ x = -10, y = 0,   relative = true }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + up",    hl.dsp.window.resize({ x = 0,   y = -10, relative = true }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + down",  hl.dsp.window.resize({ x = 0,   y = 10,  relative = true }), { repeating = true })

--------------------------------------------------------- MOVE ACTIVE (repeat)
hl.bind(mainMod .. " + ALT + SHIFT + right", hl.dsp.window.move({ x = 10,  y = 0,   relative = true }), { repeating = true })
hl.bind(mainMod .. " + ALT + SHIFT + left",  hl.dsp.window.move({ x = -10, y = 0,   relative = true }), { repeating = true })
hl.bind(mainMod .. " + ALT + SHIFT + up",    hl.dsp.window.move({ x = 0,   y = -10, relative = true }), { repeating = true })
hl.bind(mainMod .. " + ALT + SHIFT + down",  hl.dsp.window.move({ x = 0,   y = 10,  relative = true }), { repeating = true })

---------------------------------------------------------------- MISC WORKSPACE
hl.bind(mainMod .. " + TAB",           hl.dsp.focus({ workspace = "previous" }))
hl.bind(mainMod .. " + grave",         hl.dsp.workspace.toggle_special())
hl.bind(mainMod .. " + SHIFT + grave", hl.dsp.window.move({ workspace = "special" }))
hl.bind(mainMod .. " + SHIFT + I",     hl.dsp.window.pin())

-------------------------------------------------------------- PASSTHRU SUBMAP
hl.bind(mainMod .. " + SHIFT + V", hl.dsp.submap("passthru"))
hl.define_submap("passthru", function()
    hl.bind("SUPER + Escape", hl.dsp.submap("reset"))
end)

------------------------------------------------------------ KEYBOARD LAYOUT
hl.bind(mainMod .. " + SHIFT + Space", hl.dsp.exec_cmd("hyprctl switchxkblayout at-translated-set-2-keyboard next"))

--------------------------------------------------------------------- GESTURES
hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })
