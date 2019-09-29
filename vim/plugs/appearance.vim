Plug 'chrisbra/Colorizer'
Plug 'xsunsmile/showmarks'

set background=dark
let g:gruvbox_bold=1
let g:gruvbox_italic=1
let g:gruvbox_underline=1
let g:gruvbox_improved_diff=0
let g:gruvbox_invert_tabline=1
let g:gruvbox_invert_selection=1
let g:gruvbox_termcolors=256
Plug 'pablobender/gruvbox'
Plug 'pablobender/lightline-gruvbox.vim'
Plug 'itchyny/lightline.vim'

" Required for Gblame in terminal vim
Plug 'godlygeek/csapprox'

if !has('nvim')
  "diminactive only in vim
  Plug 'blueyed/vim-diminactive'
endif
