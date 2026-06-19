if exists("b:current_syntax")
  finish
endif

syntax case ignore

" Keywords
syntax keyword arcKeyword IF THEN ELIF ELSE WHILE END FN VAR RETURN IMPORT TRY CATCH FOR CONTINUE BREAK IN CLASS TRUE FALSE OR AND NOT

" Functions (calls)
syntax match arcFunction /\v[a-zA-Z_][a-zA-Z0-9_]*\ze\s*\(/

" Numbers
syntax match arcNumber /\v\d+(\.\d+)?/

" Strings + escapes
syntax match arcEscape /\\[ntr"\\]/ contained
syntax region arcString start=/"/ skip=/\\"/ end=/"/ contains=arcEscape

" Operators
syntax match arcOperator /[+\-*/^=<>!]+/

" Comments
syntax match arcComment /#.*/

" Highlight links
highlight link arcComment Comment
highlight link arcKeyword Keyword
highlight link arcFunction Function
highlight link arcNumber Number
highlight link arcString String
highlight link arcOperator Operator
highlight link arcEscape SpecialChar

let b:current_syntax = "arc"
