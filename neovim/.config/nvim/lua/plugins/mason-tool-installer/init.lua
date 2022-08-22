-- plugins/mason-tool-installer.lua

local ensure_installed = {
  -- python
  'pylint', -- linter
  'black', -- formatter
  'isort', -- sort includes
  -- json, css, markdown, yaml, js, ts, html, flow, jsx, scss, less, vue, angular, graphql
  'prettierd', -- formatter
}
-- Tools that need to be installed manually on termux
-- `pkg install stylua shfmt`
local install_pc = {
  -- lua
  'stylua', -- formatter
  -- shell
  'shfmt', -- formatter
}

if not vim.fn.has('termux') == 1 then
  for _, v in ipairs(install_pc) do
    table.insert(ensure_installed, v)
  end
end

require('mason-tool-installer').setup({
  ensure_installed = ensure_installed,
  -- auto_update = true,
})
