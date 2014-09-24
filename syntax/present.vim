" Vim syntax file
" Language:     Present (Go)
" Maintainer:   Cory LaNou <coryNOSPAM@lanou.com>
" Filenames:    *.present,*.article
" Last Change:	2014 Sep 23

if exists("b:current_syntax")
  finish
endif

runtime! syntax/html.vim
unlet! b:current_syntax

syn case ignore

syn match presentHeading "^\*\s[^\*].*$"


syn region presentPlay matchgroup=presentCommand start="^\.play" end="$" oneline contains=presentPlayOmit
syn region presentCode matchgroup=presentCommand start="^\.code" end="$" oneline contains=presentPlayOmit
syn match presentPlayOmit "\s/.*/$" contained

syn region presentLink matchgroup=presentCommand start="^\.link" end="$" oneline contains=presentUrl

syn region presentCodeBlock start="^\s" end="$"

let b:current_syntax = "present"

hi def link presentHeading                    htmlH1
hi def link presentCommand                    Delimiter

hi def link presentPlay                       Type
hi def link presentCode                       Type
hi def link presentLink                       Type

hi def link presentPlayOmit                   htmlTag
hi def link presentCodeBlock                  Statement
