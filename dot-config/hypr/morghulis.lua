-- Morghulis (widget shell) keybinds + layer animations.

--------------------------------------------------------------------- BINDS
hl.bind("SUPER + R", hl.dsp.exec_cmd("/usr/bin/morghulis -q && /usr/bin/uwsm app -- morghulis"))

-- These were bindr (trigger on release).
hl.bind("SUPER + D", hl.dsp.exec_cmd("/usr/bin/morghulis -t Runner"),       { release = true })
hl.bind("SUPER + X", hl.dsp.exec_cmd("/usr/bin/morghulis -t PowerMenu"),    { release = true })
hl.bind("SUPER + S", hl.dsp.exec_cmd("/usr/bin/morghulis -t ScreenRecord"), { release = true })
hl.bind("SUPER + I", hl.dsp.exec_cmd("/usr/bin/morghulis -i"),              { release = true })

---------------------------------------------------------------- LAYER RULES
hl.layer_rule({ name = "morghulis-navbar",        match = { namespace = "Morghulis.NavBar" },          animation = "slide" })
hl.layer_rule({ name = "morghulis-quickmenu",     match = { namespace = "Morghulis.QuickMenu" },       animation = "slide right" })
hl.layer_rule({ name = "morghulis-osd",           match = { namespace = "Morghulis.OnScreenDisplay" }, animation = "slide" })
hl.layer_rule({ name = "morghulis-notifications", match = { namespace = "Morghulis.Notifications" },   no_anim = true })
hl.layer_rule({ name = "morghulis-powermenu",     match = { namespace = "Morghulis.PowerMenu" },       animation = "slide" })
hl.layer_rule({ name = "morghulis-runner",        match = { namespace = "Morghulis.Runner" },          animation = "popin 50%" })
hl.layer_rule({ name = "morghulis-screenrecord",  match = { namespace = "Morghulis.ScreenRecord" },    no_anim = true })
