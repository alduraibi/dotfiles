# 📝 Neovim:

> Neovim is a hyperextensible Vim-based text editor.<sup>[1][desc]</sup>

**Links:** [Website][site] - [Source Code][code] - [Arch Wiki][arch]

- Config folder:
  - Unix: _\~/.config/nvim/_
  - Windows: _\~/AppData/Local/nvim/_

## Plugins

### Management

- [packer.nvim][packer] - Plugin manager

### LSP

- [nvim-lspconfig][lspconfig] - LSP configs
- [mason.nvim][mason] - Package manager for LSP
- [mason-lspconfig.nvim][mason-lspconfig] - bridges mason and lspconfig
- [mason-tool-installer.nvim][mason-tool-installer] - Install/update LSPs
- [null-ls.nvim][null-ls] - Formatters and Linters

### Cmp

- [nvim-cmp][cmp] - Completions
- [cmp-nvim-lsp][cmp-nvim-lsp] - lsp extension
- [cmp-buffer][cmp-buffer] - Buffer extension
- [cmp-path][cmp-path] - Path extension
- [cmp-cmdline][cmp-cmdline] - cmdline extension
- [cmp-luasnip][cmp-luasnip] - LuaSnip extension
  - requires: `LuaSnip`

### Visual

- ~~[nord-vim][nord-vim] - Nord color scheme~~
- [nord.nvim][nord-nvim] - Nord color scheme ported for Neovim
- [which-key.nvim][which-key] - display popup with possible keybinds
- [markdown-preview.nvim][markdown-preview] - Render markdown in browser tab
- [nvim-colorizer.lua][colorizer] - Color highlighter

### Coding

- [nvim-treesitter][treesitter] - Highlighting
- [trouble.nvim][trouble] - Show diagnostics & references
- [indent-blankline.nvim][indent] - Show indent lines
- [lsp_signature.nvim][lsp-signature] - Shows function signature
- [gitsigns.nvim][gitsigns] - Git extras
- [Comment.nvim][comment] - Commenter
- [nvim-autopairs][autopairs] - Close brackets/quotes
- [LuaSnip][luasnip] - Snippets
- [friendly-snippets][friendly-snippets] - Snippets

### Telescope (fzf search)

- [telescope.nvim][telescope] - Fuzzy finder
  - `sudo pacman fd ripgrep`
  - requires: `plenary.nvim`, `nvim-web-devicons`, `nvim-treesitter`, `telescope-fzf-native.nvim`
- [telescope-fzf-native.nvim][telescope-fzf] - Native support to speed up things
- [telescope-media-files.nvim][telescope-media-files] - Media file extension
- [telescope-env.nvim][telescope-env] - Environment variable extension
- [telescope-emoji.nvim][telescope-emoji] - Emoji extension
- [telescope-glyph.nvim][telescope-glyph] - Font glyph extension
- [telescope-luasnip.nvim][telescope-luasnip] - LuaSnip extension
  - requires: `LuaSnip`

### External

- [nvim-tree.lua][tree] - File explorer
  - requires: `nvim-web-devicons`
- [toggleterm.nvim][toggleterm] - Manage multiple terminal windows

### Required

- [plenary.nvim][plenary] - required by other plugins
- [nvim-web-devicons][devicons] - icon support for plugins
  - requires a patched font

## LSPs, Linters, Formatters

### Python

- [pylsp][pylsp] - LSP
- [pylint][pylint] - Linter
- [black][black] - Formatter
- [isort][isort] - Sort includes

### YAML

- [yamplls][yamlls] - LSP

### JSON

- [jsonls][jsonls] - LSP

### Lua

- [sumneko_lua][sumneko_lua] - LSP
- [stylua][stylua] - Formatter

### Bash

- [bashls][bashls] - LSP

### LaTeX

- [ltex-ls][ltex] - LSP (LaTeX, Markdown, etc.)
  Check [here][lsp] to find more LSPs (automatically installed with mason)

<!-- General -->

[site]: https://neovim.io/
[desc]: https://neovim.io/
[code]: https://github.com/neovim/neovim
[arch]: https://wiki.archlinux.org/title/Neovim

<!-- Plugins -->

[packer]: https://github.com/wbthomason/packer.nvim
[lspconfig]: https://github.com/neovim/nvim-lspconfig
[mason]: https://github.com/williamboman/mason.nvim
[mason-lspconfig]: https://github.com/williamboman/mason-lspconfig.nvim
[mason-tool-installer]: https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim
[null-ls]: https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/MAIN.md
[cmp]: https://github.com/hrsh7th/nvim-cmp
[cmp-nvim-lsp]: https://github.com/hrsh7th/cmp-nvim-lsp
[cmp-buffer]: https://github.com/hrsh7th/cmp-buffer
[cmp-path]: https://github.com/hrsh7th/cmp-path
[cmp-cmdline]: https://github.com/hrsh7th/cmp-cmdline
[cmp-luasnip]: https://github.com/saadparwaiz1/cmp_luasnip
[nord-vim]: https://github.com/arcticicestudio/nord-vim
[nord-nvim]: https://github.com/shaunsingh/nord.nvim
[which-key]: https://github.com/folke/which-key.nvim
[markdown-preview]: https://github.com/iamcco/markdown-preview.nvim
[colorizer]: https://github.com/NvChad/nvim-colorizer.lua
[treesitter]: https://github.com/nvim-treesitter/nvim-treesitter
[trouble]: https://github.com/folke/trouble.nvim
[indent]: https://github.com/lukas-reineke/indent-blankline.nvim
[lsp-signature]: https://github.com/ray-x/lsp_signature.nvim
[gitsigns]: https://github.com/lewis6991/gitsigns.nvim
[comment]: https://github.com/numToStr/Comment.nvim
[autopairs]: https://github.com/windwp/nvim-autopairs
[luasnip]: https://github.com/L3MON4D3/LuaSnip
[friendly-snippets]: https://github.com/rafamadriz/friendly-snippets
[telescope]: https://github.com/nvim-telescope/telescope.nvim
[telescope-fzf]: https://github.com/nvim-telescope/telescope-fzf-native.nvim
[telescope-media-files]: https://github.com/nvim-telescope/telescope-media-files.nvim
[telescope-env]: https://github.com/LinArcX/telescope-env.nvim
[telescope-emoji]: https://github.com/xiyaowong/telescope-emoji.nvim
[telescope-glyph]: https://github.com/ghassan0/telescope-glyph.nvim
[telescope-luasnip]: https://github.com/benfowler/telescope-luasnip.nvim
[tree]: https://github.com/kyazdani42/nvim-tree.lua
[toggleterm]: https://github.com/akinsho/toggleterm.nvim
[plenary]: https://github.com/nvim-lua/plenary.nvim
[devicons]: https://github.com/kyazdani42/nvim-web-devicons

<!-- LSPs, Formatters, Linters -->

[lsp]: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
[pylsp]: https://github.com/python-lsp/python-lsp-server
[pylint]: https://github.com/PyCQA/pylint
[black]: https://github.com/psf/black
[isort]: https://github.com/PyCQA/isort
[yamlls]: https://github.com/redhat-developer/yaml-language-server
[jsonls]: https://github.com/hrsh7th/vscode-langservers-extracted
[sumneko_lua]: https://github.com/sumneko/lua-language-server
[stylua]: https://github.com/JohnnyMorganz/StyLua
[bashls]: https://github.com/bash-lsp/bash-language-server
[ltex]: https://github.com/valentjn/ltex-ls
