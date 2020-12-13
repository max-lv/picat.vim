" Vim syntax file
" Language:    Picat
" Author:      Maxim Loktionov
" Filenames:   *.pi
" Last Change: 2020-08-05

syn keyword picatConditional if then elseif else end in foreach while do
syn keyword picatKeyword import throw table index
syn match picatComment "%.*"

syn match picatNumber   "\v<\d+>"
syn match picatNumber   "\v<\d+\.\d+>"

syn match picatEscape display contained /\\\([nrt0\\'"]\)/
syn match picatFormat display contained /%\([d]\)/

syn region picatString start=/"/ skip=/\\"/ end=/"/ oneline contains=picatEscape,picatFormat

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
hi def link picatEscape Special
hi def link picatFormat Type
"hi def link picatComma Comment

let b:current_syntax = "picat"
