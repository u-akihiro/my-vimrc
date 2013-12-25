"""""""""""""""""""""""""""""""""
"
"            基本設定
"
"""""""""""""""""""""""""""""""""

"検索ハイライト
set hlsearch
set showmatch
set tabstop=4
set number
set autoindent
set shiftwidth=4
set ignorecase
set iminsert=0
set imsearch=-1
colorscheme wombat
syntax enable
set directory=/tmp,\ D:\software\tmp
"set enc=utf-8
"set fileencoding=UTF-8
"set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
"set guioptions+=a
set showtabline=2
set nowrap
set ruler

"ビープ音無効
set visualbell
set vb t_vb=
"set expandtab
"set colorcolumn=120

"空白,タブの可視化設定
"set list
"set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<

"フォントの指定
set guifont=MS_Gothic:h11

"ctr-Tabでウィンドウ移動
if v:version >= 700
    nnoremap <C-Tab>   gt
    nnoremap <C-S-Tab> gT
endif
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk

"新しい行を作った時に高度な自動インデントを行う
set smarttab

"バックアップファイルを作成しない
set nobackup

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
