if exists("g:loaded_vmt")
    finish
endif

let g:loaded_vmt=1

let s:save_cpo=&cpo
set cpo&vim

command! -range VMT :<line1>,<line2>call vmt#vmt()

let &cpo = s:save_cpo
unlet s:save_cpo
