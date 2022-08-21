-- plugins/telescope/init.lua
require "plugins.telescope.keymap"

local actions = require "telescope.actions"
local actions_layout = require "telescope.actions.layout"

require('telescope').setup{
  defaults = {
    file_ignore_patterns = {
      '~/Pictures',
      '~/Videos',
      '.git/',
      '__pycache__',
    },
    mappings = {
      i = {
        ["<Esc>"] = actions.close,
        ["<C-/>"] = "which_key",
        ["<C-p>"] = actions_layout.toggle_preview,
      },
      n = {
        ["<Esc>"] = actions.close,
      },
    },
  },
  pickers = {
    find_files = {
      --hidden = true,
      find_command = { "rg", "--files", "--hidden", "-g", "!.git" },
    },
    live_grep = {
      hidden = true
    },
    --file_browser = {
    --  hidden = true
    --}
  },
}
