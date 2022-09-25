-- plugins/telescope/keymap.lua

-- usage: map('mode', 'key', 'value', {opts})
local map = vim.keymap.set

-- telescope
map('n', '<leader>fT', function()
  require('telescope.builtin').builtin({})
end, { silent = true, desc = 'telescope builtins' })

-- files
map('n', '<leader>ff', function()
  require('telescope.builtin').find_files({})
end, { silent = true, desc = 'files' })
map('n', '<leader>fe', function()
  require('telescope').extensions.file_browser.file_browser({})
end, { silent = true, desc = 'file explorer' })
map('n', '<leader>fm', function()
  require('telescope').extensions.media_files.media_files()
end, { silent = true, desc = 'media files' })
map('n', '<leader>fg', function()
  require('telescope.builtin').live_grep({})
end, { silent = true, desc = 'live grep' })

-- neovim
map('n', '<leader>fb', function()
  require('telescope.builtin').buffers({})
end, { silent = true, desc = 'buffers' })

-- help
map('n', '<leader>fh', function()
  require('telescope.builtin').help_tags({})
end, { silent = true, desc = 'help tags' })
map('n', '<leader>fH', function()
  require('telescope.builtin').man_pages({})
end, { silent = true, desc = 'man pages' })

-- system
map('n', '<leader>fv', function()
  require('telescope').extensions.env.env({})
end, { silent = true, desc = 'environment variables' })

-- snippets
map('n', '<leader>fs', function()
  require('telescope').extensions.luasnip.luasnip({})
end, { silent = true, desc = 'snippets' })

-- git repos
map('n', '<leader>fr', function()
  require('telescope').extensions.repo.list({})
end, { silent = true, desc = 'git repos' })

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

-- notifications
map('n', '<leader>fn', function()
  require('telescope').extensions.notify.notify()
end, { silent = true, desc = 'notifications' })

-- clipboard
map('n', '<leader>fy', function()
  require('telescope').extensions.neoclip.default()
end, { silent = true, desc = 'clipboard' })

-- plugins (packer)
map('n', '<leader>fp', function()
  require('telescope').extensions.packer.packer()
end, { silent = true, desc = 'plugins' })

-- dictionary
map('n', '<leader>fw', function()
  require('telescope').extensions.dict.synonyms()
end, { silent = true, desc = 'synonyms' })
