-- plugins/mason-lspconfig.lua
require('mason-lspconfig').setup {
  automatic_installation = true,  -- Auto install servers set up via lspconfig
  --ensure_installed = { "bashls", "ltex" }
}
