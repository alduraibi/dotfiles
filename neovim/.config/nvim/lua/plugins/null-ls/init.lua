-- plugins/null-ls/init.lua
local null_ls = require('null-ls')

-- code action sources
local code_actions = null_ls.builtins.code_actions

-- diagnostic sources
local diagnostics = null_ls.builtins.diagnostics

-- formatting sources
local formatting = null_ls.builtins.formatting

-- hover sources
local hover = null_ls.builtins.hover

-- completion sources
local completion = null_ls.builtins.completion

local augroup = vim.api.nvim_create_augroup('LspFormatting', {})
require('null-ls').setup({
  sources = {
    -- python
    diagnostics.pylint,
    formatting.black,
    formatting.isort, -- sort includes

    -- lua
    formatting.stylua,
    -- require("null-ls").builtins.diagnostics.eslint,
    -- require("null-ls").builtins.completion.spell,
  },
  -- you can reuse a shared lspconfig on_attach callback here
  on_attach = function(client, bufnr)
    if client.supports_method('textDocument/formatting') then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd('BufWritePre', {
        group = augroup,
        buffer = bufnr,
        callback = function()
          -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
          vim.lsp.buf.formatting_sync()
        end,
      })
    end
  end,
})

require('null-ls').setup({})
