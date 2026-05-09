local cmd = vim.cmd
local g = vim.g

-- Lua with Lazy.nvim:
return {
  "Mofiqul/adwaita.nvim",
  lazy = false,
  priority = 1000,
  
  -- configure and set on startup
  config = function()
    g.adwaita_darker = true             -- for darker version
    g.adwaita_disable_cursorline = true -- to disable cursorline
    g.adwaita_transparent = true        -- makes the background transparent
    cmd('colorscheme adwaita')
  end
}