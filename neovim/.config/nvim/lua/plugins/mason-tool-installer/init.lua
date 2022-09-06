-- plugins/mason-tool-installer.lua

local ensure_installed = {
  -- python
  'python-lsp-server', -- lsp
  'pylint', -- linter
  'black', -- formatter
  'isort', -- sort includes
  -- json, css, markdown, yaml, js, ts, html, flow, jsx, scss, less, vue, angular, graphql
  'json-lsp', -- lsp json
  'yaml-language-server', -- lsp yaml
  'prettierd', -- formatter
  -- shell
  'bash-language-server', -- lsp
}
-- Tools that need to be installed manually on termux
-- `pkg install stylua shfmt`
local install_pc = {
  -- lua
  'lua-language-server', -- lsp
  'stylua', -- formatter
  -- shell
  'shfmt', -- formatter
  -- latex, markdown, etc.
  'ltex-ls', -- lsp
  -- toml
  'taplo', -- lsp
}

if vim.fn.has('termux') == 0 then
  for _, v in ipairs(install_pc) do
    table.insert(ensure_installed, v)
  end
end

require('mason-tool-installer').setup({
  ensure_installed = ensure_installed,
  -- auto_update = true,
})
