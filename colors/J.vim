" Vim color scheme
"
" Name:       J.vim
" Maintainer: YIJUN 
" License:    MIT

highlight clear

if exists("syntax_on")
	syntax reset
endif

set background = "dark"

let g:colors_name = "J"

hi Normal guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi Cursor guifg=Black ctermfg=16 guibg=LightGray ctermbg=252 gui=NONE cterm=NONE term=NONE
hi CursorLine guifg=LightGray ctermfg=252 guibg=#080808 ctermbg=234 gui=NONE cterm=NONE term=NONE
hi CursorLineNr guifg=Red ctermfg=15 guibg=#080808 ctermbg=16 gui=bold cterm=bold term=bold
hi FoldColumn guifg=DarkGray ctermfg=248 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi Folded guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi LineNr guifg=DarkGray ctermfg=248 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi Statement guifg=White ctermfg=15 guibg=Black ctermbg=16 gui=bold cterm=bold term=bold
hi PreProc guifg=White ctermfg=15 guibg=Black ctermbg=16 gui=bold cterm=bold term=bold
hi String guifg=#61E046 ctermfg=67 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi Comment guifg=#737373 ctermfg=243 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi Constant guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi Type guifg=White ctermfg=15 guibg=Black ctermbg=16 gui=bold cterm=bold term=bold
hi Function guifg=White ctermfg=15 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi Identifier guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi Special guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi MatchParen guifg=Black ctermfg=16 guibg=LightGray ctermbg=252 gui=NONE cterm=NONE term=NONE
hi pythonEscape guifg=#778899 ctermfg=67 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi javaScriptFunction guifg=White ctermfg=15 guibg=Black ctermbg=16 gui=bold cterm=bold term=bold
hi elixirDelimiter guifg=#778899 ctermfg=67 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi Search guifg=#990000 ctermfg=15 guibg=Black ctermbg=67 gui=underline cterm=underline term=underline
hi Visual guifg=White ctermfg=15 guibg=#778899 ctermbg=67 gui=NONE cterm=NONE term=NONE
hi NonText guifg=DarkGray ctermfg=248 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi Directory guifg=White ctermfg=15 guibg=Black ctermbg=16 gui=bold cterm=bold term=bold
hi Title guifg=White ctermfg=15 guibg=Black ctermbg=16 gui=bold cterm=bold term=bold
hi markdownHeadingDelimiter guifg=White ctermfg=15 guibg=Black ctermbg=16 gui=bold cterm=bold term=bold
hi markdownHeadingRule guifg=White ctermfg=15 guibg=Black ctermbg=16 gui=bold cterm=bold term=bold
hi markdownLinkText guifg=#778899 ctermfg=67 guibg=Black ctermbg=16 gui=underline cterm=underline term=underline
hi Todo guifg=Black ctermfg=16 guibg=Yellow ctermbg=226 gui=bold cterm=bold term=bold
hi Pmenu guifg=White ctermfg=15 guibg=#778899 ctermbg=67 gui=NONE cterm=NONE term=NONE
hi PmenuSel guifg=#778899 ctermfg=67 guibg=White ctermbg=15 gui=NONE cterm=NONE term=NONE
hi helpSpecial guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi helpHyperTextJump guifg=#778899 ctermfg=67 guibg=Black ctermbg=16 gui=underline cterm=underline term=underline


hi VertSplit guifg=Black guibg=White
hi TabLine guibg=#111111 guifg=#585858 gui=NONE cterm=NONE term=NONE
hi TabLineFill guifg=#111111
hi helpNote guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimOption guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimGroup guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimHiClear guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimHiGroup guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimHiAttrib guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimHiGui guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimHiGuiFgBg guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimHiCTerm guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimHiCTermFgBg guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimSynType guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimCommentTitle guifg=#737373 ctermfg=243 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimCommand guifg=Red ctermfg=15 guibg=Black ctermbg=16 gui=bold cterm=bold term=bold
hi vimIsCommand guifg=White ctermfg=15 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimMapLhs guifg=#D5523A ctermfg=15 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimNotation guifg=#D5523A ctermfg=15 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE

hi qfFileName guifg=#990000 guibg=Black gui=NONE
hi link MRUFileName qfFileName

" HTML Syntax
hi htmlTag guifg=#DF642F guibg=Black gui=NONE cterm=NONE term=NONE
hi link htmlEndTag htmlTag
hi link htmlTagN htmlTag
hi link htmlTagName htmlTag
hi link htmlSpecialTagName htmlTag
hi htmlArg guifg=#A9A9A9 guibg=Black gui=NONE cterm=NONE term=NONE
hi htmlTitle guifg=Red guibg=Black gui=NONE cterm=NONE term=NONE
hi htmlH1 guifg=#F0F0F0 guibg=Black gui=underline cterm=underline term=underline
hi link htmlH2 htmlH1
hi link htmlH3 htmlH1
hi link htmlH4 htmlH1
hi link htmlH5 htmlH1
hi link htmlH6 htmlH1

hi htmlLink guifg=#41A0AD guibg=Black gui=underline cterm=underline term=underline
hi htmlSpecialChar guifg=#114180 guibg=Black gui=NONE cterm=NONE term=NONE  

" CSS Syntax
hi cssTagName guifg=#DB4000 ctermfg=15 guibg=black ctermbg=16 gui=underline cterm=underline term=underline
hi cssClassName guifg=#DA4158 ctermfg=15 guibg=black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi cssIdentifier guifg=#DC1111 ctermfg=15 guibg=black ctermbg=16 gui=NONE cterm=NONE term=NONE

hi link cssClassNameDot cssClassName 
hi link cssPseudoClassId cssIdentifier

hi cssBoxProp guifg=#855EB6 ctermfg=15 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi cssIEUIProp guifg=#881820 ctermfg=15 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi cssUnitDecorators guifg=#C0C280 ctermfg=15 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi cssError guifg=#970000 ctermfg=15 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE

hi link cssImportant cssTagName 

hi link cssUIProp cssBoxProp
hi link cssDefinition cssBoxProp
hi link cssFontProp cssBoxProp
hi link cssTextProp cssBoxProp
hi link cssListProp cssBoxProp
hi link cssColorProp cssBoxProp
hi link cssPositioningProp cssBoxProp
hi link cssPageProp cssBoxProp
hi link cssBorderProp cssBoxProp
hi link cssBackgroundProp cssBoxProp
hi link cssTableProp cssBoxProp
hi link cssAttrRegion cssError 
hi link cssFontDescriptorProp cssBoxProp
hi link cssArualProp cssBoxProp
hi link cssCeneratedContentProp cssBoxProp
hi link cssDimensionProp cssBoxProp
hi link cssMultiColumnProp cssBoxProp
hi link cssGeneratedContentProp cssBoxProp

hi link cssAnimationProp cssTagName
hi link cssTranformProp cssTagName
hi link cssTransitionProp cssTagName


" JavaScript Syntax
hi jsFunction guifg=#DB4300 ctermfg=15 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi jsFuncName guifg=#FF6600 ctermfg=15 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi jsFuncArgs guifg=#E70F0F ctermfg=15 guibg=Black ctermbg=16 gui=underline cterm=underline term=underline
hi jsAssignExpIdent guifg=#3A627B ctermfg=15 guibg=Black ctermbg=16 
hi link jsClass jsAssignExpIdent
hi jsRegexpString guifg=#C83E8D
hi javascriptunderscore guifg=#990000 ctermfg=15 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE

hi link jsStorageClass jsFunction
hi link jsNull jsFunction
hi link jsThis jsFunction
hi link jsReturn jsFunction
hi link jsRepeat jsFunction
hi link jsFuncCall jsFuncName
hi link jsPrototype jsFunction
hi link jsConditional jsFunction
hi link jsBooleanFalse jsFunction
hi link jsBooleanTrue  jsFunction
hi jsObjectKey guifg=#9E4779
hi jsGlobalObjects guifg=#9E0090 gui=bold,underline
hi jsOperator guifg=White gui=NONE

hi link jsFuncAssignObjChain jsObjectKey
hi link jsFuncAssignIdent	jsFuncName

hi link jsFunctionKey jsObjectKey 

"JSON Syntax
hi jsonKeyword guifg=#9E0090 gui=underline


" C Syntax
hi cInclude guifg=#980919 
hi cIncluded guifg=#879000 
hi cDefine guifg=#C91E58
hi cNumber guifg=#668CB6
hi cFormat guifg=#DB4300

hi link cType cInclude 
hi link cRepeat cInclude
hi link cStructure cInclude
hi link cNumbers cNumber
hi link cString String
hi link cSpecial String



