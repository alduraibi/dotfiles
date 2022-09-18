-- plugins/which-key.lua
require('which-key').setup({
  plugins = {
    spelling = {
      enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      suggestions = 10, -- how many suggestions should be shown in the list?
    },
  },
})

require('which-key').register({
  f = { name = 'find' }, -- telescope group name
  x = { name = 'diagnostics' }, -- trouble group name
}, { prefix = '<leader>' })
