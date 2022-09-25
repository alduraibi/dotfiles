-- plugins/fidget/init.lua
require('fidget').setup({
  fmt = {
    -- function to format each task line
    task = function(task_name, message, percentage)
      return ''
    end,
  },
})
