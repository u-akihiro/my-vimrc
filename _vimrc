"""""""""""""""""""""""""""""""""
"
"            ��{�ݒ�
"
"""""""""""""""""""""""""""""""""

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

"�V�����s����������ɍ��x�Ȏ����C���f���g���s��
set smarttab

"�o�b�N�A�b�v�t�@�C�����쐬���Ȃ�
set nobackup

"""""""""""""""""""""""""""""""""
"
"             �g���@�\
"
"""""""""""""""""""""""""""""""""

" Package�Ǘ��c�[��(NeoBundle)�̐ݒ�
set nocompatible                     " vi�Ƃ̌݊������Ƃ�Ȃ�(vim�̓Ǝ��g���@�\���g������)
filetype off                         "�t�@�C���`���̌��o�𖳌���

"neobudle.vim�̃f�B���N�g�����w��
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

"�v���O�C���C���X�g�[���f�B���N�g�����w��
call neobundle#rc(expand('~/.vim/bundle/'))

" NeoBundle ���̂��Ǘ�
NeoBundleFetch 'Shougo/neobundle.vim'

"�v���O�C���Ŕ񓯊��ʐM���\�ɂ���
NeoBundle 'Shougo/vimproc', {
 \ 'build' : {
 \     'windows' : 'make -f make_mingw32.mak',
 \     'cygwin' : 'make -f make_cygwin.mak',
 \     'mac' : 'make -f make_mac.mak',
 \     'unix' : 'make -f make_unix.mak',
 \    },
 \ }

" �C���X�g�[���������v���O�C���̃��X�g
"""""""""""" github���|�W�g���ɂ���v���O�C��"""""""""
NeoBundle 'Shougo/neocomplcache'       "���͕⊮��񋟂���
NeoBundle 'Shougo/neosnippet'          "Snippet���̓T�|�[�g
NeoBundle 'davidhalter/jedi-vim'       "Python Snippet


"NeoBundle 'Shougo/vimshell'           "vim��terminal�𓮂���
"NeoBundle 'Shougo/unite.vim'           "�t�@�C���H unite�ŏo��
"NeoBundle 'Shougo/vimfiler.vim'        "�t�@�C���H
NeoBundle 'Rykka/riv.vim'       "reST�p�v���O�C��

"""""""""""" github�ȊO��Git���|�W�g���ɂ���v���O�C�� """"""""""""""""
"NeoBundle 'git://git.wincent.com/command-t.git'

"""""""""""" vim-scripts ���|�W�g���ɂ���v���O�C���𗘗p���� """"""""""""""""
"NeoBundle 'surround.vim'               "HTML�^�O�Ȃǂ̈͂܂�Ă�����̂̕ҏW�⏕

"""""""""""" Git�ȊO�̃��|�W�g���ɂ���v���O�C���𗘗p���� """""""""""""""""""
"NeoBundle 'http://svn.macports.org/repository/macports/contrib/mpvim/'
"NeoBundle 'https://bitbucket.org/ns9tks/vim-fuzzyfinder'

" �t�@�C���`�����o�A�v���O�C���A�C���f���g�� ON
filetype plugin indent on

" �C���X�g�[���`�F�b�N
NeoBundleCheck
