-- plugins.lua

local fn = vim.fn
local cmd = vim.cmd

-- Install packer if not already installed
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  cmd [[packadd packer.nvim]]
end

-- Automatically run :PackerCompile whenever plugins.lua is updated with an autocommand:
cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- plugin config file
local function get_config(name)
  return string.format('require("plugins.%s")', name)
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'  -- Packer can manage itself

  use {   -- lsp manager
    "williamboman/mason.nvim",
    config = get_config('mason')
  }

  use {   -- Bridges mason.nvim with nvim-lspconfig
    "williamboman/mason-lspconfig.nvim",
    config = get_config('mason-lspconfig')
  }

  use {   -- Configurations for LSP
    'neovim/nvim-lspconfig',
    config = get_config('lspconfig')
  }

--  use {
--    'hrsh7th/cmp-nvim-lsp', -- show data send by the language server
--    'hrsh7th/cmp-buffer',   -- provides suggestions based on the current file
--    'hrsh7th/cmp-path',     -- gives completions based on the filesystem
--    'hrsh7th/cmp-cmdline',
--    'hrsh7th/nvim-cmp',
--
--    -- For luasnip users.
--    'L3MON4D3/LuaSnip',
--    'saadparwaiz1/cmp_luasnip', -- it shows snippets in the suggestions
--
--    require'cmp'.setup({
--      snippet = {
--        -- REQUIRED - you must specify a snippet engine
--        expand = function(args)
--          require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
--        end,
--      },
--      sources = require'cmp'.config.sources({
--        { name = 'nvim_lsp' },
--        { name = 'luasnip' },   -- For luasnip users.
--      }, {
--        { name = 'buffer' },
--      })
--    })
--
--    ---- Setup lspconfig.
--    --local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
--    ---- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
--    --require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
--    --  capabilities = capabilities
--    --}
--  }

  -- CMP
  --use {   -- A completion plugin 
  --  "hrsh7th/nvim-cmp",   -- A completion plugin 
  --  event = "InsertEnter",
  --  opt = true,
  --  config = get_config("cmp"),
  --  wants = { "LuaSnip" },
  --  requires = {
  --    "hrsh7th/cmp-buffer",   -- provides suggestions based on the current file
  --    "hrsh7th/cmp-path",     -- gives completions based on the filesystem
  --    "hrsh7th/cmp-nvim-lua", -- show data send by the language server
  --    "ray-x/cmp-treesitter",
  --    "hrsh7th/cmp-cmdline",
  --    "saadparwaiz1/cmp_luasnip",
  --    "hrsh7th/cmp-nvim-lsp",
  --    {
  --      "L3MON4D3/LuaSnip",
  --      branch = "master",
  --      wants = "friendly-snippets",
  --      config = get_config("luasnip"),
  --    },
  --    "rafamadriz/friendly-snippets",
  --  },
  --  disable = false,
  --}

  use 'arcticicestudio/nord-vim'  -- Nord colorscheme
  --use {   -- Nord colorscheme (nvim)
  --  'shaunsingh/nord.nvim',
  --  --config = get_config('nord')
  --}

  --use 'nvim-lua/plenary.nvim'   -- Required by many plugins

  use 'kyazdani42/nvim-web-devicons'    -- icon support
  -- requires: a patched font

  use {   -- highlighting
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  use {   -- Markdown Preview
    'iamcco/markdown-preview.nvim',
    run = function() fn['mkdp#util#install']() end
  }

  use {   -- fuzzy finder
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',  -- optional, 
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    config = get_config('telescope')
  }
  -- opt packages: ripgrep, fd

  use {   -- file explorer
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly', -- optional, updated every week. (see issue #1193)
    config = get_config('nvim-tree')
  }

  use {   -- git extras
    'lewis6991/gitsigns.nvim',
    config = get_config('gitsigns')
  }

  use {   -- autopair brackets/quotes
    "windwp/nvim-autopairs",
    config = get_config("nvim-autopairs")
  }

  use {   -- show indent lines
    "lukas-reineke/indent-blankline.nvim",
    config = get_config('indent_blankline')
  }

  use {   -- displays popup with possible keybinds
    "folke/which-key.nvim",
    config = get_config('which-key')
  }


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
