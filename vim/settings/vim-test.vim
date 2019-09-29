if has('nvim')
  let g:test#strategy = 'neovim'
elseif has('terminal')
  let g:test#strategy = 'vimterminal'
endif

let test#javascript#jest#options = '-w1'

nmap ts :TestSuite<CR>
nmap tl :TestLast<CR>
nmap tf :TestFile<CR>
nmap tn :TestNearest<CR>
