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

