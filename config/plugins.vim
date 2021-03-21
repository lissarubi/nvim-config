call plug#begin()

Plug '907th/vim-auto-save'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'cohama/lexima.vim'
Plug 'dense-analysis/ale'
Plug 'edersonferreira/dalton-vim'
Plug 'edersonferreira/violenta-vim'
Plug 'flazz/vim-colorschemes'
Plug 'glepnir/dashboard-nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'szw/vim-maximizer'
Plug 'thaerkh/vim-indentguides'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'wellle/targets.vim'

call plug#end()
