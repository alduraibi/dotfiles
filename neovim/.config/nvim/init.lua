-- init.lua

-- --vim.api.nvim_del_keymap('v', '<Space>')
-- vim.g.mapleader = ' ' -- Set <leader> as <Space>
-- vim.g.maplocalleader = ' ' -- Set <leader> as <Space> (might not be needed)

-- source local files
require("config.lazy")
require("config.settings")
require("config.keymap")
require("config.aliases")