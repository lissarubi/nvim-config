let g:coc_global_extensions = ['coc-css', 'coc-emmet', 'coc-go', 'coc-html', 'coc-json', 'coc-phpls', 'coc-snippets', 'coc-solargraph', 'coc-solargraph', 'coc-tsserver', 'coc-vetur']

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
