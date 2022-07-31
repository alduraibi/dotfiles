-- init.lua
--vim.api.nvim_del_keymap('v', '<Space>')
vim.g.mapleader = ' '       -- Set <leader> as <Space>
vim.g.maplocalleader = ' '  -- Set <leader> as <Space> (might not be needed)

-- source local files
require('plugins')
require('settings')
require('keybinds')
require('aliases')
require('variables')



--
-- LSP config
--
--require'lspconfig'.bashls.setup{}  -- bash
-- sudo npm i -g bash-language-server

--require'lspconfig'.gopls.setup{}    -- go

--require'lspconfig'.ltex.setup{}   -- LaTeX & Markdown, etc
-- yay -S ltex-ls-bin

--require'lspconfig'.marksman.setup{}   -- Markdown
-- yay -S marksman-bin

--require'lspconfig'.jedi_language_server.setup{}   -- python

--require'lspconfig'.pylsp.setup{}    -- python
-- pipx install 'python-lsp-server[all]'

--require'lspconfig'.pyright.setup{}    -- python
-- npm i -g pyright

--require'lspconfig'.dockerls.setup{}   -- dockerfile & docker-compose
-- npm install -g dockerfile-language-server-nodejs

--require'lspconfig'.ansiblels.setup{}    -- ansible
-- npm install -g @ansible/ansible-language-server

--require'lspconfig'.spectral.setup{}   -- JSON/Yaml
-- npm i -g spectral-language-server

--require'lspconfig'.yamlls.setup{}   -- yaml
-- yarn global add yaml-language-server
