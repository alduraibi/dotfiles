-- init.lua
--vim.api.nvim_del_keymap('v', '<Space>')
vim.g.mapleader = ' ' -- Set <leader> as <Space>
vim.g.maplocalleader = ' ' -- Set <leader> as <Space> (might not be needed)

-- source local files
require('plugins')
require('settings')
require('keymap')
require('aliases')
require('variables')
