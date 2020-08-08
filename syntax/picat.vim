" Vim syntax file
" Language:    Picat
" Author:      Maxim Loktionov
" Filenames:   *.pi
" Last Change: 2020-08-05

syn keyword picatConditional if then elseif else end in
syn keyword picatKeyword import throw table index
syn match picatComment "%.*"

syn match picatNumber   "\v<\d+>"
syn match picatNumber   "\v<\d+\.\d+>"

"TODO:
"\n in strings
"%d in writef
"look up how C syntax handles printf?
syn region picatString start=/"/ skip=/\\"/ end=/"/ oneline

"TODO: does picat has ! operator ?
syn match picatOperator "\V\(+\|-\|/\|*\|=\|^\|&&\|||\|not\|!\|>\|<\)"

syn match picatVariable "\v<[A-Z_]\w*>"
syn match picatDelimiter "\V\(|\|;\)"
syn match picatParens "\v(\[|\]|\(|\))"
syn match picatFunction "[a-z]\w*("he=e-1,me=e-1
syn match picatComma "\,"


hi def link picatConditional Conditional
hi def link picatKeyword Keyword
hi def link picatComment Comment
hi def link picatNumber Number
hi def link picatString String
hi def link picatOperator Operator
hi def link picatVariable Identifier
hi def link picatFunction Function
hi def link picatDelimiter Delimiter
hi def link picatParens Type
"hi def link picatComma Comment

let b:current_syntax = "picat"
