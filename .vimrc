set nocompatible " be iMproved
filetype off " must be off before Vundle has run
if !isdirectory(expand("~/.vim/bundle/Vundle.vim/.git"))
    !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
endif
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
:silent! Plugin 'gmarik/Vundle.vim'
:silent! Plugin 'tpope/vim-fugitive'
:silent! Plugin 'airblade/vim-gitgutter.git'
:silent! Plugin 'toggle_mouse'
:silent! Plugin 'Mouse-Toggle'
:silent! Plugin 'hammer.vim'
:silent! Plugin 'Tagbar'
:silent! Bundle 'bling/vim-airline'
:silent! Bundle 'tpope/vim-sensible'
:silent! Bundle 'tpope/vim-surround'
:silent! Bundle 'tpope/vim-rails'
:silent! Bundle 'tpope/vim-rake'
:silent! Bundle 'nanotech/jellybeans.vim'
:silent! Bundle 'scrooloose/syntastic'
:silent! Bundle 'scrooloose/nerdtree'
:silent! Bundle 'kien/ctrlp.vim'
:silent! Bundle 'rking/ag.vim'
:silent! Bundle 'kana/vim-textobj-user'
:silent! Bundle 'nelstrom/vim-textobj-rubyblock'
:silent! Bundle 'slim-template/vim-slim'
:silent! Bundle 'zaiste/Atom'

:silent! Plugin 'libperl.vim'
:silent! Bundle 'perlcritic-compiler-script'
:silent! Plugin 'perl-support.vim'
:silent! Plugin 'StyleChecker--perl'
:silent! Bundle 'update_perl_line_directives'
:silent! Plugin 'surround.vim'
:silent! Plugin 'Townk/vim-autoclose'
:silent! Plugin 'vim-kickstart'

:silent! Plugin 'vim-addon-signs'
:silent! Plugin 'vim-symbols-strings'
" All of your Plugins must be added before the following line
call vundle#end()            " required

"filetype plugin indent on    " required

runtime macros/matchit.vim

autocmd QuickFixCmdPost *grep* cwindow

let mapleader=","

"color jellybeans

set cursorline
set expandtab
set modelines=0
set shiftwidth=2
set clipboard=unnamed
set synmaxcol=128
set ttyscroll=10
set encoding=utf-8
set tabstop=4
set wrap
"set number
"set nowritebackup
"set noswapfile
"set nobackup
set hlsearch
set ignorecase
set smartcase

let g:syntastic_enable_perl_checker = 1
let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_check_on_open = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline_detect_modified=1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#syntastic#enabled = 1

let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 0
let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-']

" For Puppet lint
let g:syntastic_puppet_puppetlint_args = "--disable_80chars"

" detect Puppet filetype
autocmd BufRead,BufNewFile *.pp set filetype=puppet
autocmd BufRead,BufNewFile *.pp setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab textwidth=80 smarttab
"
" detect Perl filetype
autocmd BufRead,BufNewFile *.pl set filetype=perl
autocmd BufRead,BufNewFile *.pl setlocal tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab textwidth=80 smarttab

set laststatus=2
