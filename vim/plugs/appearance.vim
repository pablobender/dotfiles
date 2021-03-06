Plug 'chrisbra/Colorizer'
" Plug 'xsunsmile/showmarks'
Plug 'kshenoy/vim-signature'
"
set background=dark |
      \ let g:gruvbox_bold=1 |
      \ let g:gruvbox_italic=1 |
      \ let g:gruvbox_underline=1 |
      \ let g:gruvbox_improved_diff=0 |
      \ let g:gruvbox_invert_tabline=1 |
      \ let g:gruvbox_invert_selection=1 |
      \ let g:gruvbox_termcolors=256 |
      \ Plug 'pablobender/gruvbox' |
      \ Plug 'itchyny/lightline.vim' |
      \ Plug 'pablobender/lightline-gruvbox.vim'

if !has('nvim')
  ""diminactive only in vim
  "let g:diminactive_enable_focus = 1 |
  "      \ Plug 'tmux-plugins/vim-tmux-focus-events' |
  "      \ Plug 'blueyed/vim-diminactive'
endif
