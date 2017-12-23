let s:save_cpo = &cpo
set cpo&vim

pyfile <sfile>:h:h/src/fmt.py
python import vim

function! vmt#vmt() range
    python << EOF
first=int(vim.eval('a:firstline'))-1        
last=int(vim.eval('a:lastline'))
shiftwidth=int(vim.eval('shiftwidth()'))
b=vim.current.buffer
lines=b[first:last]
align_lines=vim_align(shiftwidth,lines)
for i in range(first,last):
    b[i]=align_lines[i-first]
    vim.command("'<,'>"+"normal " + "==")
EOF
endfunction

let &cpo=s:save_cpo
unlet s:save_cpo
