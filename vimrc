filetype on
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'vim-perl/vim-perl'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-markdown'
Plugin 'quabug/vim-gdscript'
Plugin 'sukima/asciidoc-vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'vimwiki/vimwiki'

Plugin 'tpope/vim-vividchalk'

filetype plugin indent on
set background=dark
try
	colorscheme vividchalk
catch
	" noop
endtry

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

set noexpandtab
" set shiftwidth=8
" set tabstop=8
" set softtabstop=8
set listchars=tab:»·,eol:$
set list

set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set guioptions=aegi
if has('gui_running')
	set guifont=Liberation\ Mono\ 10
endif

set undodir=~/.vim/tmp/undo//
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swp//
set backup
set noswapfile

syntax enable
syntax reset
set modeline
set modelines=1
set foldmethod=syntax
set foldlevelstart=7
let perl_fold=1
let perl_extended_vars=1
set wildmode=longest
set clipboard^=unnamed

set laststatus=2
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" vim go settings
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let mapleader=","

au BufReadPost *.adoc set syntax=asciidoc
" vim: set ft=vim :

let g:fugitive_github_domains = [ 'https://github.internal.digitalocean.com', 'https://git.kernel.org/pub/scm/virt/kvm/kvm.git' ]
