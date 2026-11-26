-- Marka (widget shell) keybinds + layer animations.

--------------------------------------------------------------------- BINDS
hl.bind("SUPER + R", hl.dsp.exec_cmd("~/.local/bin/marka -q && uwsm app -- ~/.local/bin/marka"))

hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("~/.local/bin/marka -t runner"),       { release = true })
hl.bind("SUPER + X",     hl.dsp.exec_cmd("~/.local/bin/marka -t powermenu"),    { release = true })
hl.bind("SUPER + S",     hl.dsp.exec_cmd("~/.local/bin/marka -t screenrecord"), { release = true })
hl.bind("SUPER + I",     hl.dsp.exec_cmd("~/.local/bin/marka -i"),              { release = true })

---------------------------------------------------------------- LAYER RULES
hl.layer_rule({ name = "marka-bar",                match = { namespace = "marka.bar" },                animation = "slide" })
hl.layer_rule({ name = "marka-dock",               match = { namespace = "marka.dock" },               animation = "slide" })
hl.layer_rule({ name = "marka-dock-menu",          match = { namespace = "marka.dock.menu" },          animation = "popin 80%" })
hl.layer_rule({ name = "marka-quickmenu",          match = { namespace = "marka.quickmenu" },          animation = "slide right" })
hl.layer_rule({ name = "marka-notificationcenter", match = { namespace = "marka.notificationcenter" }, animation = "slide right" })
hl.layer_rule({ name = "marka-osd",                match = { namespace = "marka.osd" },                animation = "slide" })
hl.layer_rule({ name = "marka-notifications",      match = { namespace = "marka.notifications" },      no_anim = true })
hl.layer_rule({ name = "marka-powermenu",          match = { namespace = "marka.powermenu" },          animation = "slide" })
hl.layer_rule({ name = "marka-runner",             match = { namespace = "marka.runner" },             animation = "popin 50%" })
hl.layer_rule({ name = "marka-screenrecord",       match = { namespace = "marka.screenrecord" },       no_anim = true })
