-- ------------------------
-- Config for Windows OS  |
-- ------------------------
local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- Default shell: Git Bash
-- Adjust the path below if Git for Windows is installed somewhere else
config.default_prog = { "C:\\Program Files\\Git\\bin\\bash.exe", "-i", "-l" }

-- Default working directory: %USERPROFILE%, falling back to wezterm's home dir
-- guess if the env var isn't set
config.default_cwd = os.getenv("USERPROFILE") or wezterm.home_dir

config.color_scheme = 'GruvboxDark'
config.font = wezterm.font 'Hack Nerd Font'
config.font_size = 14.0

config.window_background_opacity = 1

return config
