-- plugins/telescope/init.lua
require('plugins.telescope.keymap')

local actions = require('telescope.actions')
local actions_layout = require('telescope.actions.layout')

require('telescope').setup({
  defaults = {
    file_ignore_patterns = {
      '~/Pictures',
      '~/Videos',
      '.git/',
      'vale/styles/',
      '__pycache__',
    },
    mappings = {
      i = {
        ['<Esc>'] = actions.close,
        ['<C-/>'] = 'which_key',
        ['<C-p>'] = actions_layout.toggle_preview,
      },
      n = {
        ['<Esc>'] = actions.close,
      },
    },
  },
  pickers = {
    find_files = {
      --hidden = true,
      find_command = { 'rg', '--files', '--hidden', '-g', '!.git' },
    },
    live_grep = {
      hidden = true,
    },
  },
  extensions = {
    media_files = {
      -- filetypes allowlist
      -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
      filetypes = { 'jpg', 'jpeg', 'png', 'webp', 'mp4' },
      find_cmd = 'rg', -- find command (defaults to `fd`)
    },
    repo = {
      list = {
        search_dirs = {
          '~/code',
        },
      },
    },
  },
})

require('telescope').load_extension('fzf')
