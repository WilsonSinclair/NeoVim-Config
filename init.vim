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


call plug#end()

color gruvbox-material


nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>"
