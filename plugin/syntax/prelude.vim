" Vim syntax file
" Language:    prelude.ls
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/05
" Version:     0.6.0
" URL:         http://gkz.github.com/prelude-ls/

syntax cluster preludeFunctions contains=preludeFunction

syntax keyword preludeFunction contained map filter reject partition find each head tail last initial
syntax keyword preludeFunction contained empty values keys length cons append join reverse fold fold1
syntax keyword preludeFunction contained foldr foldr1 unfold andList orList any all unique sort sortBy
syntax keyword preludeFunction contained compare sum product mean concat concatMap maximum minimum scan scan1
syntax keyword preludeFunction contained scanr scanr1 replicate take drop splitAt takeWhile dropWhile span breakIt
syntax keyword preludeFunction contained listToObj objToFunc zip zipWith zipAll zipAllWith compose curry id flip
syntax keyword preludeFunction contained fix lines unlines words unwords max min negate abs signum
syntax keyword preludeFunction contained quot rem div mod recip pi tau exp sqrt ln
syntax keyword preludeFunction contained pow sin cos tan asin acos atan atan2 truncate round
syntax keyword preludeFunction contained ceiling floor isItNaN even odd gcd lcm



" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_lisp_syntax_inits")
  if version < 508
    let did_lisp_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink preludeFunction            PreProc

  delcommand HiLink
endif
