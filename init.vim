set noruler
set hidden
set inccommand=split
set number
set autoread
set backspace=indent,eol,start
set termguicolors
set mouse=a
set nobackup
set nowritebackup
set noswapfile
set encoding=UTF-8
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

" Vim Polyglt Section

let g:polyglot_disabled = ['markdown']

" End Vim Polyglot Section

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'thaerkh/vim-indentguides'
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-gitgutter'
Plug 'cohama/lexima.vim'
Plug '907th/vim-auto-save'
Plug 'sbdchd/neoformat'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'StanAngeloff/php.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'edersonferreira/dalton-vim'
Plug 'edersonferreira/open.vim'
Plug 'edersonferreira/markdown-preview.vim'
Plug 'edersonferreira/request.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'gko/vim-coloresque'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'noahfrederick/vim-composer'
Plug 'noahfrederick/vim-laravel'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Snippets Section

imap <C-x> <Plug>(coc-snippets-expand)

vmap <C-a> <Plug>(coc-snippets-select)

let g:coc_snippet_next = 'c-a'

let g:coc_snippet_prev = '<F9>'

imap <C-a> <Plug>(coc-snippets-expand-jump)

xmap <leader>x  <Plug>(coc-convert-snippet)

" End Snippets Section

" Open.vim Section

let g:open#image = 'sxiv'
let g:open#pdf = 'zathura'
let g:open#video = 'celluloid'
let g:open#audio = 'celluloid'

"End Open.vim Section

" Markdown Preview Section
"
let g:markdownpreview#browser = 'firefox'

" End Markdown Preview Section

" IndentGuides Section

let g:indentguides_ignorelist = ['markdown']
let g:indentguides_spacechar = '▏'
let g:indentguides_tabchar = '▏'

" End IndentGuides Section

" Coc Section

let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-phpls', 'coc-snippets', 'coc-solargraph', 'coc-vetur']

" End Coc Section

" Snippets Section

" End Snippets Section

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

nnoremap q: <nop>

nnoremap <F5> :NERDTreeToggle<CR>:echom ''<CR>
nnoremap <F6> :TagbarToggle<CR>
nnoremap <C-w> :w!<CR>
nnoremap <C-q> :qa<CR>
nnoremap <Leader>d :bw<CR>
nnoremap <C-S> :AutoSaveToggle<CR>
nnoremap <F1> :bprevious<CR>:echom '<-'<CR>
nnoremap <F2> :bnext<CR>:echom '->'<CR>

autocmd vimEnter *.cpp map <F7> :w <CR> :!g++ --std=c++17 %; if [ -f a.out ]; then time ./a.out; rm a.out; fi<CR>

autocmd vimEnter *.js map <F7> :w <CR> :!node %<CR>

autocmd vimEnter *.rb map <F7> :w <CR> :!ruby %<CR>

autocmd vimEnter *.php map <F7> :w <CR> :!php %<CR>

autocmd vimEnter *.sh map <F7> :w <CR> :!sh %<CR>

nnoremap <Leader>e :Neoformat<CR>
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

" augroup my-glyph-palette
"   autocmd! *
"   autocmd FileType fern call glyph_palette#apply()
"   autocmd FileType nerdtree,startify call glyph_palette#apply()
" augroup END

" End Icons

" Theme Section

color dalton

" End Theme Section

" Vim Airline Section

let g:airline_theme='dalton'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline_powerline_fonts = 1
let g:airline_section_z = "%3p%% %l:%c"

" End Vim Airline Section

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
nnoremap <C-l> :call OpenTerminal()<CR>

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
