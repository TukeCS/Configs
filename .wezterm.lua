-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Window settings
config.front_end = "OpenGL"
config.max_fps = 240
config.default_cursor_style = "BlinkingBlock"
config.term = "xterm-256color"
config.font = wezterm.font("JetBrains Mono")
config.font_size = 14.0
config.cell_width = 0.9
config.window_background_opacity = 0.85
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}

-- Tabs
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

-- Key mappings
config.keys = {
    { key = "n", mods = "CTRL|SHIFT", action = act.SplitHorizontal { domain = "CurrentPaneDomain" } },
    { key = "h", mods = "CTRL", action = act.ActivatePaneDirection "Left" },
    { key = "l", mods = "CTRL", action = act.ActivatePaneDirection "Right" },
    { key = "j", mods = "CTRL", action = act.ActivatePaneDirection "Down" },
    { key = "k", mods = "CTRL", action = act.ActivatePaneDirection "Up" },
    { key = "c", mods = "CTRL", action = act.CopyTo "Clipboard" },
    { key = "v", mods = "CTRL", action = act.PasteFrom "Clipboard" },
    { key = "t", mods = "CTRL", action = act.SpawnTab "CurrentPaneDomain" },
    { key = "w", mods = "CTRL", action = act.CloseCurrentTab { confirm = true } },
}

-- Colors (Modified as per your request)
config.colors = {
    background = "#111119", -- Very dark background
    foreground = "#e26cb1", -- Path color
    cursor_bg = "#F18FB0", -- Cursor background
    cursor_border = "#F18FB0", -- Cursor border
    cursor_fg = "#09090d", -- Cursor foreground
    selection_bg = "#F18FB0", -- Selection background
    selection_fg = "#09090d", -- Selection foreground
    ansi = {
        "#140a1d", -- black
        "#B52A5B", -- red
        "#FF4971", -- green
        "#8897F4", -- yellow
        "#bd93f9", -- blue
        "#E9729D", -- magenta
        "#F18FB0", -- cyan
        "#f1c4e0", -- white
    },
    brights = {
        "#a048ed", -- bright black (input color)
        "#B52A5B", -- bright red
        "#FF4971", -- bright green
        "#8897F4", -- bright yellow
        "#bd93f9", -- bright blue
        "#E9729D", -- bright magenta
        "#F18FB0", -- bright cyan
        "#f1c4e0", -- bright white
    },
}

-- Window frame
config.window_frame = {
    font = wezterm.font({ family = "JetBrains Mono", weight = "Regular" }),
    active_titlebar_bg = "#282828",
}

config.default_prog = { "powershell.exe", "-NoLogo" }
config.initial_cols = 120
config.initial_rows = 30

return config
