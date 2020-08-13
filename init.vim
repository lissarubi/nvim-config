set noruler
set hidden
set inccommand=split
set number
set backspace=indent,eol,start
set termguicolors
set mouse=a
set ttyfast
set noshowmode
set laststatus=0
set noshowcmd

command WQ wq
command Wq wq
command W w
command Q q
command QW wq

call plug#begin()

Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-gitgutter'
Plug 'cohama/lexima.vim'
Plug '907th/vim-auto-save'
Plug 'tpope/vim-eunuch'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'cseelus/vim-colors-lucid'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'gko/vim-coloresque'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-sleuth'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

let g:auto_save_silent = 1
let g:auto_save_events = ["InsertLeave", "TextChanged"]

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

let g:prettier#quickfix_enabled = 0

autocmd InsertLeave *.js,*.jsx,*.mjs,*.ts,*.css,*.tsx,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier

call plug#end()

set tabstop=2
set shiftwidth=2
set expandtab

" My maps (binds)

nnoremap <silent> <C-W> :w!<Enter>
nnoremap <silent> <C-Q> :qa!<Enter>
nnoremap <C-S> :let g:auto_save = 1<Enter>:echo "Save Mode is enable"<Enter>
nnoremap <C-l> :!markpdf %<Enter><Enter>

nnoremap <silent> <c-j> :m +1<Enter>
nnoremap <silent> <c-k> :m -2<Enter>
inoremap <silent> <c-j> <ESC>:m +1<Enter> i
inoremap <silent> <c-k> <ESC>:m -2<Enter> i
vnoremap <silent> <c-j> :m +1<Enter>
vnoremap <silent> <c-k> :m -2<Enter>
" End My maps (binds)

" Icons

augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END

" End Icons

" Prettier Section

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

" NERDTree Section

autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

" End NERDTree Section

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

" End Vim Arline Section

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

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
nnoremap <c-n> :call OpenTerminal()<CR>

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
