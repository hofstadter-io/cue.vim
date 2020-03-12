
syntax match cueNumber "\v<\d+>"
syntax match cueNumber "\v<\d+\.\d+>"

syntax region cueString start=/"/ end=/"/ skip=/\\"/ contains=cueStringInterpolation
syntax region cueStringInterpolation start="\v\\\(\s*" end="\v\s*\)" contained containedin=cueString contains=cueStringInterpolated
syntax match cueStringInterpolated "\v\w+(\(\))?" contained containedin=cueStringInterpolation

syntax match cueOperator "\v\:"
syntax match cueOperator "\v\:\:"
syntax match cueOperator "\v\&"
syntax match cueOperator "\v\|"

syntax match cueComment "\v\/\/.*$"

highlight default link cueNumber Number
highlight default link cueString String
highlight default link cueStringInterpolation Delimiter
highlight default link cueOperator Operator
highlight default link cueComment Comment
