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
    set guifont=RobotoMono\ Nerd\ Font\ 13,Menlo\ 13,Monaco\ 13,Inconsolata\ XL\ 13,Inconsolata\ 13
  else
    set guifont=RobotoMono\ Nerd\ Font:h13,Menlo:h13,Monaco:h13,Inconsolata\ XL:h12,Inconsolata:h13
  end
else
  let g:CSApprox_loaded = 1
endif

colorscheme gruvbox
" gruvbox patches
set nocursorline
hi Visual ctermbg=NONE guibg=NONE
function! s:getGruvColor(group)
  let guiColor = synIDattr(hlID(a:group), "fg", "gui")
  let termColor = synIDattr(hlID(a:group), "fg", "cterm")
  return [ guiColor, termColor ]
endfunction
let s:gray = s:getGruvColor('GruvboxGray')
let s:bg0  = s:getGruvColor('GruvboxBg0')
exec 'hi VertSplit ctermfg=' . s:gray[1] . ' ctermbg=' . s:bg0[1] . ' guifg=' . s:gray[0] . ' guibg=' . s:bg0[0]

" vim-devicons pathces
hi link NERDTreeFlags GruvboxAqua
