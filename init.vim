call plug#begin('~/.local/share/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'airblade/vim-gitgutter'
Plug 'moll/vim-node'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-ruby/vim-ruby'
Plug 'yggdroot/indentline'
Plug '~/Projects/vim-better-goto'
call plug#end()

set background=dark

colorscheme gruvbox

set ignorecase
set smartcase
set number
set cursorline
set expandtab
set tabstop=2
set shiftwidth=2
set termguicolors
set mouse=a
set updatetime=100
set clipboard=unnamed

let mapleader=" "

inoremap jk <esc>
nmap <leader>s :w<cr>
nmap <leader>o :FZF<cr>
nmap <leader>ev :vsplit $MYVIMRC<cr>
nmap <leader>n :NERDTreeToggle<cr>

