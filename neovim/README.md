# 📝 Neovim:
> Neovim is a hyperextensible Vim-based text editor.<sup>[1][desc]</sup>

**Links:** [Website][site] - [Source Code][code] - [Arch Wiki][arch]

- Config folder:
  - Unix: *\~/.config/nvim/*
  - Windows: *\~/AppData/Local/nvim/*

## Plugins
### Management
- [packer.nvim][packer] - Plugin manager
- [nvim-lspconfig][lspconfig] - LSP configs
- [mason.nvim][mason] - Package manager for LSP
- [mason-lspconfig.nvim][mason-lspconfig] - bridges mason and lspconfig
### Visual
- [nord-vim][nord-vim] - Nord color scheme
- [which-key.nvim][which-key] - display popup with possible keybinds
- [markdown-preview.nvim][markdown-preview] - Render markdown in browser tab
### Coding
- [nvim-treesitter][treesitter] - highlighting
- [indent-blankline.nvim][indent] - Show indent lines
- [gitsigns.nvim][gitsigns] - git extras
- [nvim-autopairs][autopairs] - Close brackets/quotes
### Files
- [telescope.nvim][telescope] - fuzzy finder
  - `sudo pacman fd ripgrep`
  - requires: `plenary.nvim`, `nvim-web-devicons`, `nvim-treesitter`
- [nvim-tree.lua][tree] - File explorer
  - requires: `nvim-web-devicons`
### Required
- [plenary.nvim][plenary] - required by other plugins
- [nvim-web-devicons][devicons] - icon support for plugins
  - requires a patched font

## LSP
Check [here][lsp] to find more (automatically installed with mason)
- [bashls][bashls] - Bash
- [yamlls][yamlls] - YAML
- [jsonls][jsonls] - JSON
- [pylsp][pylsp] - Python
- [sumneko_lua][sumneko_lua] - Lua
- [ltex-ls][ltex] - LaTeX, Markdown, etc.

[site]: https://neovim.io/
[desc]: https://neovim.io/
[code]: https://github.com/neovim/neovim
[arch]: https://wiki.archlinux.org/title/Neovim

[packer]: https://github.com/junegunn/vim-plug
[lspconfig]: https://github.com/neovim/nvim-lspconfig
[mason]: https://github.com/williamboman/mason.nvim
[mason-lspconfig]: https://github.com/williamboman/mason-lspconfig.nvim
[plenary]: https://github.com/nvim-lua/plenary.nvim
[devicons]: https://github.com/kyazdani42/nvim-web-devicons
[treesitter]: https://github.com/nvim-treesitter/nvim-treesitter
[telescope]: https://github.com/nvim-telescope/telescope.nvim
[nord-vim]: https://github.com/arcticicestudio/nord-vim
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
