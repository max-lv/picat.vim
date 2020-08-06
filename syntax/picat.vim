" Vim syntax file
" Language:    Picat
" Author:      Maxim Loktionov
" Filenames:   *.pi
" Last Change: 2020-08-05

syn keyword picatKeyword import if then elseif else end throw
syn match picatComment "%.*"

syn match picatNumber   "\v<\d+>"
syn match picatNumber   "\v<\d+.\d+>"

"TODO:
"\n in strings
"%d in writef
"look up how C syntax handles printf?
syn region picatString start=/"/ skip=/\\"/ end=/"/ oneline

"TODO: does picat has ! operator ?
syn match picatOperator "\V\(+\|-\|/\|*\|=\|^\|&&\|||\|not\|!\|>\|<\)"


hi def link picatKeyword Keyword
hi def link picatComment Comment
hi def link picatNumber Number
hi def link picatString String
hi def link picatOperator Operator

let b:current_syntax = "picat"
