-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
    config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.use_ime = true
config.color_scheme = "One Half Black (Gogh)"
config.default_prog = { "nu" }
config.max_fps = 165

-- Acrylic configurations
config.window_background_opacity = 80.0

-- and finally, return the configuration to wezterm
return config
