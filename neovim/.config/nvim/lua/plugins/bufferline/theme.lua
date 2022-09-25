-- plugins/bufferline/theme.lua

local nord0 = '#2E3440'
local nord1 = '#3B4252'
local nord9 = '#81A1C1'
local fill = nord0 --'#181c24' if separator_style is "slant"
local indicator = nord9
local bg = nord0
local buffer_bg = nord0
local buffer_bg_selected = nord1
local buffer_bg_visible = '#2A2F3A'

local highlights = {
  fill = {
    bg = fill,
  },
  background = {
    bg = bg,
  },

  buffer_selected = {
    bg = buffer_bg_selected,
  },
  buffer_visible = {
    bg = buffer_bg_visible,
    italic = true,
  },

  numbers = {
    bg = buffer_bg,
  },
  numbers_selected = {
    bg = buffer_bg_selected,
  },
  numbers_visible = {
    bg = buffer_bg_visible,
    italic = true,
  },

  diagnostic = {
    bg = buffer_bg,
  },
  diagnostic_selected = {
    bg = buffer_bg_selected,
    bold = true,
    italic = true,
  },
  diagnostic_visible = {
    bg = buffer_bg_visible,
  },

  hint = {
    bg = buffer_bg,
  },
  hint_visible = {
    bg = buffer_bg_visible,
  },
  hint_selected = {
    bg = buffer_bg_selected,
    bold = true,
    italic = true,
  },
  hint_diagnostic = {
    bg = buffer_bg,
  },
  hint_diagnostic_visible = {
    bg = buffer_bg_visible,
  },
  hint_diagnostic_selected = {
    bg = buffer_bg_selected,
    bold = true,
    italic = true,
  },

  info = {
    bg = buffer_bg,
  },
  info_visible = {
    bg = buffer_bg_visible,
  },
  info_selected = {
    bg = buffer_bg_selected,
    bold = true,
    italic = true,
  },
  info_diagnostic = {
    bg = buffer_bg,
  },
  info_diagnostic_visible = {
    bg = buffer_bg_visible,
  },
  info_diagnostic_selected = {
    bg = buffer_bg_selected,
    bold = true,
    italic = true,
  },

  warning = {
    bg = buffer_bg,
  },
  warning_visible = {
    bg = buffer_bg_visible,
  },
  warning_selected = {
    bg = buffer_bg_selected,
    bold = true,
    italic = true,
  },
  warning_diagnostic = {
    bg = buffer_bg,
  },
  warning_diagnostic_visible = {
    bg = buffer_bg_visible,
  },
  warning_diagnostic_selected = {
    bg = buffer_bg_selected,
    bold = true,
    italic = true,
  },
  error = {
    bg = buffer_bg,
  },
  error_visible = {
    bg = buffer_bg_visible,
  },
  error_selected = {
    bg = buffer_bg_selected,
    bold = true,
    italic = true,
  },
  error_diagnostic = {
    bg = buffer_bg,
  },
  error_diagnostic_visible = {
    bg = buffer_bg_visible,
  },
  error_diagnostic_selected = {
    bg = buffer_bg_selected,
    bold = true,
    italic = true,
  },

  close_button = {
    bg = buffer_bg,
  },
  close_button_visible = {
    bg = buffer_bg_visible,
  },
  close_button_selected = {
    bg = buffer_bg_selected,
  },

  duplicate = {
    bg = buffer_bg,
  },
  duplicate_selected = {
    bg = buffer_bg_selected,
  },
  duplicate_visible = {
    bg = buffer_bg_visible,
  },

  separator = {
    fg = fill,
    bg = buffer_bg,
  },
  separator_selected = {
    fg = fill,
    bg = buffer_bg_selected,
  },
  separator_visible = {
    fg = fill,
    bg = buffer_bg_visible,
  },
  modified = {
    bg = buffer_bg,
  },
  modified_selected = {
    bg = buffer_bg_selected,
  },
  modified_visible = {
    bg = buffer_bg_visible,
  },
  indicator_selected = {
    fg = indicator,
    bg = buffer_bg_selected,
  },
  pick = {
    bg = buffer_bg,
    bold = true,
    italic = true,
  },
  pick_selected = {
    bg = buffer_bg_selected,
    bold = true,
    italic = true,
  },
  pick_visible = {
    bg = buffer_bg_visible,
    bold = true,
    italic = true,
  },
}

return highlights
