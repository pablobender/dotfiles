if has("nvim")
  " Background colors for active vs inactive windows
  hi ActiveWindow guibg=#262626
  hi InactiveWindow guibg=#303030

  " Call method on window enter
  augroup WindowManagement
    autocmd!
    autocmd WinLeave * call Handle_Win_Enter()
  augroup END

  " Change highlight group of active/inactive windows
  function! Handle_Win_Enter()
    setlocal winhighlight=Normal:ActiveWindow,NormalNC:InactiveWindow
  endfunction
else
  highlight ColorColumn ctermbg=236 guibg=#303030
end
