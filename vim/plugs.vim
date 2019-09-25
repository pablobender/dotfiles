call plug#begin('~/.vim/bundle')

runtime plugs/ruby.vim
runtime plugs/languages.vim
runtime plugs/git.vim
runtime plugs/appearance.vim
runtime plugs/textobjects.vim
runtime plugs/search.vim
runtime plugs/project.vim
runtime plugs/vim-improvements.vim

if filereadable(expand("~/.yadr/vim/plugs.local"))
  source ~/.yadr/vim/plugs.local
endif

call plug#end()
