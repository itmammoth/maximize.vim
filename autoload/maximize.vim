let s:maximized = -1

function! maximize#toggle()
  if s:maximized == 1
    call s:restore_window()
  else
    call s:maxmize_window()
  endif
  let s:maximized = s:maximized * - 1
endfunction

function! s:maxmize_window()
  let s:columns = &columns
  let s:lines = &lines
  let s:winposx = getwinposx()
  let s:winposy = getwinposy()
  set columns=999 lines=999
endfunction

function! s:restore_window()
  execute 'set' 'columns=' . s:columns 'lines=' . s:lines
  execute 'winpos' s:winposx s:winposy
endfunction
