# 📝 Neovim:
> Neovim is a hyperextensible Vim-based text editor.<sup>[1][desc]</sup>

**Links:** [Website][site] - [Source Code][code] - [Arch Wiki][arch]

- Config folder:
  - Unix: *\~/.config/nvim/*
  - Windows: *\~/AppData/Local/nvim/*

## Plugins
### Management
- [packer.nvim][packer] - Plugin manager
### LSP
- [nvim-lspconfig][lspconfig] - LSP configs
- [mason.nvim][mason] - Package manager for LSP
- [mason-lspconfig.nvim][mason-lspconfig] - bridges mason and lspconfig
- [lsp_signature.nvim][lsp-signature] - Shows function signature
### Cmp
- [nvim-cmp][nvim-cmp] - Completions
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
- [indent-blankline.nvim][indent] - Show indent lines
- [gitsigns.nvim][gitsigns] - Git extras
- [Comment.nvim][comment] - Commenter
- [nvim-autopairs][autopairs] - Close brackets/quotes
- [LuaSnip][luasnip] - Snippets
- [friendly-snippets][friendly-snippets] - Snippets
### Telescope (fzf search)
- [telescope.nvim][telescope] - Fuzzy finder
  - `sudo pacman fd ripgrep`
  - requires: `plenary.nvim`, `nvim-web-devicons`, `nvim-treesitter`, `telescope-fzf-native.nvim`
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

## Language specific
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

[site]: https://neovim.io/
[desc]: https://neovim.io/
[code]: https://github.com/neovim/neovim
[arch]: https://wiki.archlinux.org/title/Neovim

[packer]: https://github.com/wbthomason/packer.nvim
[lspconfig]: https://github.com/neovim/nvim-lspconfig
[mason]: https://github.com/williamboman/mason.nvim
[mason-lspconfig]: https://github.com/williamboman/mason-lspconfig.nvim
[plenary]: https://github.com/nvim-lua/plenary.nvim
[devicons]: https://github.com/kyazdani42/nvim-web-devicons
[treesitter]: https://github.com/nvim-treesitter/nvim-treesitter
[telescope]: https://github.com/nvim-telescope/telescope.nvim
[nord-vim]: https://github.com/arcticicestudio/nord-vim
[nord-nvim]: https://github.com/shaunsingh/nord.nvim
[markdown-preview]: https://github.com/iamcco/markdown-preview.nvim
[tree]: https://github.com/kyazdani42/nvim-tree.lua
[gitsigns]: https://github.com/lewis6991/gitsigns.nvim
[autopairs]: https://github.com/windwp/nvim-autopairs
[indent]: https://github.com/lukas-reineke/indent-blankline.nvim
[which-key]: https://github.com/folke/which-key.nvim

[nerdtree]: https://github.com/preservim/nerdtree
[indentline]: https://github.com/Yggdroot/indentLine
[coc-nvim]: https://github.com/neoclide/coc.nvim

[lsp]: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
[bashls]: https://github.com/bash-lsp/bash-language-server
[ltex]: https://github.com/valentjn/ltex-ls
[yamlls]: https://github.com/redhat-developer/yaml-language-server
[jsonls]: https://github.com/hrsh7th/vscode-langservers-extracted
[pylsp]: https://github.com/python-lsp/python-lsp-server
[sumneko_lua]: https://github.com/sumneko/lua-language-server
