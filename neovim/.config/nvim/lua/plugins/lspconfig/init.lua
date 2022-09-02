-- plugins/lspconfig.lua

local capabilities = {
  require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
}

require('lspconfig').bashls.setup({ capabilities = capabilities }) -- bash
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
require('lspconfig').yamlls.setup({ capabilities = capabilities }) -- yaml
require('lspconfig').jsonls.setup({ capabilities = capabilities }) -- json

-- termux: `pkg install lua-language-server`
require('lspconfig').sumneko_lua.setup({
  capabilities = capabilities,
}) -- lua

-- LSPs that do not work on termux
if not vim.fn.has('termux') == 1 then
  require('lspconfig').ltex.setup({ capabilities = capabilities }) -- latex, markdown, etc.
  require('lspconfig').taplo.setup({ capabilities = capabilities }) -- toml
end

--require'lspconfig'.gopls.setup{}    -- go
--require'lspconfig'.spectral.setup{} -- json/yaml linter
