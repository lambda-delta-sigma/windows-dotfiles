local wezterm = require("wezterm")
local act = wezterm.action

local config = wezterm.config_builder()
local program_files = os.getenv('ProgramW6432')
  or os.getenv('ProgramFiles')
  or os.getenv('PROGRAMFILES')

if not program_files then
  error('Windows Program Files environment is unavailable')
end

config.default_prog = {
  program_files .. '\\Git\\bin\\bash.exe',
  '-l'
}

config.front_end = "OpenGL"
config.max_fps = 144
config.default_cursor_style = "BlinkingBar"
config.animation_fps = 1
config.cursor_blink_rate = 500
config.term = "xterm-256color"

config.window_background_opacity = 0.9
config.prefer_egl = true
--config.font_size = 18.0

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- tabs
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

config.color_scheme = 'Tokyo Night'

config.window_decorations = "NONE | RESIZE"
config.initial_cols = 80

config.window_close_confirmation = 'NeverPrompt'

config.keys = {
  {
    key = 'w',
    mods = 'CTRL|SHIFT',
    action = act.CloseCurrentTab { confirm = false },
  },
}

return config
