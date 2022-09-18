-- plugins/mason-lspconfig.lua

local excluded = {}

-- `pkg install lua-language-server`
local excluded_termux = {
  -- c/c++
  'clangd', -- lsp
  -- lua
  'lua-language-server', -- lsp
  -- markdown
  'marksman', -- lsp
}

if vim.fn.has('termux') == 1 then
  for _, v in ipairs(excluded_termux) do
    table.insert(excluded, v)
  end
end

require('mason-lspconfig').setup({
  -- Whether servers that are set up (via lspconfig) should be automatically installed if they're not already installed.
  -- This setting has no relation with the `ensure_installed` setting.
  -- Can either be:
  --   - false: Servers are not automatically installed.
  --   - true: All servers set up via lspconfig are automatically installed.
  --   - { exclude: string[] }: All servers set up via lspconfig, except the ones provided in the list, are automatically installed.
  --       Example: automatic_installation = { exclude = { "rust_analyzer", "solargraph" } }
  -- automatic_installation = { exclude = excluded },
  automatic_installation = true,
})
