-- plugins/lspconfig.lua

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require'lspconfig'.bashls.setup{ capabilities = capabilities }  -- bash
require'lspconfig'.pylsp.setup{ capabilities = capabilities }   -- python
require'lspconfig'.yamlls.setup{ capabilities = capabilities }  -- yaml
require'lspconfig'.jsonls.setup{ capabilities = capabilities }  -- json

-- LSPs that do not work on termux
if not vim.fn.has("termux") then
  require'lspconfig'.sumneko_lua.setup{ capabilities = capabilities } -- lua
  require'lspconfig'.ltex.setup{ capabilities = capabilities }    -- latex, markdown, etc.
end

--require'lspconfig'.gopls.setup{}    -- go
--require'lspconfig'.spectral.setup{} -- json/yaml linter
