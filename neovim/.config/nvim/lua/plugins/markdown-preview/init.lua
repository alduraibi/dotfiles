-- plugins/markdown-preview/init.lua

local cmd = vim.cmd
local g = vim.g

-- Alias
cmd(':command MP MarkdownPreview')

-- specify browser to open preview page
-- default: ''
g.mkdp_browser = 'firefox'
-- set default theme (dark or light)
-- By default the theme is define according to the preferences of the system
g.mkdp_theme = 'dark'
-- preview page title
-- use a custom markdown style must be absolute path
g.mkdp_markdown_css = '~/.config/nvim/markdown_preview.nvim/markdown.css'
-- use a custom highlight style must absolute path
g.mkdp_highlight_css = '~/.config/nvim/markdown_preview.nvim/highlight.css'
-- ${name} will be replace with the file name
g.mkdp_page_title = '| ${name} |'
