if !has('nvim')
  function! Vim8TestStrategy(cmd)
    exec 'botright terminal ++rows=22 ' . a:cmd
  endfunction

  let g:test#custom_strategies = { 'Vim8': function('Vim8TestStrategy') }
  let g:test#strategy = 'Vim8'
endif
