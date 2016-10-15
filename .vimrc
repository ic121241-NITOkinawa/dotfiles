colorscheme desert
set nu!
set rnu!
syntax on
set encoding=utf-8
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4
colorscheme koehler

set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

inoremap { {}<LEFT>
inoremap {<ENTER> {}<LEFT><CR><ESC><S-o><SPACE><SPACE><SPACE><SPACE>
inoremap ( ()<LEFT>
inoremap (<ENTER> ()<LEFT><CR><ESC><S-o><SPACE><SPACE><SPACE><SPACE>
inoremap [ []<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
vnoremap [ "zdi^V[<C-R>z]<ESC>
vnoremap " "zdi^V"<C-R>z^V"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>

" If starting gvim && arguments were given
" (assuming double-click on file explorer)
if has('gui_running') && argc()
    let s:running_vim_list = filter(
    \   split(serverlist(), '\n'),
    \   'v:val !=? v:servername')
    " If one or more Vim instances are running
    if !empty(s:running_vim_list)
        " Open given files in running Vim and exit.
        silent execute '!start gvim'
        \   '--servername' s:running_vim_list[0]
        \   '--remote-tab-silent' join(argv(), ' ')
        qa!
    endif
    unlet s:running_vim_list
endif

" vim起動時のみruntimepathにneobundle.vimを追加
set nocompatible
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

" neobundle.vimの初期化 
" NeoBundleを更新するための設定
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

" 読み込むプラグインを記載
NeoBundle 'Shougo/unite.vim'
NeoBundle 'itchyny/lightline.vim'

call neobundle#end()

" 読み込んだプラグインも含め、ファイルタイプの検出、ファイルタイプ別プラグイン/インデントを有効化する
filetype plugin indent on

" インストールのチェック
NeoBundleCheck
