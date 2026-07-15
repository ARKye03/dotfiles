-- I'll impl this plugin from the ground with morghulis, some day I guess
hl.config({
    plugin = {
        hyprexpo = {
            columns          = 3,
            gap_size         = 5,
            bg_col           = "rgb(111111)",
            workspace_method = "center current", -- [center/first] [workspace]
            skip_empty       = true,
        },
    },
})

-- Plugin dispatcher (hyprexpo:expo). The exact Lua form is unverified; the
-- generic global dispatcher is the closest documented equivalent.
hl.bind("SUPER + SHIFT + Space", hl.dsp.global("hyprexpo:expo, toggle"))
hl.bind("SUPER + SHIFT + G",     hl.dsp.global("hyprexpo:expo, select"))
