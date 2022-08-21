
-- usage: map('mode', 'key', 'value', {opts})
local map=vim.keymap.set

map('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<cr>', { silent = true })
map('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<cr>', { silent = true })
map('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<cr>', { silent = true })
map('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<cr>', { silent = true })
