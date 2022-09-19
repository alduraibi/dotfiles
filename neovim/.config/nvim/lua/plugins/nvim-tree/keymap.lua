-- plugins/telescope/keymap.lua

-- usage: map('mode', 'key', 'value', {opts})
local map = vim.keymap.set

-- files
map('n', '<leader>ve', '<cmd>NvimTreeToggle<cr>', { silent = true, desc = 'toggle tree explorer' })
