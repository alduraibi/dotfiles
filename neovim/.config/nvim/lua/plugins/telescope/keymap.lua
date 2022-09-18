-- plugins/telescope/keymap.lua

-- usage: map('mode', 'key', 'value', {opts})
local map = vim.keymap.set

-- files
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { silent = true, desc = 'files' })
map('n', '<leader>fe', '<cmd>Telescope file_browser<cr>', { silent = true, desc = 'file explorer' })
map('n', '<leader>fm', '<cmd>Telescope media_files<cr>', { silent = true, desc = 'media files' })
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { silent = true, desc = 'live grep' })

-- neovim
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { silent = true, desc = 'buffers' })
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { silent = true, desc = 'help tags' })

-- system
map('n', '<leader>fv', '<cmd>Telescope env<cr>', { silent = true, desc = 'environment variables' })

-- code
map('n', '<leader>fs', '<cmd>Telescope luasnip<cr>', { silent = true, desc = 'snippets' })

-- symbols
map('n', '<leader>fj', function()
  require('telescope.builtin').symbols({ sources = { 'emoji' } })
end, { silent = true, desc = 'emojis' })
map('n', '<leader>fi', function()
  require('telescope.builtin').symbols({ sources = { 'nerd' } })
end, { silent = true, desc = 'glyphs' })
map('n', '<leader>f=', function()
  require('telescope.builtin').symbols({ sources = { 'math' } })
end, { silent = true, desc = 'math symbols' })
