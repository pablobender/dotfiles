if has('nvim')
  command! Term exec 'botright split term://' . $SHELL
elseif has('terminal')
  command! Term exec 'botright terminal ' . $SHELL
endif

command! ShowSyntax echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"
