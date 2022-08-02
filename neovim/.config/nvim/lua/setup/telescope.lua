-- setup/telescope.lua
require('telescope').setup{
  defaults = {
    file_ignore_patterns = {
      '~/Pictures',
      '~/Videos',
      '.git/',
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
