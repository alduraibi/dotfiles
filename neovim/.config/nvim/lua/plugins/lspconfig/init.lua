-- plugins/lspconfig.lua

local capabilities = {
  require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
}

require('lspconfig').cssls.setup({ capabilities = capabilities }) -- css
require('lspconfig').gopls.setup({ capabilities = capabilities }) -- go
require('lspconfig').tsserver.setup({ capabilities = capabilities }) -- javascript/typescript
require('lspconfig').jsonls.setup({ capabilities = capabilities }) -- json
require('lspconfig').ltex.setup({ capabilities = capabilities }) -- latex, markdown, etc.
require('lspconfig').pylsp.setup({
  capabilities = capabilities,
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          maxLineLength = 88,
        },
      },
    },
  },
}) -- python
-- require('lspconfig').r_language_server.setup({ capabilities = capabilities }) -- r
require('lspconfig').bashls.setup({ capabilities = capabilities }) -- shell
require('lspconfig').taplo.setup({ capabilities = capabilities }) -- toml
require('lspconfig').yamlls.setup({ capabilities = capabilities }) -- yaml

-- termux: `pkg install lua-language-server`
require('lspconfig').sumneko_lua.setup({
  capabilities = capabilities,
}) -- lua

-- LSPs that do not work on termux
-- if vim.fn.has('termux') == 0 then
-- end
