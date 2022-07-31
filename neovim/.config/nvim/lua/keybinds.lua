-- keybinds.lua

-- usage: map('mode', 'key', 'value')
local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

--map('n', '<Space>', 'i <Esc>r')   -- Use <Space> in normal mode to insert 1 character
map('n', ';', 'i <Esc>r')   -- Use `,` in normal mode to insert 1 character

-- Use <leader> before yanking and pasting to use system clipboard
map('v', '<leader>y', '"+y')
map('n', '<leader>y', '"+y')
map('n', '<leader>Y', '"+Y')
map('v', '<leader>p', '"+p')
map('n', '<leader>p', '"+p')
map('n', '<leader>P', '"+P')


-- " Find files using Telescope command-line sugar.
-- nnoremap <leader>ff <cmd>Telescope find_files<cr>
-- nnoremap <leader>fg <cmd>Telescope live_grep<cr>
-- nnoremap <leader>fb <cmd>Telescope buffers<cr>
-- nnoremap <leader>fh <cmd>Telescope help_tags<cr>
-- 
-- " Using Lua functions
-- nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
-- nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
-- nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
-- nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

-- Telescope
map('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<cr>')
map('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<cr>')
map('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<cr>')
map('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<cr>')
