# Plugins

## vim-gitgutter

[vim-gitgutter](https://github.com/airblade/vim-gitgutter)

A Vim plugin which shows git diff markers in the sign column and stages/previews/undoes hunks and partial hunks.

## lexima.vim

[lexima.vim](https://github.com/cohama/lexima.vim)

Auto close parentheses and repeat by dot dot dot...

## ale

[ale](https://github.com/dense-analysis/ale)

Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP) support

## dalton-vim

[dalton-vim](https://github.com/edersonferreira/dalton-vim)

A minimalistic VIM theme.

## gruvbox

[gruvbox](https://github.com/morhetz/gruvbox)

Retro groove color scheme for Vim

## violenta-vim

[violenta-vim](https://github.com/edersonferreira/violenta-vim)

Violenta's vim theme

## caverna-vim-theme

[caverna-vim-theme](https://github.com/acaverna/caverna-vim-theme)

Caverna Theme for Vim

## vim-hexokinase

[vim-hexokinase](https://github.com/RRethy/vim-hexokinase)

hexokinase.vim - (Neo)Vim plugin for asynchronously displaying the colours in the file (#rrggbb, #rgb, rgb(a)? functions, hsl(a)? functions, web colours, custom patterns)

## fzf.vim

[fzf.vim](https://github.com/junegunn/fzf.vim)

fzf with vim

## coc.nvim

[coc.nvim](https://github.com/neoclide/coc.nvim)

Nodejs extension host for vim & neovim, load extensions like VSCode and host language servers.

## CHADtree

[CHADtree](https://github.com/ms-jpq/chadtree)

File manager for Neovim. Better than NERDTree.

## tagbar

[tagbar](https://github.com/preservim/tagbar)

Vim plugin that displays tags in a window, ordered by scope

## vim-devicons

[vim-devicons](https://github.com/ryanoasis/vim-devicons)

Adds file type icons to Vim plugins such as: NERDTree, vim-airline, CtrlP, unite, Denite, lightline, vim-startify and many more

## vim-polyglot

[vim-polyglot](https://github.com/sheerun/vim-polyglot)

A solid language pack for Vim.

## vim-indentguides

[vim-indentguides](https://github.com/thaerkh/vim-indentguides)

Simple indentation guides for your buffers

## caw.vim

[caw.vim](https://github.com/tyru/caw.vim)

Vim comment plugin: supported operator/non-operator mappings, repeatable by dot-command, 300+ filetypes

## vim-airline

[vim-airline](https://github.com/vim-airline/vim-airline)

lean & mean status/tabline for vim that's light as air

## clever-f.vim

[clever-f.vim](https://github.com/rhysd/clever-f.vim)

Extended f, F, t and T key mappings for Vim.

# Maps

```viml
let mapleader = "\<Space>"

nnoremap <CR> j0

nnoremap Q <nop>
nnoremap gs :G<CR>
inoremap <C-v> <ESC>"+pa<CR>
inoremap <silent> <c-j> <ESC>:m +1<CR> i
inoremap <silent> <c-k> <ESC>:m -2<CR> i

nmap <Leader>e <Plug>(Prettier)
nnoremap <Leader>s :ToggleWorkspace<CR>
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

nnoremap <C-b> :Buffers<CR>
nnoremap <C-p> :Files .<CR>
nnoremap <C-l> :Rg .<CR>
nnoremap <C-q> :qa<CR>
nnoremap <C-w> :w!<CR>
nnoremap <C-y> ggVG=<C-o>
nnoremap <silent> <Leader>e :!prettier % --write<CR><CR>

nnoremap <F1> :bprevious<CR>:echom '<-'<CR>
nnoremap <F2> :bnext<CR>:echom '->'<CR>
nnoremap <F5> <cmd>CHADopen<cr>
nnoremap <F6> :TagbarToggle<CR>
nnoremap <F10> :split term://zsh<CR>i

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

nnoremap <Leader>n :call NumberToggle()<CR>

" void register maps section

nnoremap <Leader>D "_D
nnoremap <Leader>cB "_cB
nnoremap <Leader>cB "_cB
nnoremap <Leader>cW "_cW
nnoremap <Leader>c[ "_c[
nnoremap <Leader>ca" "_ca"
nnoremap <Leader>ca' "_ca'
nnoremap <Leader>ca( "_ca(
nnoremap <Leader>ca[ "_ca[
nnoremap <Leader>ca` "_ca`
nnoremap <Leader>ca{ "_ca{
nnoremap <Leader>cb "_cb
nnoremap <Leader>cc "_cc
nnoremap <Leader>ch "_ch
nnoremap <Leader>ci" "_ci"
nnoremap <Leader>ci' "_ci'
nnoremap <Leader>ci( "_ci(
nnoremap <Leader>ci[ "_ci[
nnoremap <Leader>ci` "_ci`
nnoremap <Leader>ci{ "_ci{
nnoremap <Leader>cj "_cj
nnoremap <Leader>cj "_cj
nnoremap <Leader>ck "_ck
nnoremap <Leader>ck "_ck
nnoremap <Leader>cl "_cl
nnoremap <Leader>ct" "_ct"
nnoremap <Leader>ct' "_ct'
nnoremap <Leader>ct( "_ct(
nnoremap <Leader>ct[ "_ct[
nnoremap <Leader>ct` "_ct`
nnoremap <Leader>ct{ "_ct{
nnoremap <Leader>cw "_cw
nnoremap <Leader>c{ "_c{

nnoremap <Leader>da" "_da"
nnoremap <Leader>da' "_da'
nnoremap <Leader>da( "_da(
nnoremap <Leader>da[ "_da[
nnoremap <Leader>da` "_da`
nnoremap <Leader>da{ "_da{
nnoremap <Leader>dd "_dd
nnoremap <Leader>di" "_di"
nnoremap <Leader>di' "_di'
nnoremap <Leader>di( "_di(
nnoremap <Leader>di[ "_di[
nnoremap <Leader>di` "_di`
nnoremap <Leader>di{ "_di{
nnoremap <Leader>dj "_dj
nnoremap <Leader>dk "_dk
nnoremap <Leader>dt" "_dt"
nnoremap <Leader>dt' "_dt'
nnoremap <Leader>dt( "_dt(
nnoremap <Leader>dt[ "_dt[
nnoremap <Leader>dt` "_dt`
nnoremap <Leader>dt{ "_dt{

nnoremap <Leader>x "_x
vnoremap <Leader>d "_d

" void register maps section end
```
