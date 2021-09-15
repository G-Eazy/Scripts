" Vim syntax file
" Language: Maude
" Maintainer: Greger Martinussen 
" URL:          https://github.com/G-eazy/vim/blob/master/runtime/maude.vim
" Latest Revision: 14 April 2019

if !exists("main_syntax")
  if exists("b:current_syntax")
    finish
  endif
endif
  " we define it here so that included files can test for it
  let main_syntax='maude'

" Keywords
syn keyword mod fmod endfm mod endm omod endom set load include eof
syn keyword operations op ops red rew frew pr subclass
syn keyword equations eq ceq rl crl var vars if else fi then or and search such that class  msg
syn keyword other sort is protecting including ctor sort sorts subsort subsorts 

"Regions
syn region commentc start="---"  end="\n"
syn region commentc start="\*\*\*"  end="\n"
syn region commentc start="\*\*\*("  end=")"

"syn region label start="\["  end="\]"
syn region mod2 start="\[" end="\]" contains=other
syn match colon " : "

syn match string2 '\".*\"' 

"syn region modname start="f" end="\n" 

"Matches
syn match modname '.*d is\n' contains=ALLBUT,mod



"syn match varname


" Links
hi def link mod Function
hi def link colon Function
hi def link operations Keyword
hi def link equations Todo
hi def link other Keyword
hi def link modname Comment
hi def link string2 String

hi def link commentc Comment 


"hi label ctermfg=2
hi mod2 ctermfg=2
hi modname ctermfg=11

"div tab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set foldmethod=indent


