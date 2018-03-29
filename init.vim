call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'moll/vim-node'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'digitaltoad/vim-pug'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'yggdroot/indentline'
Plug 'janko-m/vim-test'
Plug 'junegunn/seoul256.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'
Plug 'sjl/badwolf'
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'
call plug#end()

set background=dark
" colorscheme jellybeans
" colorscheme base16-default-dark
" colorscheme badwolf
colorscheme gruvbox
" colorscheme seoul256

set ignorecase
set smartcase
set showmatch
set number
set cursorline
set expandtab
set tabstop=2
set shiftwidth=2
set termguicolors
set mouse=a
set clipboard+=unnamedplus
set updatetime=100

let g:mapleader = ' ' 
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1
let g:rubycomplete_load_gemfile = 1
let g:rubycomplete_use_bundler = 1

imap jk <Esc>

nmap <leader>s :w<CR>
nmap <leader>o :FZF<CR>
nmap <leader>ev :vsplit $MYVIMRC<CR>
nmap <leader>t :TestNearest<CR>
nmap <leader>T :TestFile<CR>
