" Vim syntax file
" Language:     Present (Go)
" Maintainer:   Cory LaNou <coryNOSPAM@lanou.com>
" Filenames:    *.present
" Last Change:	2014 Sep 23

if exists("b:current_syntax")
  finish
endif

runtime! syntax/html.vim
unlet! b:current_syntax

syn case ignore

syn match presentHeading "^\*\s[^\*].*$"

syn match presentPlay "^\.play"
syn match presentLink "^\.link"
syn match presentCode "^\.code"

syn region presentCodeBlock start="    \|\t" end="$" contained

syn match presentUrl "\S\+" nextgroup=presentUrlTitle skipwhite contained

let b:current_syntax = "present"

hi def link presentHeading                    htmlH1
hi def link presentPlay                       htmlLink
hi def link presentLink                       htmlLink
hi def link presentCode                       htmlLink
hi def link presentUrl                        Float
hi def link presentUrlTitle                   String

" vim:set sw=2:
