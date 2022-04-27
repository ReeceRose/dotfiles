let mapleader = " "

syntax on
set nocompatible
set hlsearch
set encoding=utf-8
set number relativenumber
set ruler
set laststatus=2
set clipboard=unnamed
set spelllang=en_us
set autoindent
set colorcolumn=120
set mouse=a
set wildmenu
set noscrollbind
set autochdir

call plug#begin()

Plug 'morhetz/gruvbox'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'vim-airline/vim-airline'

Plug 'simrat39/symbols-outline.nvim'

Plug 'lewis6991/gitsigns.nvim'

Plug 'neovim/nvim-lspconfig'

call plug#end()

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" gruvbox requirment
autocmd vimenter * ++nested colorscheme gruvbox
