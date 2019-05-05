" vim:foldmethod=marker:foldlevel=0

" Plugins {{{
call plug#begin()
" Utility {{{
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'valloric/youcompleteme', { 'do': './install.py --ts-completer' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'yggdroot/indentline'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-vinegar'
Plug 'mhinz/vim-startify'
Plug 'junegunn/goyo.vim'
" }}}
" Themes {{{
Plug 'morhetz/gruvbox'
Plug 'junegunn/seoul256.vim'
" }}}
" Git {{{
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
" }}}
" Markdown {{{
Plug 'godlygeek/tabular'
Plug 'gabrielelana/vim-markdown'
" }}}
" Node {{{
Plug 'moll/vim-node'
" }}}
" Javascript {{{
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
" }}}
" Typescript {{{
Plug 'HerringtonDarkholme/yats.vim'
" }}}
" Rails {{{
Plug 'tpope/vim-rails'
" }}}
call plug#end()
" }}}

" Plugins config {{{
let g:jsx_ext_required = 0
let g:signify_realtime = 1
let g:startify_change_to_vcs_root = 0
let g:indentLine_fileTypeExclude = ['startify']
let g:markdown_enable_folding = 1

" Don't match against file names in :Ag
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)
" }}}

" General settings {{{
set termguicolors
set cursorline
set number
set tabstop=2
set shiftwidth=2
set expandtab
set mouse=a
set clipboard=unnamed
set autowriteall
set ignorecase
set list
set listchars=tab:»·,trail:·,nbsp:· 
set signcolumn=yes
set undofile
" }}}

" Folding  settings {{{
set foldmethod=syntax
set foldlevelstart=99
" }}}

" Leader key bindings {{{
let mapleader=" "

nmap <leader>; :Commands<cr>
nmap <leader>f za
nmap <leader>F zA
nmap <leader>o :Files<cr>
nmap <leader>ev :e ~/.config/nvim/init.vim<cr>
nmap <leader>et :e ~/.tmux.conf<cr>
nmap <leader>ea :e ~/.config/alacritty/alacritty.yml<cr>
nmap <leader>d :YcmCompleter GoTo<cr>
nmap <leader>t :YcmCompleter GetType<cr>
nmap <leader>rf :YcmCompleter FixIt<cr>
nmap <leader>rr :YcmCompleter RefactorRename<space>
nmap <leader>ro :YcmCompleter OrganizeImports<cr>
nmap <leader>n :NERDTreeToggle<cr>
nmap <leader>gb :Gblame<cr>
nmap <leader>gd :Gdiff<cr>
nmap <leader>gs :Gstatus<cr>
nmap <leader>a :Ag<cr>
nmap <leader>j :Buffers<cr>
" }}}

" General key bindings {{{
nnoremap <cr> :noh<cr>
nmap <silent> zz :update<cr>
" }}}

" OS X key bindings {{{
nmap <silent> <m-s> :update<cr>
imap <silent> <m-s> <c-o>:update<cr>
" }}}

" Saved macros {{{
" Braces add
nmap <leader>rba wys}{wireturn <esc>

" Braces remove
nmap <leader>rbr /return<cr>dw"qdi{va{xx"qpx:noh<cr>
" }}}

" Theme {{{
set background=dark

let g:gruvbox_italic = 1
let g:gruvbox_sign_column = 'bg0'
let g:lightline = {'colorscheme': 'gruvbox'}

colorscheme gruvbox
" }}}
