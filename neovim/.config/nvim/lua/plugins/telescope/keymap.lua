-- plugins/telescope/keymap.lua

-- usage: map('mode', 'key', 'value', {opts})
local map = vim.keymap.set

map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { silent = true })
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { silent = true })
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { silent = true })
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { silent = true })

map('n', '<leader>fm', '<cmd>Telescope media_files<cr>', { silent = true })

map('n', '<leader>fe', '<cmd>Telescope env<cr>', { silent = true })

map('n', '<leader>fs', '<cmd>Telescope luasnip<cr>', { silent = true })

map('n', '<leader>fj', '<cmd>Telescope emoji<cr>', { silent = true })
map('n', '<leader>fi', '<cmd>Telescope glyph<cr>', { silent = true })
