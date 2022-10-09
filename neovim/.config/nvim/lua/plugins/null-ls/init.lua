-- plugins/null-ls/init.lua

-- code action sources
local code_actions = require('null-ls').builtins.code_actions
-- linter(diagnostic) sources
local linter = require('null-ls').builtins.diagnostics
-- formatting sources
local formatter = require('null-ls').builtins.formatting
-- hover sources
local hover = require('null-ls').builtins.hover
-- completion sources
local completion = require('null-ls').builtins.completion

-- choose which client to use for formatting (currently always null-ls)
local lsp_formatting = function(bufnr)
  vim.lsp.buf.format({
    filter = function(client)
      -- apply whatever logic you want (in this example, we'll only use null-ls)
      return client.name == 'null-ls'
    end,
    bufnr = bufnr,
  })
end
-- if you want to set up formatting on save, you can use this as a callback
local augroup = vim.api.nvim_create_augroup('LspFormatting', {})

require('null-ls').setup({
  sources = {
    -- go
    formatter.goimports,
    -- javascript/typescript
    -- linter.eslint,
    -- lua
    formatter.stylua,
    -- markdown
    -- linter.write-good,
    -- python
    linter.pylint,
    formatter.black,
    formatter.isort, -- sort includes
    -- shell
    formatter.shfmt,
    -- Multi:
    formatter.prettierd, -- json, css, markdown, yaml, js
    -- Language
    linter.misspell,
    -- linter.vale,
    linter.vale.with({
      extra_args = { '--config=' .. vim.fn.stdpath('config') .. '/vale/vale.ini' },
      extra_filetypes = { 'txt', 'text', 'md', 'wiki', 'markdown' },
    }),
    hover.dictionary,
    hover.printenv,
    -- require('null-ls').builtins.diagnostics.vale,
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
          lsp_formatting(bufnr)
        end,
      })
    end
  end,
})

-- -- choose which client to use for formatting (currently always null-ls)
-- local lsp_formatting = function(bufnr)
--   vim.lsp.buf.format({
--     filter = function(client)
--       -- apply whatever logic you want (in this example, we'll only use null-ls)
--       return client.name == 'null-ls'
--     end,
--     bufnr = bufnr,
--   })
-- end
-- -- if you want to set up formatting on save, you can use this as a callback
-- local augroup = vim.api.nvim_create_augroup('LspFormatting', {})
-- -- add to your shared on_attach callback
-- local on_attach = function(client, bufnr)
--   if client.supports_method('textDocument/formatting') then
--     vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
--     vim.api.nvim_create_autocmd('BufWritePre', {
--       group = augroup,
--       buffer = bufnr,
--       callback = function()
--         lsp_formatting(bufnr)
--       end,
--     })
--   end
-- end
