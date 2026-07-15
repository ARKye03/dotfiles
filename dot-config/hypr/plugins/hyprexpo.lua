-- Migrated from plugins/hyprexpo.conf (best-effort)
-- NOTE: kept DISABLED to match the original setup (its `source=` line, and the
-- `hyprpm reload` exec-once, were commented out in hyprland.conf).
--
-- Plugin loading/config and plugin dispatchers are not fully covered by the
-- documented hl.* Lua API, so VERIFY this file before enabling it by
-- uncommenting `require("plugins.hyprexpo")` in hyprland.lua.
--
-- Loading options:
--   a) Keep using hyprpm: re-add an exec-once `hyprpm reload -n` in startup.lua.
--   b) Load the .so directly (adjust the path to your build):
--        hl.plugin.load(os.getenv("HOME") .. "/.local/share/hyprpm/hyprexpo/libhyprexpo.so")

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
