call plug#begin()
" Plug 'junegunn/fzf', {'branch': 'release'}
" Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-endwise'
Plug 'elixir-editors/vim-elixir'
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'glepnir/oceanic-material'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-telescope/telescope.nvim'
Plug 'rust-lang/rust.vim'
call plug#end()

" nnoremap <c-p> :Files<cr>
nnoremap <c-p> <cmd>Telescope find_files<cr>
nnoremap <c-e> <cmd>Telescope file_browser<cr>
nnoremap <c-o> <cmd>Telescope live_grep<cr>

nnoremap <silent> K :call <SID>show_documentation()<CR>

inoremap <silent><expr> <c-space> coc#refresh()

function! s:show_documentation()
  if (index(['vim', 'help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

augroup fzf
	autocmd!
	autocmd! FileType fzf
	autocmd FileType fzf set laststatus=0 noshowmode noruler
		\| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
augroup END
" nnoremap <c-e> :NERDTreeToggle<cr>
set background=dark

let g:dracula_colorterm = 0
colorscheme dracula_pro

" colorscheme gruvbox 
:set number relativenumber
:set nu rnu
