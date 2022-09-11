-- plugins/mason-tool-installer.lua

local ensure_installed = {
  -- css
  'css-lsp', -- lsp
  -- go
  'gopls', -- lsp
  'goimports', -- formatter
  -- javascript/typescript
  -- 'typescript-language-server', -- lsp
  -- 'eslint', -- linter
  -- json
  'json-lsp', -- lsp
  -- latex, markdown, etc.
  'ltex-ls', -- lsp
  -- markdown
  -- 'write-good', --linter
  -- python
  'python-lsp-server', -- lsp
  -- 'debugpy', -- dap
  'pylint', -- linter
  'black', -- formatter
  'isort', -- sort includes
  -- r
  -- 'r-languageserver', -- lsp
  -- shell
  'bash-language-server', -- lsp
  'shfmt', -- formatter
  -- toml
  'taplo', -- lsp
  -- yaml
  'yaml-language-server', -- lsp
  -- Multi:
  'misspell', -- linter (all)
  'prettierd', -- formatter (json, css, markdown, yaml, js, ts, html, flow, jsx, scss, less, vue, angular, graphql)
}
-- Tools that need to be installed manually on termux
-- `pkg install stylua shfmt`
local install_pc = {
  -- lua
  'lua-language-server', -- lsp
  'stylua', -- formatter
  -- markdown
  -- 'marksman', -- lsp
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
