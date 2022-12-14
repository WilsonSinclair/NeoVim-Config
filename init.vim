set nocompatible
set showmatch
set tabstop=4
set softtabstop=4
set smarttab
set shiftwidth=4
set autoindent
set number
set relativenumber
set wildmode=longest,list
set mouse=a
set termguicolors

syntax on

call plug#begin()


Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/sainnhe/gruvbox-material', {'as': 'gruvbox-material' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'nvim-tree/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

call plug#end()

color catppuccin-frappe " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha

"NERDTree key remaps
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

"Tab Completion
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>"
