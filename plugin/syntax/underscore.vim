" Vim syntax file
" Language:    underscore.js
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/05
" Version:     1.4.4
" URL:         http://underscorejs.org/

syntax match   underscore  containedin=ALL /\<_\>/

syntax cluster underscoreFunctions contains=underscoreCollection,underscoreArray,underscoreFunction,underscoreObject,underscoreChaining,underscoreUtility,underscoreChaining

syntax match   underscoreCollection contained /contains/
syntax keyword underscoreCollection contained each map reduce reduceRight find filter where findWhere
syntax keyword underscoreCollection contained reject every some invoke pluck max min sortBy
syntax keyword underscoreCollection contained groupBy countBy shuffle toArray size
syntax keyword underscoreArray contained first initial last rest compact flatten without union
syntax keyword underscoreArray contained intersection difference uniq zip object indextOf
syntax keyword underscoreArray contained lastIndexOf sortedIndex range
syntax keyword underscoreFunction contained bind bindAll partial memoize delay throttle debounce
syntax keyword underscoreFunction contained once after wrap compose
syntax keyword underscoreObject contained keys values pairs invert functions extend pick omit
syntax keyword underscoreObject contained defaults clone tap has isEqual isEmpty isElement isArray
syntax keyword underscoreObject contained isObject isArguments isFunction isString isNumber
syntax keyword underscoreObject contained isFinite isBoolean isDate isRegExp isNaN isNull 
syntax keyword underscoreObject contained isUndefined
syntax keyword underscoreUtility contained noConflict identify times random mixin uniqueId
syntax keyword underscoreUtility contained escape unescape result template
syntax keyword underscoreChaining contained chain value


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

  HiLink underscore                Constant

  HiLink underscoreCollection     PreProc
  HiLink underscoreArray          PreProc
  HiLink underscoreFunction       PreProc
  HiLink underscoreObject         PreProc
  HiLink underscoreUtility        PreProc
  HiLink underscoreChaining       PreProc

  delcommand HiLink
endif
