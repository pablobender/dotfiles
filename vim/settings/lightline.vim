let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode' ],
      \             [ 'paste', 'fugitive' ],
      \             [ 'filename', 'readonly', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'bufnum' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'inactive': {
      \   'left': [['filename', 'modified']],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'filetype', 'bufnum' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'MyFugitive',
      \   'readonly': 'MyReadonly',
      \   'filename': 'MyFilename',
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \   'bufnum': 'MyBufnum',
      \   'lineinfo': 'MyLineinfo'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
			\ 'subseparator': { 'left': '', 'right': '' }
      \ }

" \   'bufnum': ' %n'
" \ 'subseparator': { 'left': ' ', 'right': ' ' }
" \ 'subseparator': { 'left': '', 'right': '' }
" \ 'subseparator': { 'left': ' ', 'right': '  ' }
" \ 'subseparator': { 'left': '', 'right': '' }
" \ 'subseparator': { 'left': '', 'right': '' }
" \ 'subseparator': { 'left': '', 'right': ' ' }
" \ 'subseparator': { 'left': '', 'right': '' }
" \ 'subseparator': { 'left': '•', 'right': '•' }
" \ 'subseparator': { 'left': '', 'right': '' }
" \ 'separator': { 'left': '', 'right': '' },
" \ 'separator': { 'left': ' ', 'right': ' ' },

function! MyFugitive()
  if exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? ' '._ : ''
  endif
  return ''
endfunction

function! MyReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return ""
  else
    return ""
  endif
endfunction

function! MyFilename()
  return ('' == expand('%') ? '[NoName]' : expand('%'))
endfunction

function! MyFiletype()
  if s:wide_window()
    if strlen(&filetype)
      return WebDevIconsGetFileTypeSymbol() . ' ' . &filetype
    endif
    return 'ft?'
  endif
  return WebDevIconsGetFileTypeSymbol()
endfunction

function! MyFileformat()
  if s:wide_window()
    return WebDevIconsGetFileFormatSymbol() . ' ' . &fileformat
  endif
  return WebDevIconsGetFileFormatSymbol()
endfunction

function MyLineinfo()
  if s:wide_window()
    return line('.') * 100 / line('$') . '%  ' . line('.') . '/' . line('$') . ':' .  virtcol('.') . ' '
  endif
  return  line('.') * 100 / line('$') . '% ' . ' ' . line('.') . ':' . virtcol('.')
endfunction

function MyBufnum()
  if s:wide_window()
    return ' ' . bufnr()
  endif
  return bufnr()
endfunction

function s:wide_window()
  return winwidth(0) > 70
endfunction

" Use status bar even with single buffer
set laststatus=2

" to try recent saved cahgnes, uncomment lines below and `:w` then `:so %`
" let g:lightline.colorscheme = 'gruvbox'
" call lightline#init()
" call lightline#colorscheme()
" call lightline#update()
