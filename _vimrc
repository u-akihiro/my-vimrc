"�����n�C���C�g
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
"�r�[�v������
set visualbell
set vb t_vb=
"set expandtab
"set colorcolumn=120
"��,�^�u�̉����ݒ�
"set list
"set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<
"�t�H���g�̎w��
set guifont=MS_Gothic:h11

"ctr-Tab�ŃE�B���h�E�ړ�
if v:version >= 700
    nnoremap <C-Tab>   gt
    nnoremap <C-S-Tab> gT
endif
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk

