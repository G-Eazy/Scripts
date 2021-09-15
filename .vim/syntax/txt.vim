"   " Vim universal .txt syntax file
"   " Language:     txt 1.1
"   " Maintainer:   Tomasz Kalkosiński <tomasz2k@poczta.onet.pl>
"   " Last change:  01 Jul 2006
"   "
"   " This is an universal syntax script for all text documents, logs, changelogs, readmes
"   " and all other strange and undetected filetypes.
"   " The goal is to keep it very simple. 
"   " It colors numbers, operators, signs, cites, brackets, delimiters, comments,
"   " TODOs, errors, debug and basic simleys ;]
"   "
"   " Changelog:
"   " 1.1 (01-07-2006)	Add: International cites
"   " 			Chg: txtString color to Normal
"   "	 		Chg: Simplified number coloring working better now
"   "
"   " 1.0 (28-04-2006)	Initial upload
"   "
"   " For version 5.x: Clear all syntax items
"   " For version 6.x: Quit when a syntax file was already loaded
"   if version < 600
"     syntax clear
"   elseif exists("b:current_syntax")
"     finish
"   endif
"
"   syn case ignore
"
"   syn cluster txtAlwaysContains add=txtTodo,txtError
"
"   syn cluster txtContains	add=txtNumber,txtOperator,txtLink
"
"   syn match txtOperator "[~\-_+*<>\[\]{}=|#@$%&\\/:&\^\.,!?]"
"
"   " Common strings
"   syn match txtString "[[:alpha:]]" contains=txtOperator
"
"   " Numbers
"   "syn match txtNumber "\d\(\.\d\+\)\?"
"   syn match txtNumber "\d"
"
"   " Cites
"   syn region txtCite	matchgroup=txtOperator	start="\""	end="\""	contains=@txtContains,@txtAlwaysContains
"
"   " utf8 international cites:
"   " ‚ ’	U+201A (8218), U+2019 (8217)	Polish single quotation
"   " „ ”	U+201E (8222), U+201d (8221)	Polish double quotation
"   " « »	U+00AB (171), U+00BB (187)	French quotes
"   " ‘ ’	U+2018 (8216), U+2019 (8217)	British quotes
"   " „ “	U+201E (8222), U+2019 (8217)	German quotes
"
"   setlocal foldmethod=expr
"   setlocal foldexpr=(getline(v:lnum)=~'^$')?-1:((indent(v:lnum)<indent(v:lnum+1))?('>'.indent(v:lnum+1)):indent(v:lnum))
"
"   set foldtext=getline(v:foldstart)
"   set fillchars=fold:\ "(there's a space after that \)
"   highlight Folded ctermfg=DarkGreen ctermbg=Black
