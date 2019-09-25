Plug 'AndrewRadev/splitjoin.vim'
Plug 'Raimondi/delimitMate'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
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
Plug 'briandoll/change-inside-surroundings.vim'
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/AnsiEsc.vim'
Plug 'vim-scripts/AutoTag'
Plug 'vim-scripts/lastpos.vim'
Plug 'vim-scripts/sudo.vim'
Plug 'goldfeld/ctrlr.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'nathanaelkane/vim-indent-guides'
if !has('nvim')
  "diminactive only in vim
  Plug 'blueyed/vim-diminactive.git'
endif
" required by vim-radical
Plug 'glts/vim-magnum'
"convert numbers from/to decimal/hex/octal/binary
Plug 'glts/vim-radical'
" increment/decrement  dates with <C-A> and <C-X>
Plug 'tpope/vim-speeddating'
" paste over text objects
Plug 'vim-scripts/ReplaceWithRegister'
" sort txt objects/motions
Plug 'christoomey/vim-sort-motion'
Plug 'junegunn/fzf.vim'
