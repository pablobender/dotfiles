if has('nvim')
  " https://vi.stackexchange.com/questions/17816/solved-ish-neovim-dont-close-terminal-buffer-after-process-exit
	" au TermOpen  * setlocal nonumber | startinsert
	" au TermClose * setlocal   number | call feedkeys("\<C-\>\<C-n>")
  "
  autocmd TermOpen * startinsert
	autocmd TermClose * call feedkeys("\<C-n>")
endif
