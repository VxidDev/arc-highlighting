if exists("b:current_syntax")
  finish
endif

syntax case ignore 

" Keywords
syntax keyword arcKeyword IF THEN ELIF ELSE WHILE END FN VAR RETURN IMPORT TRY CATCH FOR CONTINUE BREAK IN CLASS

" Functions 
syntax match arcFunction /\v[a-zA-Z_][a-zA-Z0-9_]*\ze\s*\(/

" Numbers
syntax match arcNumber /\v\d+(\.\d+)?/

" Strings
syntax region arcString start=/"/ end=/"/

" Operators
syntax match arcOperator /[+\-*/^=<>!]+/

" Comments
syntax match arcComment /#.*/

" Highlight linking
highlight link arcComment Comment
highlight link arcKeyword Keyword
highlight link arcBuiltin Function
highlight link arcNumber Number
highlight link arcString String
highlight link arcOperator Operator
highlight link arcFunction Function

let b:current_syntax = "arc"
