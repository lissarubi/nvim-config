set autoread
set paste
set backspace=indent,eol,start
set clipboard=unnamedplus
set encoding=UTF-8
set expandtab
set cursorline
set hidden
set inccommand=split
set laststatus=0
set mouse=a
set nobackup
set noruler
set noshowcmd
set noshowmode
set noswapfile
set nowritebackup
set number
set shiftwidth=2
set t_Co=256
set tabstop=2
set termguicolors
set ttyfast

command Q q
command QW wq
command W w
command WQ wq
command Wq wq

" Vim Polyglt Section

let g:polyglot_disabled = ['markdown']

" End Vim Polyglot Section

call plug#begin()

Plug '907th/vim-auto-save'
Plug 'StanAngeloff/php.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'cohama/lexima.vim'
Plug 'dense-analysis/ale'
Plug 'edersonferreira/dalton-vim'
Plug 'edersonferreira/open.vim'
Plug 'edersonferreira/violenta-vim'
Plug 'flazz/vim-colorschemes'
Plug 'gko/vim-coloresque'
Plug 'justinmk/vim-sneak'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'noahfrederick/vim-laravel'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'thaerkh/vim-indentguides'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tpope/vim-commentary'
Plug 'udalov/kotlin-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'voldikss/vim-floaterm'

call plug#end()

" Vim Sneak Section

map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T

" End Vim Sneak Section

" Snippets Section

imap <C-x> <Plug>(coc-snippets-expand)

vmap <C-a> <Plug>(coc-snippets-select)

let g:coc_snippet_next = 'c-a'

let g:coc_snippet_prev = '<F9>'

imap <C-a> <Plug>(coc-snippets-expand-jump)

xmap <leader>x  <Plug>(coc-convert-snippet)

" End Snippets Section

" Open.vim Section

let g:open#audio = 'celluloid'
let g:open#image = 'sxiv'
let g:open#pdf = 'zathura'
let g:open#video = 'celluloid'

"End Open.vim Section

" IndentGuides Section

let g:indentguides_ignorelist = ['markdown', 'go']
let g:indentguides_spacechar = '▏'
let g:indentguides_tabchar = '▏'

" End IndentGuides Section

" Coc Section

let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-snippets', 'coc-solargraph', 'coc-vetur', 'coc-yank', 'coc-phpls', 'coc-cord', 'coc-go']

" End Coc Section

" Nerd Tree Section

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" End Nerd Tree Section

" My maps (binds)
let mapleader = "\<Space>"

nnoremap Q <nop>
inoremap <C-v> <ESC>"+pa<CR>
inoremap <silent> <c-j> <ESC>:m +1<CR> i
inoremap <silent> <c-k> <ESC>:m -2<CR> i

nmap <Leader>e <Plug>(Prettier)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)

tnoremap <Esc> <C-\><C-n>

tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

nnoremap <C-S> :AutoSaveToggle<CR>
nnoremap <C-b> <cmd>Telescope buffers<cr>
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <C-q> :qa<CR>
nnoremap <C-w> :w!<CR>

nnoremap <F10> :FloatermNew --height=0.9 --width=0.9 --wintype=float --autoclose=2 htop<CR>
nnoremap <F11> :FloatermNew --height=0.9 --width=0.9 --wintype=float --autoclose=2<CR>
nnoremap <F1> :bprevious<CR>:echom '<-'<CR>
nnoremap <F2> :bnext<CR>:echom '->'<CR>
nnoremap <F5> :NERDTreeToggle<CR>:echom ''<CR>
nnoremap <F6> :TagbarToggle<CR>
nnoremap <F9> :FloatermNew --height=0.9 --width=0.9 --wintype=float --autoclose=2 ranger<CR>

nnoremap <silent> <C-y>  :<C-u>CocList -A --normal yank<cr>
nnoremap <silent> <c-j> :m +1<CR>
nnoremap <silent> <c-k> :m -2<CR>

nnoremap cr :CocRestart<CR><CR>
nnoremap db :bw<CR>

vnoremap <C-c> "+y<CR>
vnoremap <C-d> "+d<CR>

vnoremap <silent> <c-j> :m +1<CR>
vnoremap <silent> <c-k> :m -2<CR>

function! NumberToggle()
    if(&nu == 1)
        set nu!
        set rnu
    else
        set nornu
        set nu
    endif
endfunction

nnoremap <C-n> :call NumberToggle()<CR>

" End My maps (binds)

" Theme Section

color dalton

" End Theme Section

" Prettier Section

let g:auto_save_silent = 1
let g:prettier#autoformat = 0
let g:prettier#config#arrow_parens = 'always'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#jsx_bracket_same_line = 'true'
let g:prettier#config#print_width = '80'
let g:prettier#config#semi = 'true'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#tab_width = '2'
let g:prettier#config#trailing_comma = 'all'
let g:prettier#exec_cmd_path = "/home/ederson/.asdf/shims/prettier"
let g:prettier#quickfix_auto_focus = 0
let g:prettier#quickfix_enabled = 0

" End of Prettier Section

" Vim Airline Section

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline_powerline_fonts = 1
let g:airline_section_z = "%3p%% %l:%c"
let g:airline_theme='dalton'

" End Vim Airline Section

" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
"
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nmap <silent> <C-e> <Plug>(ale_next_wrap)

function! LinterStatus() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? 'OK' : printf(
        \   '%d⨉ %d⚠ ',
        \   all_non_errors,
        \   all_errors
        \)
endfunction

set statusline+=%=
set statusline+=\ %{LinterStatus()}

let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
