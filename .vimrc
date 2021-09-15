
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'valloric/youcompleteme'
Plug 'joshdick/onedark.vim'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
call plug#end()

let mapleader="\<Space>"
let maplocalleader="\<Space>"

"Syntaxing languages
"au BufRead,BufNewFile *.maude set filetype=maude
"au BufRead,BufNewFile *.txt set filetype=txt
"au BufRead,BufNewFile *.md set filetype=md_mine


"Config
"nnoremap <leader>o :hi Normal guibg=NONE ctermbg=NONE<cr>
"nnoremap <leader>O :hi Normal guibg=#282C34 ctermbg=235<cr>


"Visual
vnoremap <C-j> }
vnoremap <C-k> {
vnoremap <leader>" c""<esc>hp
vnoremap <leader>' c''<esc>hp
vnoremap <leader>[" c[]<esc>hp
vnoremap <leader>{" c{}<esc>hp

"Shortcut macros
inoremap jk <esc>
inoremap Ø {
inoremap Æ }
inoremap ø [
inoremap æ ]


nnoremap <leader># 0i#<esc>A<esc>
nnoremap <leader>/ 0i//<esc>A<esc>

"Insertion
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
nnoremap <leader>( viw<esc>a)<esc>bi(<esc>lel
nnoremap <leader>{ viw<esc>a}<esc>bi{<esc>lel

"Control Spotify with keys
nnoremap ttn :! tt n<cr><cr>
nnoremap ttp :! tt p<cr><cr>
nnoremap ttt :! tt <cr><cr>

"Open file in Firefox (for displaying md)
nnoremap fire :! firefox --new-tab file://%:p <cr><cr>

"Movement
nnoremap <Up> <C-W><up>
nnoremap<Down> <C-W><down>
nnoremap<Left> <C-W><left>
nnoremap<right> <C-W><right>
nnoremap <C-j> }
nnoremap <C-k> {

"Window resizing
nnoremap <C-Left> :vertical res -10<cr>
nnoremap <C-Right> :vertical res +10<cr>
nnoremap <C-Up> :res -5<cr>
nnoremap <C-Down> :res +5<cr>


"Indentation and Fold
nnoremap <C-a> gg=G
nnoremap F <end>v%zf 

"Tabs
nnoremap gr :tabprevious<cr>
nnoremap <leader><leader> :NERDTreeToggle<cr>
nnoremap <leader>t :TagbarToggle<cr>

"Splits
nnoremap <leader><up> :split 
nnoremap <leader><down> :bo split 
nnoremap <leader><left> :vsplit 
nnoremap <leader><right> :bo vsplit 

"Searching
nnoremap m :nohlsearch<cr>


filetype on
filetype plugin on
filetype indent on
set smartindent
autocmd BufRead,BufWritePre *.sh normal gg=G

colorscheme onedark

"Enable code highlighting
"set highlight
"Set UTF-8 as standard
set encoding=utf-8
set fileencoding=utf-8

"Linenumber
set number

"div tab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set foldmethod=expr
set foldexpr=getline(v:lnum)[0]=\"\\t\"
set foldmethod=manual
"visual autocomplete cmd menu
set wildmenu
set showmatch
"better search
set incsearch
set autoindent
"enable mouse in all modes
set mouse=a

set wrap
set shell=/bin/bash
set rnu

set cmdheight=1


"Save changes
set undofile
set undodir=~/.vim/undodir
"saving tmp and swp files in a directory
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
set nocompatible
set backspace=indent,eol,start

set tags=tags

