" Vim syntax file
" Language:    jQuery
" Maintainer:  othree <othree@gmail.com>
" Maintainer:  Bruno Michel <brmichel@free.fr>
" Last Change: 2013/02/05
" Version:     1.9
" URL:         http://api.jquery.com/

syntax match   jquery          containedin=ALL /jQuery\|\$/

syntax cluster jqueryFunctions      contains=jqueryAjax,jqueryAttributes,jqueryCallbacks,jqueryCore,jqueryCSS,jqueryData,jqueryDeferred,jqueryDimensions,jqueryEffects,jqueryEvents,jqueryManipulation,jqueryMiscellaneous,jqueryOffset,jqueryProperties,jqueryTraversing,jqueryUtilities
syntax keyword jqueryAjax           contained ajaxComplete ajaxError ajaxSend ajaxStart ajaxStop ajaxSuccess
syntax keyword jqueryAjax           contained param serialize serializeArray
syntax keyword jqueryAjax           contained ajax ajaxPrefilter ajaxSetup ajaxSettings ajaxTransport
syntax keyword jqueryAjax           contained get getJSON getScript load post
syntax keyword jqueryAttributes     contained addClass attr hasClass html prop removeAttr removeClass removeProp toggleClass val
syntax keyword jqueryCallbacks      contained add disable disabled empty fire fired fireWith has lock locked remove Callbacks
syntax keyword jqueryCore           contained holdReady noConflict when
syntax keyword jqueryCSS            contained css cssHooks
syntax keyword jqueryData           contained clearQueue data dequeue hasData queue removeData
syntax keyword jqueryDeferred       contained Deferred always done fail notify pipe progress promise reject rejectWith resolved resolveWith notifyWith state then
syntax keyword jqueryDimensions     contained height innerHeight innerWidth outerHeight outerWidth width
syntax keyword jqueryEffects        contained hide show toggle
syntax keyword jqueryEffects        contained animate delay stop
syntax keyword jqueryEffects        contained fadeIn fadeOut fadeTo fadeToggle
syntax keyword jqueryEffects        contained slideDown slideToggle slideUp
syntax keyword jqueryEvents         contained error resize scroll
syntax keyword jqueryEvents         contained ready unload
syntax keyword jqueryEvents         contained bind delegate on off one proxy trigger triggerHandler unbind undelegate
syntax keyword jqueryEvents         contained Event currentTarget isDefaultPrevented isImmediatePropagationStopped isPropagationStopped namespace pageX pageY preventDefault relatedTarget result stopImmediatePropagation stopPropagation target timeStamp which
syntax keyword jqueryEvents         contained blur change focus select submit
syntax keyword jqueryEvents         contained focusin focusout keydown keypress keyup
syntax keyword jqueryEvents         contained click dblclick hover mousedown mouseenter mouseleave mousemove mouseout mouseover mouseup
syntax keyword jqueryManipulation   contained clone
syntax keyword jqueryManipulation   contained unwrap wrap wrapAll wrapInner
syntax keyword jqueryManipulation   contained append appendTo html preprend prependTo text
syntax keyword jqueryManipulation   contained after before insertAfter insertBefore
syntax keyword jqueryManipulation   contained detach empty remove
syntax keyword jqueryManipulation   contained replaceAll replaceWith
syntax keyword jqueryMiscellaneous  contained index size toArray
syntax keyword jqueryOffset         contained offset offsetParent position scrollTop scrollLeft
syntax keyword jqueryProperties     contained context fx.interval fx.off length selector support
syntax keyword jqueryTraversing     contained eq filter first has is last map not slice
syntax keyword jqueryTraversing     contained add andSelf contents end
syntax keyword jqueryTraversing     contained children closest find next nextAll nextUntil parent parents parentsUntil prev prevAll prevUntil siblings
syntax keyword jqueryUtilities      contained each extend globalEval grep inArray isArray isEmptyObject isFunction isPlainObject isWindow isXMLDoc makeArray merge noop now parseJSON parseXML trim type unique

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

  HiLink jquery                    Constant

  HiLink jqueryAjax                PreProc
  HiLink jqueryAttributes          PreProc
  HiLink jqueryCallbacks           PreProc
  HiLink jqueryCore                PreProc
  HiLink jqueryCSS                 PreProc
  HiLink jqueryData                PreProc
  HiLink jqueryDeferred            PreProc
  HiLink jqueryDimensions          PreProc
  HiLink jqueryEffects             PreProc
  HiLink jqueryEvents              PreProc
  HiLink jqueryManipulation        PreProc
  HiLink jqueryMiscellaneous       PreProc
  HiLink jqueryOffset              PreProc
  HiLink jqueryProperties          PreProc
  HiLink jqueryTraversing          PreProc
  HiLink jqueryUtilities           PreProc

  delcommand HiLink
endif
