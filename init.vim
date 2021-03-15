set autoread
set backspace=indent,eol,start
set clipboard=unnamedplus
set cursorline
set encoding=UTF-8
set expandtab
set hidden
set inccommand=split
set incsearch
set laststatus=0
set mouse=a
set nobackup
set noruler
set noshowcmd
set noshowmode
set noswapfile
set nowritebackup
set number
set scrolloff=999
set shiftwidth=2
set smartcase
set smartindent
set t_Co=256
set tabstop=2
set termguicolors
set ttyfast
set undodir=/tmp

" Vim Polyglt Section

let g:polyglot_disabled = ['markdown']

" End Vim Polyglot Section

call plug#begin()

Plug '907th/vim-auto-save'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'cohama/lexima.vim'
Plug 'dense-analysis/ale'
Plug 'mhinz/vim-startify'
Plug 'edersonferreira/dalton-vim'
Plug 'edersonferreira/violenta-vim'
Plug 'flazz/vim-colorschemes'
Plug 'gko/vim-coloresque'
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
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" IndentGuides Section

let g:indentguides_ignorelist = ['markdown', 'go']
let g:indentguides_spacechar = '▏'
let g:indentguides_tabchar = '▏'

" End IndentGuides Section

" Coc Section

let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-tsserver', 'coc-snippets', 'coc-solargraph', 'coc-vetur', 'coc-phpls', 'coc-cord', 'coc-go']

" End Coc Section

" vim-startify Section

function! s:gitModified()
  let files = systemlist('git ls-files -m 2>/dev/null')
  return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
  let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
  return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_lists = [
      \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
      \ { 'type': 'files',     'header': ['   MRU']            },
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
      \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]

" End vim-startify Section

" My maps (binds)
let mapleader = "\<Space>"

" void register maps section

vnoremap <Leader>d "_d
vnoremap <Leader>p "_dP
nnoremap <Leader>dd "_dd
nnoremap <Leader>dj "_dj
nnoremap <Leader>dk "_dk
nnoremap <Leader>di{ "_di{
nnoremap <Leader>di[ "_di[
nnoremap <Leader>di( "_di(
nnoremap <Leader>di" "_di"
nnoremap <Leader>di' "_di'
nnoremap <Leader>di` "_di`
nnoremap <Leader>da{ "_da{
nnoremap <Leader>da[ "_da[
nnoremap <Leader>da( "_da(
nnoremap <Leader>da" "_da"
nnoremap <Leader>da' "_da'
nnoremap <Leader>da` "_da`

" void register maps section end

nnoremap <CR> o<ESC>

nnoremap Q <nop>
nnoremap gs :G<CR>
inoremap <C-v> <ESC>"+pa<CR>
inoremap <silent> <c-j> <ESC>:m +1<CR> i
inoremap <silent> <c-k> <ESC>:m -2<CR> i

nmap <Leader>e <Plug>(Prettier)
nmap <silent> gd <Plug>(coc-definition)
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
nnoremap <C-b> :Buffers<CR>
nnoremap <C-f> :MaximizerToggle<CR>
nnoremap <C-p> :Files .<CR>
nnoremap <C-l> :Lines<CR>
nnoremap <C-q> :qa<CR>
nnoremap <C-w> :w!<CR>
nnoremap <C-x> ggVG=<C-o>
nnoremap <silent> <Leader> e :!prettier % --write<CR><CR>

nnoremap <F1> :bprevious<CR>:echom '<-'<CR>
nnoremap <F2> :bnext<CR>:echom '->'<CR>
nnoremap <F5> :NERDTreeToggle<CR>:echom ''<CR>
nnoremap <F6> :TagbarToggle<CR>
nnoremap <F10> :split term://zsh<CR>i

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
