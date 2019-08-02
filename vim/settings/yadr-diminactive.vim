if has("nvim")
  " Background colors for active vs inactive windows
  hi ActiveWindow guibg=#262626
  hi InactiveWindow guibg=#303030

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
    setlocal winhighlight=Normal:ActiveWindow,NormalNC:InactiveWindow
  endfunction
else
  " highlight ColorColumn ctermbg=236 guibg=#303030
end
