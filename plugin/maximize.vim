if !has('gui_running')
  finish
endif

if exists("g:loaded_maximize")
  finish
endif
let g:loaded_maximize = 1

let s:save_cpo = &cpo
set cpo&vim


if !exists('g:maximize_default_mapping')
  let g:maximize_default_mapping = 1
end

command! MaximizeWindow call maximize#toggle()

if g:maximize_default_mapping == 1
  nnoremap <F10> :MaximizeWindow<CR>
endif


let &cpo = s:save_cpo
unlet s:save_cpo
