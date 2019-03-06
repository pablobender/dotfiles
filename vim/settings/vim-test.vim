if has('nvim') || has('terminal')
  function! VimTerminalTestStrategy(cmd)
    if has('nvim')
      exec 'botright 22 split term://' . a:cmd
      return
    exec 'botright terminal ++rows=22 ' . a:cmd
  endfunction

  let g:test#custom_strategies = { 'VimTerminal': function('VimTerminalTestStrategy') }
  let g:test#strategy = 'VimTerminal'
endif
