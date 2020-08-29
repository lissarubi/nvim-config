set noruler
set hidden
set inccommand=split
set number
set backspace=indent,eol,start
set termguicolors
set mouse=a
set nobackup
set nowritebackup
set noswapfile
set ttyfast
set tabstop=2
set noshowmode
set expandtab
set laststatus=0
set noshowcmd
set shiftwidth=2
set clipboard=unnamedplus
set t_Co=256

command WQ wq
command Wq wq
command W w
command Q q
command QW wq

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'thaerkh/vim-indentguides'
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-gitgutter'
Plug 'cohama/lexima.vim'
Plug '907th/vim-auto-save'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'cseelus/vim-colors-lucid'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'gko/vim-coloresque'
Plug 'dense-analysis/ale'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'tpope/vim-sleuth'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" IndentGuides Section

let g:indentguides_ignorelist = ['markdown']
let g:indentguides_spacechar = '▏'
let g:indentguides_tabchar = '▏'

" End IndentGuides Section

let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

let g:auto_save_events = ["InsertLeave", "TextChanged"]

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

nnoremap q: <nop>

nnoremap <F5> :NERDTreeToggle<CR>
nnoremap <silent> <C-W> :w!<CR>
nnoremap <silent> <C-Q> :qa!<CR>
nnoremap <C-S> :AutoSaveToggle<CR>
nnoremap <C-l> :!markpdf %<CR><CR>
nnoremap <C-x> :bnext<CR>
nnoremap <C-i> :bdelete<CR>

autocmd vimEnter *.cpp map <F6> :w <CR> :!clear ; g++ --std=c++17 %; if [ -f a.out ]; then time ./a.out; rm a.out; fi <CR>

let mapleader = "\<Space>"
nnoremap <Leader>e :PrettierAsync<CR>
inoremap <C-v> <ESC>"+pa<CR>
vnoremap <C-c> "+y<CR>
vnoremap <C-d> "+d<CR>

nnoremap <silent> <c-j> :m +1<CR>
nnoremap <silent> <c-k> :m -2<CR>
inoremap <silent> <c-j> <ESC>:m +1<CR> i
inoremap <silent> <c-k> <ESC>:m -2<CR> i
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

" Icons

augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END

" End Icons

" Prettier Section

let g:auto_save_silent = 1
let g:prettier#quickfix_enabled = 0

let g:prettier#quickfix_auto_focus = 0
let g:prettier#config#print_width = '80'
let g:prettier#config#tab_width = '2'
let g:prettier#autoformat = 0
let g:prettier#config#single_quote = 'true'
let g:prettier#config#semi = 'true'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#arrow_parens = 'always'
let g:prettier#config#trailing_comma = 'all'
let g:prettier#config#jsx_bracket_same_line = 'true'

" End of Prettier Section

" Snippets Section

let g:user_emmet_leader_key=','


" End of Snippets Section

" Theme Section

color lucid

" End Theme Section

" Vim Arline Section

let g:airline_theme='distinguished'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline_powerline_fonts = 1
let g:airline_section_z = "%3p%% %l:%c"
let g:airline_section_c = '%-0.10{getcwd()}/%t'

" End Vim Arline Section

" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap <c-y> :call OpenTerminal()<CR>

tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit'
      \}

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
