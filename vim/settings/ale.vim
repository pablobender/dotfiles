autocmd FileType javascript let b:ale_linters = ['eslint']

let g:ale_fix_on_save = 1

nmap <C-n> <Plug>(ale_next)
nmap <C-p> <Plug>(ale_previous)
