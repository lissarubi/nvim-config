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
nnoremap <F5> :NERDTreeToggle<CR>:echom ''<CR>
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
