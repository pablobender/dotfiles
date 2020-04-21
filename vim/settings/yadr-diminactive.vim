if has("nvim")
  " Background colors for active vs inactive windows
  hi ActiveWindow ctermbg=235 guibg=#282828
  hi InactiveWindow ctermbg=236 guibg=#303030

  " Call method on window enter
  augroup WindowManagement
    autocmd!
    autocmd FocusLost * call s:DimAll()
    autocmd WinLeave * call s:DimInactives()
    autocmd FocusGained * call s:DimInactives()
  augroup END

  function! s:DimAll()
    setlocal winhighlight=Normal:InactiveWindow,NormalNC:InactiveWindow
  endfunction

  " Change highlight group of active/inactive windows
  function! s:DimInactives()
    if (winnr('$') == 1)
      if (&winhighlight != 'Normal:InactiveWindow,NormalNC:InactiveWindow')
        return
      endif
    endif
    setlocal winhighlight=Normal:ActiveWindow,NormalNC:InactiveWindow
  endfunction
else
  " " highlight ColorColumn ctermbg=236 guibg=#303030
  " " Dim inactive windows using 'colorcolumn' setting
  " " This tends to slow down redrawing, but is very useful.
  " " Based on https://groups.google.com/d/msg/vim_use/IJU-Vk-QLJE/xz4hjPjCRBUJ
  " " XXX: this will only work with lines containing text (i.e. not '~')
  " " from
  " if exists('+colorcolumn')
  "   function! s:DimInactiveWindows()
  "     for i in range(1, tabpagewinnr(tabpagenr(), '$'))
  "       let l:range = ""
  "       if i != winnr()
  "         if &wrap
  "           " HACK: when wrapping lines is enabled, we use the maximum number
  "           " of columns getting highlighted. This might get calculated by
  "           " looking for the longest visible line and using a multiple of
  "           " winwidth().
  "           let l:width=256 " max
  "         else
  "           let l:width=winwidth(i)
  "         endif
  "         let l:range = join(range(1, l:width), ',')
  "       endif
  "       call setwinvar(i, '&colorcolumn', l:range)
  "     endfor
  "   endfunction
  "   augroup DimInactiveWindows
  "     au!
  "     au WinEnter * call s:DimInactiveWindows()
  "     " au WinEnter * set cursorline
  "     " au WinLeave * set nocursorline
  "   augroup END
  " endif
end
