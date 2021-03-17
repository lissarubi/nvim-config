# Plugins

## vim-auto-save

[vim-auto-save](https://github.com/907th/vim-auto-save)

  Automatically save changes to disk in Vim 

## nerdtree-git-plugin

[nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin)

  A plugin of NERDTree showing git status 

## vim-gitgutter

[vim-gitgutter](https://github.com/airblade/vim-gitgutter)

  A Vim plugin which shows git diff markers in the sign column and stages/previews/undoes hunks and partial hunks. 

## lexima.vim

[lexima.vim](https://github.com/cohama/lexima.vim)

  Auto close parentheses and repeat by dot dot dot... 

## ale

[ale](https://github.com/dense-analysis/ale)

  Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP) support 

## vim-startify

[vim-startify](https://github.com/mhinz/vim-startify)

  The fancy start screen for Vim. 

## dalton-vim

[dalton-vim](https://github.com/edersonferreira/dalton-vim)

  A minimalistic VIM theme. 

## violenta-vim

[violenta-vim](https://github.com/edersonferreira/violenta-vim)

  Violenta's vim theme 

## vim-colorschemes

[vim-colorschemes](https://github.com/flazz/vim-colorschemes)

  one colorscheme pack to rule them all! 

## vim-coloresque

[vim-coloresque](https://github.com/gko/vim-coloresque)

  css/less/sass/html color preview for vim 

## fzf

[fzf](https://github.com/junegunn/fzf)

  A command-line fuzzy finder 

## fzf.vim

[fzf.vim](https://github.com/junegunn/fzf.vim)

  fzf with vim

## coc.nvim

[coc.nvim](https://github.com/neoclide/coc.nvim)

  Nodejs extension host for vim & neovim, load extensions like VSCode and host language servers. 

## nerdtree

[nerdtree](https://github.com/preservim/nerdtree)

  A tree explorer plugin for vim.

## tagbar

[tagbar](https://github.com/preservim/tagbar)

  Vim plugin that displays tags in a window, ordered by scope 

## vim-devicons

[vim-devicons](https://github.com/ryanoasis/vim-devicons)

  Adds file type icons to Vim plugins such as: NERDTree, vim-airline, CtrlP, unite, Denite, lightline, vim-startify and many more

## vim-polyglot

[vim-polyglot](https://github.com/sheerun/vim-polyglot)

  A solid language pack for Vim. 

## vim-maximizer

[vim-maximizer](https://github.com/szw/vim-maximizer)

  Maximizes and restores the current window in Vim. 

## vim-indentguides

[vim-indentguides](https://github.com/thaerkh/vim-indentguides)

  Simple indentation guides for your buffers 

## vim-nerdtree-syntax-highlight

[vim-nerdtree-syntax-highlight](https://github.com/tiagofumo/vim-nerdtree-syntax-highlight)

  Extra syntax and highlight for nerdtree files

## vim-commentary

[vim-commentary](https://github.com/tpope/vim-commentary)

  commentary.vim: comment stuff out 

## vim-airline

[vim-airline](https://github.com/vim-airline/vim-airline)

  lean & mean status/tabline for vim that's light as air

# Maps

```viml
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
nnoremap <silent> <Leader>e :!prettier % --write<CR><CR>

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
```
