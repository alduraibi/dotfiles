-- settings.lua

local o = vim.o
local cmd = vim.cmd

cmd('syntax enable') -- Enables syntax highlighting

-- Enable numbered lines
o.number = true -- Add line numbers
o.relativenumber = true -- Relative line numbers

-- Tab properties
o.expandtab = true -- Converts tabs to white space
o.tabstop = 2 -- Number of columns occupied by a tab character
o.softtabstop = 2 -- See multiple spaces as tabstops so <BS> does the right thing
o.shiftwidth = 2 -- Width for autoindents
o.smarttab = true -- Makes tabbing smarter will realize you have 2 vs 4
o.smartindent = true -- Makes indenting smart
o.autoindent = true -- Good auto indent

-- Search Properties
o.ignorecase = true -- Make searching case insensitive
o.smartcase = true -- ... unless the query has capital letters
o.hlsearch = true -- Highlight search results
o.showmatch = true -- Show matching brackets
o.incsearch = true -- Highlight search results before clicking enter

-- Visual Properties
o.termguicolors = true
o.colorcolumn = '80' -- Enable an 80 column border for good coding style

-- Spell-check
o.spelllang = 'en_us' -- Spell-check language
-- o.spell = true -- Enable spell-checker

-- Misc
o.mouse = 'a' -- Enable mouse
--o.clipboard = 'unnamedplus'  -- default register is clipboard register

o.backspace = 'indent,eol,start' -- Fix backspace in insert

o.hidden = true -- Required to keep multiple buffers open multiple buffers

--o.backup = false        -- This is recommended by coc
--o.writebackup = false   -- This is recommended by coc

o.splitbelow = true -- Horizontal splits will automatically be below
o.splitright = true -- Vertical splits will automatically be to the right
