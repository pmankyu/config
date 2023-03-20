syntax on
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set cindent
"set expandtab
set ai
set number
set hlsearch
set ruler
set colorcolumn=81
highlight Comment ctermfg=green

set clipboard=unnamed " use OS clipboard
set tags=./tags,./../tags,./../../tags,./../../../tags,./../../../../tags

call plug#begin('~/.vim/plugged')
	" The default plugin directory will be as follows:
	"   - Vim (Linux/macOS): '~/.vim/plugged'
	"   - Vim (Windows): '~/vimfiles/plugged'
	"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
	" You can specify a custom plugin directory by passing it as the argument
	"   - e.g. `call plug#begin('~/.vim/plugged')`
	"   - Avoid using standard Vim directory names like 'plugin'

	" Make sure you use single quotes
	Plug 'ludovicchabant/vim-gutentags'	
	" If you don't have nodejs and yarn
	" use pre build, add 'vim-plug' to the filetype list so vim-plug can update this plugin
	" see: https://github.com/iamcco/markdown-preview.nvim/issues/50
	Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

	" If you have nodejs and yarn
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }" Initialize plugin system
		" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
	" You can revert the settings after the call like so:
	"   filetype indent off   " Disable file-type-specific indentation
	"   syntax off            " Disable syntax highlighting
