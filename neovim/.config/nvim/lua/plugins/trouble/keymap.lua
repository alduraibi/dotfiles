-- plugins/trouble/keymap.lua

-- usage: map('mode', 'key', 'value', {opts})
local map = vim.keymap.set

map('n', '<leader>xx', '<cmd>TroubleToggle<cr>', { silent = true })
map('n', '<leader>xw', '<cmd>TroubleToggle workspace_diagnostics<cr>', { silent = true })
map('n', '<leader>xd', '<cmd>TroubleToggle document_diagnostics<cr>', { silent = true })
map('n', '<leader>xl', '<cmd>TroubleToggle loclist<cr>', { silent = true })
map('n', '<leader>xq', '<cmd>TroubleToggle quickfix<cr>', { silent = true })
map('n', 'gR', '<cmd>TroubleToggle lsp_references<cr>', { silent = true })
