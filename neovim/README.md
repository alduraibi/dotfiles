# 📝 Neovim:
> Neovim is a hyperextensible Vim-based text editor.<sup>[1][desc]</sup>

**Links:** [Website][site] - [Source Code][code] - [Arch Wiki][arch]

- Config folder:
  - Unix: *\~/.config/nvim/*
  - Windows: *\~/AppData/Local/nvim/*

## Plugins
- [packer.nvim][packer] - Plugin manager
- [nvim-lspconfig][lspconfig] - LSP configs
- [plenary.nvim][plenary] - required by other plugins
- [nvim-web-devicons][devicons] - icon support for plugins
  - requires a patched font
- [nvim-treesitter][treesitter] - highlighting
- [nord-vim][nord-vim] - Nord color scheme
- [Markdown-Preview.nvim][markdown-preview] - Markdown preview in browser
- [telescope.nvim][telescope] - fuzzy finder
  - `sudo pacman fd ripgrep`
  - requires: `plenary.nvim`, `nvim-web-devicons`, `nvim-treesitter`
- ~~[coc-nvim][coc-nvim]~~ - 
- ~~[indentLine][indentline]~~ - *show indent guides*
- ~~[NERDTree][nerdtree]~~ - *Directory manager*

## LSP
Check [here][lsp] to add more languages
- [bashls][bashls] - bash
  - `sudo npm i -g bash-language-server`
- [ltex-ls][ltex] - LaTeX, Markdown, etc.
  - `yay -S ltex-ls-bin`

[site]: https://neovim.io/
[desc]: https://neovim.io/
[code]: https://github.com/neovim/neovim
[arch]: https://wiki.archlinux.org/title/Neovim

[packer]: https://github.com/junegunn/vim-plug
[lspconfig]: https://github.com/neovim/nvim-lspconfig
[plenary]: https://github.com/nvim-lua/plenary.nvim
[devicons]: https://github.com/kyazdani42/nvim-web-devicons
[treesitter]: https://github.com/nvim-treesitter/nvim-treesitter
[telescope]: https://github.com/nvim-telescope/telescope.nvim
[nord-vim]: https://github.com/arcticicestudio/nord-vim
[markdown-preview]: https://github.com/iamcco/markdown-preview.nvim

[nerdtree]: https://github.com/preservim/nerdtree
[indentline]: https://github.com/Yggdroot/indentLine
[coc-nvim]: https://github.com/neoclide/coc.nvim

[lsp]: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
[bashls]: https://github.com/bash-lsp/bash-language-server
[ltex]: https://github.com/valentjn/ltex-ls
