-- plugins/telescope/keymap.lua

-- usage: map('mode', 'key', 'value', {opts})
local map = vim.keymap.set
local map_opt = { silent = true, noremap = true }

map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', map_opt)
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', map_opt)
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', map_opt)
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', map_opt)

map('n', '<leader>fm', '<cmd>Telescope media_files<cr>', map_opt)

map('n', '<leader>fe', '<cmd>Telescope env<cr>', map_opt)

map('n', '<leader>fs', '<cmd>Telescope luasnip<cr>', map_opt)

map('n', '<leader>fj', '<cmd>Telescope emoji<cr>', map_opt)
map('n', '<leader>fi', '<cmd>Telescope glyph<cr>', map_opt)
