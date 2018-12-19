" Make it beautiful - colors and fonts

if has("gui_running")
  "tell the term has 256 colors
  set t_Co=256

  " Show tab number (useful for Cmd-1, Cmd-2.. mapping)
  " For some reason this doesn't work as a regular set command,
  " (the numbers don't show up) so I made it a VimEnter event
  autocmd VimEnter * set guitablabel=%N:\ %t\ %M

  set lines=60
  set columns=190

  if has("gui_gtk2")
    set guifont=Monaco\ 13,Inconsolata\ XL\ 13,Inconsolata\ 13
  else
    set guifont=Monaco:h13,Menlo:h13,Inconsolata\ XL:h12,Inconsolata:h13
  end
else
  let g:CSApprox_loaded = 1

  " For people using a terminal that is not Solarized
  if exists("g:yadr_using_unsolarized_terminal")
    let g:solarized_termcolors=256
    let g:solarized_termtrans=1
  end
endif

set background=dark
set cursorline

" colorschemes

" solarized setup
" colorscheme solarized

" palenight setup
" colorscheme palenight
" let g:palenight_terminal_italics=0

" landscape setup
" colorscheme landscape

" dracula setup
" colorscheme dracula

" gruvbox setup
let g:gruvbox_italic=0
colorscheme gruvbox
hi CursorLine ctermbg=NONE guibg=NONE
