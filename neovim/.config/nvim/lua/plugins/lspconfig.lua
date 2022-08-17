-- setup/lspconfig.lua
require'lspconfig'.bashls.setup{}-- capabilities = capabilities }  -- bash
require'lspconfig'.pylsp.setup{}-- capabilities = capabilities }   -- python
require'lspconfig'.ltex.setup{}-- capabilities = capabilities }    -- latex, markdown, etc.
require'lspconfig'.yamlls.setup{}-- capabilities = capabilities }  -- yaml
require'lspconfig'.jsonls.setup{}-- capabilities = capabilities }  -- json
require'lspconfig'.sumneko_lua.setup{}-- capabilities = capabilities } -- lua
--require'lspconfig'.gopls.setup{}    -- go
--require'lspconfig'.spectral.setup{} -- json/yaml linter
