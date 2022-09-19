-- plugins/mason-null-ls/init.lua

local excluded = {}

-- `pkg install stylua`
local excluded_termux = {
  -- lua
  'stylua', -- formatter
}

if vim.fn.has('termux') == 1 then
  for _, v in ipairs(excluded_termux) do
    table.insert(excluded, v)
  end
end

require('mason-null-ls').setup({
  -- if set to true, the tool will check null-ls for the available sources,
  -- and then install the dependency(ies) if available in mason.
  -- Default: true
  automatic_installation = { exclude = excluded },
  -- automatic_installation = true,
})
