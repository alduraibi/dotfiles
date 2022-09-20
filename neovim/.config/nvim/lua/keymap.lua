-- keybinds.lua

-- usage: map('mode', 'key', 'value', {opts})
local map = vim.keymap.set
local map_opt = { silent = true, noremap = true }

-- map('n', ';', ':', map_opt) -- Use `;` in normal mode to insert 1 character
-- map('v', ';', ':', map_opt) -- Use `;` in visual mode to insert 1 character

--map('n', '<Space>', 'i <Esc>r')   -- Use <Space> in normal mode to insert 1 character
map('n', '\\', 'i <Esc>r', map_opt) -- Use `,` in normal mode to insert 1 character

-- Use <leader> before yanking and pasting to use system clipboard
map('v', '<leader>y', '"+y', map_opt)
map('n', '<leader>y', '"+y', map_opt)
map('n', '<leader>Y', '"+Y', map_opt)
map('v', '<leader>d', '"+d', map_opt)
map('n', '<leader>d', '"+d', map_opt)
map('n', '<leader>D', '"+D', map_opt)
map('v', '<leader>p', '"+p', map_opt)
map('n', '<leader>p', '"+p', map_opt)
map('n', '<leader>P', '"+P', map_opt)
