-- plugins/bufferline/keymap.lua

-- usage: map('mode', 'key', 'value', {opts})
local map = vim.keymap.set

local theme = require('plugins.bufferline.theme')

-- files
-- map('n', '<leader>vt', '<cmd>set showtabline=2<cr>', { silent = true, desc = 'show tabline' })
map('n', '<leader>vt', function()
  require('bufferline').setup({ highlights = theme })
end, { silent = true, desc = 'show tabline' })
map('n', '<leader>vT', '<cmd>set showtabline=0<cr>', { silent = true, desc = 'hide tabline' })
