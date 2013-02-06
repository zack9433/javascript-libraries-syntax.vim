" Vim syntax file
" Language:    JS Lib syntax post process
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/05
" Version:     0.1
" URL:         https://github.com/othree/javascript-libraries-syntax.vim
"

syntax cluster javascriptLibraryFuncs contains=@jqueryFunctions,@underscoreFunctions,@backboneFunctions,@preludeFunctions
syntax cluster javascriptLibraryAttrs contains=@jqueryAttrs,@underscoreAttrs,@backboneAttrs,@preludeAttrs

if &filetype == 'javascript'
  syntax match   javascriptLMethods /\.\h\w*(\@=/ containedin=ALL contains=@javascriptLibraryFuncs
  syntax match   javascriptLAttrs /\.\h\w*/ containedin=ALL contains=@javascriptLibraryAttrs
endif

if &filetype == 'coffee'
  syntax match   coffeeLMethods /\.\h\w*(\@=/   containedin=ALL contains=@javascriptLibraryFuncs
  syntax match   coffeeLMethods /\.\h\w* +[0-9A-Za-z_(\[{]\@=/ containedin=ALL contains=@javascriptLibraryFuncs
  syntax match   coffeeLAttrs /\.\h\w*/   containedin=ALL contains=@javascriptLibraryAttrs
endif

if &filetype == 'ls'
  syntax match   lsLMethods /[\.!]\h\w*[(!]\@=/   containedin=ALL contains=@javascriptLibraryFuncs
  syntax match   lsLMethods /[\.!]\h\w* +[0-9A-Za-z_(\[{]\@=/ containedin=ALL contains=@javascriptLibraryFuncs
  syntax match   lsLPipe /|>/ containedin=ALL skipwhite nextgroup=@preludeFunctions
  syntax match   lsLCompose />>/ containedin=ALL skipwhite nextgroup=@preludeFunctions
  syntax match   lsLAttrs /[\.!]\h\w*/   containedin=ALL contains=@javascriptLibraryAttrs
endif
