-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Window settings
config.front_end = "OpenGL"
config.max_fps = 240 -- Set to 240 for 240Hz monitor
config.default_cursor_style = "BlinkingBlock"
config.cursor_blink_rate = 500
config.term = "xterm-256color" -- Set the terminal type
config.font = wezterm.font("JetBrains Mono")
config.font_size = 14.0 -- Adjusted to your preference
config.cell_width = 0.9
config.window_background_opacity = 0.85 -- Set for background transparency
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

-- Colors
config.color_scheme = "Cloud (terminal.sexy)"
config.colors = {
    background = "#282828", -- Gruvbox dark background
    foreground = "#ebdbb2", -- Gruvbox light foreground
    cursor_bg = "#d79921", -- Gruvbox yellow
    cursor_border = "#d79921",
    cursor_fg = "#282828",
    selection_bg = "#3c3836",
    selection_fg = "#ebdbb2",
    ansi = {
        "#1d2021", -- black
        "#fb4934", -- red
        "#b8bb26", -- green
        "#fabd2f", -- yellow
        "#83a598", -- blue
        "#d3869b", -- magenta
        "#8ec07c", -- cyan
        "#ffffff", -- white
    },
    brights = {
        "#665c54", -- bright black
        "#fb4934", -- bright red
        "#b8bb26", -- bright green
        "#fabd2f", -- bright yellow
        "#83a598", -- bright blue
        "#d3869b", -- bright magenta
        "#8ec07c", -- bright cyan
        "#ffffff", -- bright white
    },
}

-- Window frame
config.window_frame = {
    font = wezterm.font({ family = "JetBrains Mono", weight = "Regular" }),
    active_titlebar_bg = "#282828",
}

config.default_prog = { "powershell.exe", "-NoLogo" }
config.initial_cols = 110
config.initial_rows = 25

-- and finally, return the configuration to wezterm
return config
