highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%72v', 100)

set rnu
syntax on
set bg=dark
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'git@github/com:klen/ctrlp-vim.git'
Plug 'git@github/com:Valloric/YouCompleteMe.git'
Plug 'mbbill/undotree'
call plug#end()
