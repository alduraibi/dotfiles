-- plugins/telescope/keymap.lua

-- usage: map('mode', 'key', 'value', {opts})
local map = vim.keymap.set

-- files
-- map('n', '<leader>vt', '<cmd>set showtabline=2<cr>', { silent = true, desc = 'show tabline' })
map('n', '<leader>vt', function()
  require('bufferline').setup({})
end, { silent = true, desc = 'show tabline' })
map('n', '<leader>vT', '<cmd>set showtabline=0<cr>', { silent = true, desc = 'hide tabline' })
