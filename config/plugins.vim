call plug#begin()

Plug 'AndrewRadev/sideways.vim'
Plug 'airblade/vim-gitgutter'
Plug 'cohama/lexima.vim'
Plug 'dense-analysis/ale'
Plug 'edersonferreira/dalton-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
Plug 'preservim/tagbar'
Plug 'rhysd/clever-f.vim'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'terryma/vim-multiple-cursors'
Plug 'thaerkh/vim-indentguides'
Plug 'thaerkh/vim-workspace'
Plug 'tyru/caw.vim'
Plug 'vim-airline/vim-airline'

" Plug 'edersonferreira/violenta-vim'
" Plug 'rafi/awesome-vim-colorschemes'
" Plug 'acaverna/caverna-vim-theme'

call plug#end()
