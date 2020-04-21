let $FZF_DEFAULT_COMMAND='fd --type file'
set runtimepath+=/usr/local/opt/fzf

nmap <leader>t :Files<CR>

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \ }
let g:fzf_layout = { 'down': '~22%' }
