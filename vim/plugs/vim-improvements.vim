let g:dispatch_no_maps=1 |
      \ Plug 'tpope/vim-dispatch'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'Raimondi/delimitMate'
Plug 'zchee/deoplete-go', { 'build': 'make' }
Plug 'godlygeek/tabular'
Plug 'tpope/vim-commentary'
Plug 'Lokaltog/vim-easymotion'
Plug 'vim-scripts/camelcasemotion'
Plug 'andymass/vim-matchup'
Plug 'kristijanhusak/vim-multiple-cursors'
Plug 'Keithbsmiley/investigate.vim'
Plug 'chrisbra/NrrwRgn'
Plug 'christoomey/vim-tmux-navigator'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'bogado/file-line'
Plug 'mattn/webapi-vim'
Plug 'tomtom/tlib_vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/AnsiEsc.vim'
Plug 'vim-scripts/AutoTag'
Plug 'vim-scripts/lastpos.vim'
Plug 'vim-scripts/sudo.vim'
Plug 'goldfeld/ctrlr.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-speeddating'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'christoomey/vim-sort-motion'
Plug 'junegunn/fzf.vim'
let g:ctrlp_map='<leader>p' |
      \ Plug 'ctrlpvim/ctrlp.vim'
Plug 'glts/vim-magnum' |
      \ Plug 'glts/vim-radical'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
" testings
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-eunuch'
Plug 'rrethy/vim-illuminate'
