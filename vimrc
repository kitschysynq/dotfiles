filetype on
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-markdown'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'msanders/snipmate.vim'
Bundle 'vim-perl/vim-perl'
Bundle 'jnwhiteh/vim-golang'

Bundle 'tpope/vim-vividchalk'

filetype plugin indent on
set background=dark
colorscheme vividchalk

if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
let &cpo=s:cpo_save
unlet s:cpo_save

set autoindent
set cindent
set smartindent

set fileencodings=ucs-bom,utf-8,default,latin1
" set helplang=en
" set history=50
" set nomodeline
" set printoptions=paper:letter
" set ruler

set shiftwidth=8
set tabstop=8
set softtabstop=8
set noexpandtab
set listchars=tab:»·,eol:$
set list

set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set guioptions=aegi

set undodir=~/.vim/tmp/undo//
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swp//
set backup
set noswapfile

syntax enable
set foldmethod=syntax
set foldlevelstart=3
let perl_fold=1
let perl_extended_vars=1

set laststatus=2
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

" vim: set ft=vim :
