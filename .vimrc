" General Settings

syntax on
filetype plugin indent on

"set number
set relativenumber
set showmode

" Identation
set tabstop=4
set shiftwidth=4
set smartindent

" Search
set hlsearch

" Appearance
syntax on
set background=dark

" Pluggins
call plug#begin('~/.vim/plugged')
Plug 'dense-analysis/ale'
Plug 'vim-python/python-syntax'
Plug 'psf/black'
Plug 'davidhalter/jedi-vim'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-smooth-scroll'
call plug#end()

let g:ale_linters = {'python': ['flake8']}
let g:ale_fixers = {'python': ['black']}
let g:ale_fix_on_save = 1

" disable function paramter suggestion in jedi-vim - python
let g:jedi#show_call_signatures = 0
