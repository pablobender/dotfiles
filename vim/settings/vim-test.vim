if has('nvim')
  let g:test#strategy = 'neovim'
elseif has('terminal')
  let g:test#strategy = 'vimterminal'
endif

" if has('nvim') || has('terminal')
"   function! VimTerminalTestStrategy(cmd)
"     if has('nvim')
"       exec 'botright 22 split term://' . a:cmd
"       set winfixheight=22
"       return
"     endif
"     execute "botright terminal ++rows=22 /bin/sh -c \"" . a:cmd . "\""
"     resize 22
"     nnoremap <buffer> <Enter> :q<CR>
"     echo "Press <Enter> to exit test runner terminal (<Ctrl-C> first if command is still running)"
"   endfunction

"   let g:test#custom_strategies = { 'VimTerminal': function('VimTerminalTestStrategy') }
"   let g:test#strategy = 'VimTerminal'
" endif

nmap ts :TestSuite<CR>
nmap tl :TestLast<CR>
nmap tf :TestFile<CR>
nmap tn :TestNearest<CR>
