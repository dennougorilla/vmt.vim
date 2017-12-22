let s:save_cpo = &cpo
set cpo&vim

pyfile <sfile>:h:h/src/fmt.py
python import vim

function! vmt#vmt() range
    echo a:firstline
    echo a:lastline
    python << EOF
first=int(vim.eval('a:firstline'))-1
last=int(vim.eval('a:lastline'))
lines=vim.current.buffer
lines=lines[first:last]
vim_align(4,lines)
EOF
endfunction

let &cpo=s:save_cpo
unlet s:save_cpo
