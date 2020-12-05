syntax match Number "\<\d*\([Ee][+-]\?\d\+\)\?\>"
syntax match Number "\<\d\+[.]\d*\([Ee][+-]\?\d\+\)\?\>"
syntax match Number "\<[.]\d\+\([Ee][+-]\?\d\+\)\?\>"

syn match Type "\$"

syn match Keyword "\<[a-zA-Z_][a-z0-9A-Z_"()\\ ]*\s*?\?::\?"

syn region Object start="{" end="}" fold transparent

syntax keyword Include import
syntax keyword Statement for in len if let and or div mod quo rem close
syntax match Statement "+\|-\|/\|\*\|&&\?\|||\|==\|!=\|=\~\|!\~\|!\|<=\?\|>=\?\|:\|=\|<-\|;\|@\|##\?"
syntax keyword Special package command task
syntax keyword Constant true false null
syntax keyword Underlined error

syn region Comment start="//" end="$"
syn match Comment "//.*$"

syn match Type "<[^>]*>\||"
syn match Type "\<\(nulll\|bool\|float\|u\?int\(8\|16\|32\|64\|128\)\?\|string\|number\|bytes\|\.\.\.\|[*]\)\>"
syn match Keyword "\<_[a-zA-Z0-9_]*"

syn region String start='"""' end='"""'
syn region String start='L\="' end='"'
syn region Special start='\\(' end=')'
syn match Special "\\\(([^)]\+)\)" contained containedin=String
