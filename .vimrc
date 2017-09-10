set mouse=a
set ttymouse=xterm2
set clipboard+=unnamed
set backspace=indent,eol,start
set guioptions+=a
set guioptions-=m
set guioptions-=T

set nu!
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set tabstop=4
set autoindent
set expandtab
set shiftwidth=2
syntax on
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
set background=dark

set list
set listchars=tab:»-,trail:-,eol:$,extends:»,precedes:«,nbsp:%

set nocp
set nobackup
set noswapfile
set autoread
set hidden
set showcmd

set cursorline
set cursorcolumn
set smartindent
set visualbell
set showmatch
set wildmode=list:longest

set scrolloff=5

set ignorecase
set incsearch
set wrapscan
set hlsearch

nnoremap <ESC><ESC> :nohlsearch<CR>
inoremap <silent> jj <ESC>

nmap n nzz
nmap N Nzz
nmap * *zz
nmap g* g*zz
nmap g# g#zz

set scrolloff=5
