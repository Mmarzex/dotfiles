call plug#begin('~/.vim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'mhartington/oceanic-next'
Plug 'editorconfig/editorconfig-vim'
Plug 'neomake/neomake'
Plug 'mhartington/nvim-typescript'
Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'cohama/lexima.vim'
Plug 'scrooloose/nerdcommenter' 
Plug 'zchee/deoplete-jedi'
Plug 'HerringtonDarkholme/yats.vim'
call plug#end()
let mapleader="\<SPACE>"
let g:deoplete#enable_at_startup = 1

let g:fzf_action = {
	\ 'ctrl-s': 'split',
	\ 'ctrl-v': 'vsplit'
	\ }
nnoremap <c-p> :FZF<cr>

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
colorscheme OceanicNext

let g:airline_theme='oceanicnext'

set nocompatible            " Disable compatibility to old-time vi
set showmatch               " Show matching brackets.
set ignorecase              " Do case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style

call neomake#configure#automake('w')

