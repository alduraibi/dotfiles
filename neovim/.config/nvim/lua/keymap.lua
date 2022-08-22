-- keybinds.lua

-- usage: map('mode', 'key', 'value', {opts})
local map = vim.keymap.set

map('n', ';', ':', { silent = true }) -- Use `;` in normal mode to insert 1 character
map('v', ';', ':', { silent = true }) -- Use `;` in visual mode to insert 1 character

--map('n', '<Space>', 'i <Esc>r')   -- Use <Space> in normal mode to insert 1 character
map('n', '\\', 'i <Esc>r', { silent = true }) -- Use `,` in normal mode to insert 1 character

-- Use <leader> before yanking and pasting to use system clipboard
map('v', '<leader>y', '"+y', { silent = true })
map('n', '<leader>y', '"+y', { silent = true })
map('n', '<leader>Y', '"+Y', { silent = true })
map('v', '<leader>d', '"+d', { silent = true })
map('n', '<leader>d', '"+d', { silent = true })
map('n', '<leader>D', '"+D', { silent = true })
map('v', '<leader>p', '"+p', { silent = true })
map('n', '<leader>p', '"+p', { silent = true })
map('n', '<leader>P', '"+P', { silent = true })
