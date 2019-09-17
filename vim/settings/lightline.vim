let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste', 'fugitive' ],
      \             [ 'filename', 'readonly', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'MyFugitive',
      \   'readonly': 'MyReadonly',
      \   'filename': 'MyFilename'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
			\ 'subseparator': { 'left': '', 'right': '' }
      \ }

" \ 'subseparator': { 'left': ' ', 'right': ' ' }
" \ 'subseparator': { 'left': '', 'right': '' }
" \ 'subseparator': { 'left': ' ', 'right': '  ' }
" \ 'subseparator': { 'left': '', 'right': '' }
" \ 'subseparator': { 'left': '', 'right': ' ' }
" \ 'subseparator': { 'left': '', 'right': ' ' }
" \ 'subseparator': { 'left': '', 'right': '' }
" \ 'subseparator': { 'left': '•', 'right': '•' }
" \ 'subseparator': { 'left': '', 'right': '' }
" \ 'separator': { 'left': '', 'right': '' },
" \ 'separator': { 'left': ' ', 'right': ' ' },
function! MyReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return ""
  else
    return ""
  endif
endfunction

function! MyFugitive()
  if exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? ' '._ : ''
    " 
  endif
  return ''
endfunction

function! MyFilename()
  return ('' == expand('%') ? '[NoName]' : expand('%'))
endfunction

" Use status bar even with single buffer
set laststatus=2
