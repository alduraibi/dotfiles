-- plugins/mason-tool-installer.lua
require('mason-tool-installer').setup({
  ensure_installed = {
    -- python
    'pylint', -- linter
    'black', -- formatter
    'isort', -- sort includes
    -- lua
    'stylua', -- formatter
  },
  -- auto_update = true,
})
