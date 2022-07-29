"" Prereqs
if &compatible
    " Vim defaults to `compatible` when selecting a vimrc with the command-line
    " `-u` argument. Override this.
    set nocompatible
endif

"" Plugins
""" Plugin Location
if has('win32') || has('win64')
    let g:plugged_home = "~/AppData/Local/nvim/plugged"
    let g:vim_plug_path = "~/AppData/Local/nvim/site/autoload/plug.vim"

    " " Install vim-plug if not found
    " if empty(glob("~/AppData/Local/nvim/site/autoload/plug.vim"))
    "     silent !iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    "     ni $HOME/AppData/Local/nvim/site/autoload/plug.vim -Force
    " endif

else
    let g:my_config = $XDG_CONFIG_HOME."/nvim/init.vim"
    let g:plugged_home = $XDG_DATA_HOME."/nvim/plugged"

    " Install vim-plug if not found
    if empty(glob($XDG_DATA_HOME."/nvim/site/autoload/plug.vim"))
        silent !curl -fLo $XDG_DATA_HOME"/nvim/site/autoload/plug.vim" --create-dirs 
            \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    endif

endif

""" Plugins
call plug#begin(expand(plugged_home))
    " Plugin Section
 
    " Colorscheme : Nord
    Plug 'arcticicestudio/nord-vim'

    " coc.nvim
    " Plug 'neoclide/coc.nvim', {'branch': 'release'}
  
    " indentLine : Provide indent guides
    " Plug 'Yggdroot/indentLine'
    
    " Markdown Preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

    " vim-go
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

		" python-mode
		" Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

call plug#end()

" Run PlugInstall if there are missing plugins
if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  autocmd VimEnter * PlugInstall --sync | source expand(g:my_config)
endif

"" Plugin Properties
""" indentLine
" Change Indent Char (indentLine)
let g:indentLine_char = '│'

"" markdown-preview.nvim
" specify browser to open preview page
" default: ''
let g:mkdp_browser = 'qutebrowser'
" set default theme (dark or light)
" By default the theme is define according to the preferences of the system
let g:mkdp_theme = 'dark'
" preview page title
" use a custom markdown style must be absolute path
let g:mkdp_markdown_css = '~/.config/nvim/markdown_preview.nvim/markdown.css'
" use a custom highlight style must absolute path
let g:mkdp_highlight_css = '~/.config/nvim/markdown_preview.nvim/highlight.css'
" ${name} will be replace with the file name
let g:mkdp_page_title = '| ${name} |'

"" Config Section [set]
""" Color
colorscheme nord            " Nord colorscheme

""" Enable numbered lines
set number                  " Add line numbers
set relativenumber          " Relative line numbers

""" Set Tab properties
set expandtab               " Converts tabs to white space
set tabstop=2               " Number of columns occupied by a tab character
set softtabstop=2           " See multiple spaces as tabstops so <BS> does the right thing
set shiftwidth=2            " Width for autoindents
set smarttab                " Makes tabbing smarter will realize you have 2 vs 4
set smartindent             " Makes indenting smart
set autoindent              " Good auto indent

""" Set search properties
set ignorecase              " Make searching case insensitive
set smartcase               " ... unless the query has capital letters
set hlsearch                " Highlight search results
set showmatch               " Show matching brackets
set incsearch               " Highlight search results before clicking enter

""" Set visual properties
set colorcolumn=80          " Set an 80 column border for good coding style
set ruler                   " Show the ruler line

""" Spell-check
set spelllang=en            " Spell-check language
"set spell                   " Enable spell-checker

""" Misc
set mouse=a                 " Enable mouse
"set clipboard=unnamedplus   "default register is clipboard register

set backspace=indent,eol,start  " Fix backspace in insert

set hidden                  " Required to keep multiple buffers open multiple buffers

set nobackup                " This is recommended by coc
set nowritebackup           " This is recommended by coc

set splitbelow              " Horizontal splits will automatically be below
set splitright              " Vertical splits will automatically be to the right

syntax enable               " Enables syntax highlighing


"" Aliases [command]
:command Q q
" :command Q! q!
:command W w

:command MP MarkdownPreview
:command UP PlugUpdate
:command PU PlugUpdate

""" Fix :w and :w!
" :w	Now asks to create directories while saving
" :w!	Now forces creating directories while saving
augroup vimrc-auto-mkdir
    autocmd!
    autocmd BufWritePre * call s:auto_mkdir(expand('<afile>:p:h'), v:cmdbang)
    function! s:auto_mkdir(dir, force)
        if !isdirectory(a:dir)
              \   && (a:force
              \       || input("'" . a:dir . "' does not exist. Create? [Y/N]") =~? '^y\%[es]$')
            call mkdir(iconv(a:dir, &encoding, &termencoding), 'p')
        endif
    endfunction
augroup END

"" Keymappings
" Use <Space> in normal mode to insert 1 character
nnoremap <Space> i <Esc>r

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
    nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

"" Misc
" Enable markdown folding
"let g:markdown_folding = 1

