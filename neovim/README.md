# 📝 Neovim:

> Neovim is a hyperextensible Vim-based text editor.<sup>[1][desc]</sup>

**Links:** [Website] - [Source Code] - [Arch Wiki]

- Config folder:
  - Unix: `~/.config/nvim/`
  - Windows: `~/AppData/Local/nvim/`

## Plugins

### Management

- [packer.nvim] - Plugin manager
- [impatient.nvim] - Improve startup time
- [nvim-lspconfig] - Setup LSPs
- [null-ls.nvim] - Setup formatters and linters
- [mason.nvim] - Package manager for LSPs, formatters, linters, and DAPs
  - [mason-lspconfig.nvim] - bridges mason and lspconfig
  - [mason-null-ls.nvim] - bridges mason and null-ls
  - ~~[mason-tool-installer.nvim] - Install/update mason tools~~
  <!-- - [nvim-dap][dap] - DAPs -->

### Cmp

- [nvim-cmp] - Completions
  - [cmp-nvim-lsp] - lsp extension
  - [cmp-buffer] - Buffer extension
  - [cmp-path] - Path extension
  - [cmp-cmdline] - cmdline extension
  - [cmp-luasnip] - LuaSnip extension
    - requires: `LuaSnip`
  - [cmp-calc] - calculator extension
  - [cmp-dictionary] - dictionary extension

### Visual

- ~~[nord-vim] - Nord color scheme~~
- [nord.nvim] - Nord color scheme ported for Neovim
- [lualine.nvim] - statusline
- [bufferline.nvim] - bufferline
- [nvim-notify] - notification manager
- [which-key.nvim] - display popup with possible keybinds
- [markdown-preview.nvim] - Render markdown in browser tab
- [nvim-colorizer.lua] - Color highlighter

### TreeSitter

- [nvim-treesitter] - Highlighting
  - [nvim-treesitter-refactor] - Refactor module
  - [nvim-treesitter-textobjects] - Syntax aware text-objects, select, move, swap, and peek support.
  - [nvim-treesitter-context] - Show code context

### Coding

- [trouble.nvim] - Show diagnostics & references
- [indent-blankline.nvim] - Show indent lines
- [lsp_signature.nvim] - Shows function signature
- [gitsigns.nvim] - Git extras
- [Comment.nvim] - Commenter
- [nvim-autopairs] - Close brackets/quotes
- [LuaSnip] - Snippets
- [friendly-snippets] - Snippets

### Telescope (fzf search)

- [telescope.nvim] - Fuzzy finder
  - `sudo pacman -S fd ripgrep`
  - requires: `plenary.nvim`, `nvim-web-devicons`, `nvim-treesitter`, `telescope-fzf-native.nvim`
  - [telescope-fzf-native.nvim] - Native support to speed up things
  - [telescope-media-files.nvim] - Find media files
  - [telescope-env.nvim] - Find environment variables
  - [telescope-symbols.nvim] - Find symbols (emoji, glyphs, math, etc.)
  - [telescope-repo.nvim] - Find git repos
  - [telescope-packer.nvim] - Find plugins (packer)
  - [telescope-dict.nvim] - Find synonyms (dictd)
    - `sudo pacman -S dictd` and `yay -S dict-wn dict-moby-thesaurus`
  - [telescope-luasnip.nvim] - Find code snippets (LuaSnip)
    - requires: `LuaSnip`
  - [nvim-neoclip.lua] - Find clipboard entries
  - ~~[telescope-emoji.nvim] - Find emojis~~
  - ~~[telescope-glyph.nvim] - Find font glyphs~~

### External

- [nvim-tree.lua] - File explorer requires: `nvim-web-devicons`
- [toggleterm.nvim] - Manage multiple terminal windows
- [mkdir.nvim] - Create missing directories on save

### Required

- [plenary.nvim] - required by other plugins
- [nvim-web-devicons] - icon support for plugins
  - requires a patched font

## LSPs, Formatters, Diagnostics, DAPs

- Check [here][lsp-packages] to configure LSPs. (automatically installed)
- Check [here][dap-packages] to configure DAPs.
- Check [here][mason-packages] to find more LSPs, DAPs, Linters, and Formatters.

|           Language            |      LSP      |     Formatter      |     Diagnostics      | DAP |         Hover         |
| :---------------------------: | :-----------: | :----------------: | :------------------: | :-: | :-------------------: |
|              CSS              |    [cssls]    |    [prettierd]     |
|              Go               |    [gopls]    |    [goimports]     |
|             HTML              |               |    [prettierd]     |
| JavaScript /<br /> TypeScript |  [tsserver]   |    [prettierd]     |
|             JSON              |   [jsonls]    |    [prettierd]     |
|             LaTeX             |    [ltex]     |
|              Lua              | [sumneko_lua] |      [stylua]      |
|           Markdown            |    [ltex]     |    [prettierd]     |
|            Python             |    [pylsp]    | [black] \| [isort] |       [pylint]       |
|             Shell             |   [bashls]    |      [shfmt]       |                      |     |      [printenv]       |
|             TOML              |    [taplo]    |
|             YAML              |   [yamlls]    |    [prettierd]     |
|           Spelling            |               |                    | [misspell] \| [vale] |     | [dictionary][nl-dict] |

<!-- - [debugpy][debugpy] - Python DAP -->
<!-- ### R -->
<!-- - [r-languageserver][r-languageserver] - LSP -->
<!--   [r-languageserver]: https://github.com/REditorSupport/languageserver -->
<!---->

<!-- General -->

[website]: https://neovim.io/
[desc]: https://neovim.io/
[source code]: https://github.com/neovim/neovim
[arch wiki]: https://wiki.archlinux.org/title/Neovim

<!-- Plugins -->

[packer.nvim]: https://github.com/wbthomason/packer.nvim
[impatient.nvim]: https://github.com/lewis6991/impatient.nvim
[nvim-lspconfig]: https://github.com/neovim/nvim-lspconfig
[mason.nvim]: https://github.com/williamboman/mason.nvim
[mason-lspconfig.nvim]: https://github.com/williamboman/mason-lspconfig.nvim
[mason-null-ls.nvim]: https://github.com/jayp0521/mason-null-ls.nvim
[null-ls.nvim]: https://github.com/jose-elias-alvarez/null-ls.nvim
[mason-tool-installer.nvim]: https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim
[nvim-dap]: https://github.com/mfussenegger/nvim-dap
[nvim-cmp]: https://github.com/hrsh7th/nvim-cmp
[cmp-nvim-lsp]: https://github.com/hrsh7th/cmp-nvim-lsp
[cmp-buffer]: https://github.com/hrsh7th/cmp-buffer
[cmp-path]: https://github.com/hrsh7th/cmp-path
[cmp-cmdline]: https://github.com/hrsh7th/cmp-cmdline
[cmp-luasnip]: https://github.com/saadparwaiz1/cmp_luasnip
[cmp-calc]: https://github.com/hrsh7th/cmp-calc
[cmp-dictionary]: https://github.com/uga-rosa/cmp-dictionary
[nord-vim]: https://github.com/arcticicestudio/nord-vim
[nord.nvim]: https://github.com/shaunsingh/nord.nvim
[lualine.nvim]: https://github.com/nvim-lualine/lualine.nvim
[bufferline.nvim]: https://github.com/akinsho/bufferline.nvim
[nvim-notify]: https://github.com/rcarriga/nvim-notify
[which-key.nvim]: https://github.com/folke/which-key.nvim
[markdown-preview.nvim]: https://github.com/iamcco/markdown-preview.nvim
[nvim-colorizer.lua]: https://github.com/NvChad/nvim-colorizer.lua
[nvim-treesitter]: https://github.com/nvim-treesitter/nvim-treesitter
[nvim-treesitter-refactor]: https://github.com/nvim-treesitter/nvim-treesitter-refactor
[nvim-treesitter-textobjects]: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
[nvim-treesitter-context]: https://github.com/nvim-treesitter/nvim-treesitter-context
[trouble.nvim]: https://github.com/folke/trouble.nvim
[indent-blankline.nvim]: https://github.com/lukas-reineke/indent-blankline.nvim
[lsp_signature.nvim]: https://github.com/ray-x/lsp_signature.nvim
[gitsigns.nvim]: https://github.com/lewis6991/gitsigns.nvim
[comment.nvim]: https://github.com/numToStr/Comment.nvim
[nvim-autopairs]: https://github.com/windwp/nvim-autopairs
[luasnip]: https://github.com/L3MON4D3/LuaSnip
[friendly-snippets]: https://github.com/rafamadriz/friendly-snippets
[telescope.nvim]: https://github.com/nvim-telescope/telescope.nvim
[telescope-fzf-native.nvim]: https://github.com/nvim-telescope/telescope-fzf-native.nvim
[telescope-media-files.nvim]: https://github.com/nvim-telescope/telescope-media-files.nvim
[telescope-env.nvim]: https://github.com/LinArcX/telescope-env.nvim
[telescope-symbols.nvim]: https://github.com/nvim-telescope/telescope-symbols.nvim
[telescope-luasnip.nvim]: https://github.com/benfowler/telescope-luasnip.nvim
[telescope-repo.nvim]: https://github.com/cljoly/telescope-repo.nvim
[telescope-packer.nvim]: https://github.com/nvim-telescope/telescope-packer.nvim
[telescope-dict.nvim]: https://code.sitosis.com/rudism/telescope-dict.nvim
[nvim-neoclip.lua]: https://github.com/AckslD/nvim-neoclip.lua
[telescope-emoji.nvim]: https://github.com/xiyaowong/telescope-emoji.nvim
[telescope-glyph.nvim]: https://github.com/ghassan0/telescope-glyph.nvim
[nvim-tree.lua]: https://github.com/kyazdani42/nvim-tree.lua
[toggleterm.nvim]: https://github.com/akinsho/toggleterm.nvim
[mkdir.nvim]: https://github.com/jghauser/mkdir.nvim
[plenary.nvim]: https://github.com/nvim-lua/plenary.nvim
[nvim-web-devicons]: https://github.com/kyazdani42/nvim-web-devicons

<!-- LSPs, DAPs, Linters, Formatters -->

[mason-packages]: https://github.com/williamboman/mason.nvim/blob/main/PACKAGES.md
[lsp-packages]: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
[dap-packages]: https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation
[cssls]: https://github.com/microsoft/vscode-css-languageservice
[gopls]: https://pkg.go.dev/golang.org/x/tools/gopls
[goimports]: https://pkg.go.dev/golang.org/x/tools/cmd/goimports
[tsserver]: https://github.com/typescript-language-server/typescript-language-server
[jsonls]: https://github.com/hrsh7th/vscode-langservers-extracted
[ltex]: https://github.com/valentjn/ltex-ls
[sumneko_lua]: https://github.com/sumneko/lua-language-server
[stylua]: https://github.com/JohnnyMorganz/StyLua
[pylsp]: https://github.com/python-lsp/python-lsp-server
[debugpy]: https://github.com/microsoft/debugpy
[pylint]: https://github.com/PyCQA/pylint
[black]: https://github.com/psf/black
[isort]: https://github.com/PyCQA/isort
[bashls]: https://github.com/bash-lsp/bash-language-server
[shfmt]: https://github.com/mvdan/sh
[taplo]: https://github.com/tamasfe/taplo
[yamlls]: https://github.com/redhat-developer/yaml-language-server
[prettierd]: https://github.com/fsouza/prettierd
[misspell]: https://github.com/client9/misspell
[vale]: https://vale.sh/
[nl-dict]: https://dictionaryapi.dev/
[printenv]: https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#printenv
