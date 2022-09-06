-- plugins/trouble/keymap.lua

-- usage: map('mode', 'key', 'value', {opts})
local map = vim.keymap.set
local map_opt = { silent = true, noremap = true }

map('n', '<leader>xx', '<cmd>TroubleToggle<cr>', map_opt)
map('n', '<leader>xw', '<cmd>TroubleToggle workspace_diagnostics<cr>', map_opt)
map('n', '<leader>xd', '<cmd>TroubleToggle document_diagnostics<cr>', map_opt)
map('n', '<leader>xl', '<cmd>TroubleToggle loclist<cr>', map_opt)
map('n', '<leader>xq', '<cmd>TroubleToggle quickfix<cr>', map_opt)
map('n', 'gR', '<cmd>TroubleToggle lsp_references<cr>', map_opt)
