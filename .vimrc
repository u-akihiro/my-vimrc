"""""""""""""""""""""""""""""""""
"
"            基本設定
"
"""""""""""""""""""""""""""""""""

"文字コードの指定
set encoding=utf8
set fileencoding=utf-8

"タブ代わりに空白文字を指定する
set expandtab

"行番号を表示する
set number

"閉括弧が入力された時、対応する括弧を強調する
set showmatch

"新しい行のインデントを現在行と同じにする
set autoindent

"新しい行を作った時に高度な自動インデントを行う
set smarttab

"バックアップファイルを作成しない
set nobackup

"Syntax highlightを有効
syntax on

"その他
set tabstop=4
set shiftwidth=4
set nowrap
set scrolloff=5

set infercase
set ignorecase
"set virtualedit=all
set hlsearch
set showcmd
set visualbell t_vb =
set t_vb = 

" set foldmethod=indent
" set foldlevel=0
" set foldcolumn=3

"""""""""""""""""""""""""""""""""
"
"             拡張機能
"
"""""""""""""""""""""""""""""""""

" Package管理ツール(NeoBundle)の設定
set nocompatible                     " viとの互換性をとらない(vimの独自拡張機能を使うため)
filetype off                         "ファイル形式の検出を無効化

"neobudle.vimのディレクトリを指定
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

"プラグインインストールディレクトリを指定
call neobundle#rc(expand('~/.vim/bundle/'))

" NeoBundle 自体を管理
NeoBundleFetch 'Shougo/neobundle.vim'

"プラグインで非同期通信を可能にする
NeoBundle 'Shougo/vimproc', {
 \ 'build' : {
 \     'windows' : 'make -f make_mingw32.mak',
 \     'cygwin' : 'make -f make_cygwin.mak',
 \     'mac' : 'make -f make_mac.mak',
 \     'unix' : 'make -f make_unix.mak',
 \    },
 \ }

" インストールしたいプラグインのリスト
"""""""""""" githubリポジトリにあるプラグイン"""""""""
NeoBundle 'Shougo/neocomplcache'       "入力補完を提供する
NeoBundle 'Shougo/neosnippet'          "Snippet入力サポート
NeoBundle 'davidhalter/jedi-vim'       "Python Snippet


"NeoBundle 'Shougo/vimshell'           "vimでterminalを動かす
"NeoBundle 'Shougo/unite.vim'           "ファイラ？ uniteで出力
"NeoBundle 'Shougo/vimfiler.vim'        "ファイラ？
NeoBundle 'Rykka/riv.vim'       "reST用プラグイン

"""""""""""" github以外のGitリポジトリにあるプラグイン """"""""""""""""
"NeoBundle 'git://git.wincent.com/command-t.git'

"""""""""""" vim-scripts リポジトリにあるプラグインを利用する """"""""""""""""
"NeoBundle 'surround.vim'               "HTMLタグなどの囲まれているものの編集補助

"""""""""""" Git以外のリポジトリにあるプラグインを利用する """""""""""""""""""
"NeoBundle 'http://svn.macports.org/repository/macports/contrib/mpvim/'
"NeoBundle 'https://bitbucket.org/ns9tks/vim-fuzzyfinder'

" ファイル形式検出、プラグイン、インデントを ON
filetype plugin indent on

" インストールチェック
NeoBundleCheck
