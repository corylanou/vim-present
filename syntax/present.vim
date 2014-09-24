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

syn match presentBold "\*\S+\*"
syn match presentItalic "_\S+_"

syn match presentH1 "^\*\s.*$"
syn match presentH2 "^\*\*\s.*$"
syn match presentH3 "^\*\*\*\s.*$"

syn match presentList "^\-\s.*$"

syn region presentPlay matchgroup=presentCommand start="^\.play" end="$" oneline contains=presentPlayOmit
syn region presentCode matchgroup=presentCommand start="^\.code" end="$" oneline contains=presentPlayOmit
syn match presentPlayOmit "\s/.*/$" contained

syn region presentLink matchgroup=presentCommand start="^\.link" end="$" oneline

syn region presentImage   matchgroup=presentCommand start="^\.image" end="$"
syn region presentIframe  matchgroup=presentCommand start="^\.iframe" end="$"
syn region presentHtml    matchgroup=presentCommand start="^\.html" end="$"
syn region presentCaption matchgroup=presentCommand start="^\.caption" end="$"

syn region presentCodeBlock start="^\s" end="$"
syn region presentInlineCode start="`" end="`" oneline

let b:current_syntax = "present"

hi def link presentH1         htmlH1
hi def link presentH2         htmlH2
hi def link presentH3         htmlH3

hi def link presentBold       htmlBold
hi def link presentItalic     htmlItalic

hi def link presentCommand    Delimiter

hi def link presentPlay       Type
hi def link presentCode       Type
hi def link presentLink       Type
hi def link presentImage      Type
hi def link presentIframe     Type
hi def link presentHtml       Type
hi def link presentCaption    Type

hi def link presentPlayOmit   htmlTag

hi def link presentCodeBlock  Statement
hi def link presentInlineCode Statement

hi def link presentList       Identifier
