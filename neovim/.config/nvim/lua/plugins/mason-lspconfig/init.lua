-- plugins/mason-lspconfig.lua
local ensure_installed = {
  'pylsp', -- python
  'bashls', -- formatter
  'yamlls', -- yaml
  'json', -- json
}
-- Tools that need to be installed manually on termux
-- `pkg install lua-language-server`
local install_pc = {
  'sumneko_lua', -- lua
  'ltex', -- latex, markdown, etc.
  'taplo', -- toml
}

if not vim.fn.has('termux') == 1 then
  for _, v in ipairs(install_pc) do
    table.insert(ensure_installed, v)
  end
end

require('mason-lspconfig').setup({
  -- automatic_installation = true, -- Auto install servers set up via lspconfig
  ensure_installed = ensure_installed,
})
