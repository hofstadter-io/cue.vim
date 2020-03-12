
setlocal nolisp
setlocal autoindent
setlocal indentkeys+=<:>,0=},0=)
setlocal indentexpr=CueIndent(v:lnum)

function! CueIndent(lnum) abort
  let l:prevlnum = prevnonblank(a:lnum-1)
  if l:prevlnum == 0
    return 0
  endif

  let l:prevl = substitute(getline(l:prevlnum), '//.*$', '', '')
  let l:thisl = substitute(getline(a:lnum), '//.*$', '', '')
  let l:previ = indent(l:prevlnum)

  let l:ind = l:previ

  if l:prevl =~ '[({]\s*$'
    " previous line opened a block
    let l:ind += shiftwidth()
  endif

  if l:thisl =~ '^\s*[)}]'
    " this line closed a block
    let l:ind -= shiftwidth()
  endif

  return l:ind
endfunction
