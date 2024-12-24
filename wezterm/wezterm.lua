local wezterm = require "wezterm"
local config = wezterm.config_builder()

-- theme
config.color_scheme = "Catppuccin Mocha"

-- font
config.font_size = 16
config.font = wezterm.font("Moralerspace Neon NF")

-- tab
config.show_new_tab_button_in_tab_bar = false
config.tab_bar_at_bottom = true
config.tab_max_width = 32
config.use_fancy_tab_bar = false
config.window_decorations = "RESIZE"

-- others
config.default_cursor_style = "SteadyBar"

return config
