" Automatically jump to a file at the correct line number
" i.e. if your cursor is over /some/path.rb:50 then using 'gf' on it will take
" you to that line

" use <leader>gf to go to file:line reusing already existing window if it
" exists or in a split if not exists

function! OpenFileReusingWindow(filename)
  let l:bufnum = bufnr(expand(a:filename))
  let l:winnum = bufwinnr(l:bufnum)
  if l:winnum == -1
    " Make new split as usual
    exec "split " . a:filename
  else
    " Jump to existing split
    exec l:winnum . "wincmd w"
  endif
endfunction

function! GotoFileWithLineNum()
    " filename under the cursor
    let l:file_name = expand('<cfile>')
    if !strlen(l:file_name)
        echo 'FILE NOT FOUND: ' . l:file_name
        return
    endif

    " look for a line number separated by a :
    if search('\%#\f*:\zs[0-9]\+')
        " change the 'iskeyword' option temporarily to pick up just numbers
        let l:temp = &iskeyword
        set iskeyword=48-57
        let l:line_number = expand('<cword>')
        exec 'set iskeyword=' . l:temp
    endif

    " edit the file
    call OpenFileReusingWindow(l:file_name)

    " if there is a line number, go to it
    if exists('l:line_number')
        exec l:line_number
    endif
endfunction

map <leader>gf :call GotoFileWithLineNum()<CR>
