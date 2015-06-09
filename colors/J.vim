" Vim color scheme
"
" Name:       J.vim
" Maintainer: YIJUN 
" License:    MIT
" 
" This Vim checme will rebuild in 2015 10 28

highlight clear

if exists("syntax_on")
	syntax reset
endif

set background = "dark"

let g:colors_name = "J"

" set Highlight
function! s:Set(prop,gfg,gbg,tfg,tbg,stl)
	let hstr='hi ' . a:prop . ' guifg=' . a:gfg . ' guibg=' . a:gbg

	if strlen(a:tfg)
		let hstr .=' ctermfg=' . a:tfg . ' ctermbg=' . a:tbg
		let hstr .=' gui=' . a:stl . ' cterm=' . a:stl . ' term=' . a:stl
	endif

	execute hstr
endfunction

" link emplament Scheme
function! s:Link(prop,linker)
	let lstr='hi link '. a:prop . ' ' . a:linker
	execute lstr
endfunction

" Vim Normal
" Default Normal Global
call s:Set('Normal'            , 'LightGray' , 'Black'     , '252' , '16'  , 'NONE')

" Cursor
call s:Set('Cursor'            , 'Black'     , '#FFFFFF'   , '16'  , '252' , 'NONE')
call s:Set('CursorLine'        , '#FFFFFF'   , '#080808'   , '252' , '234' , 'NONE')
call s:Set('CursorLineNr'      , '#990808'   , '#080808'   , '15'  , '16'  , 'NONE')

call s:Set('FoldColumn'        , 'DarkGray'  , 'Black'     , '248' , '16'  , 'NONE')
call s:Set('Folded'            , 'LightGray' , 'Black'     , '252' , '16'  , 'NONE')

call s:Set('LineNr'            , '#FFFFFF'   , 'Black'     , '248' , '16'  , 'NONE')
call s:Set('Statement'         , '#FFFFFF'   , 'Black'     , '15'  , '16'  , 'bold')
call s:Set('PreProc'           , '#FFFFFF'   , 'Black'     , '15'  , '16'  , 'bold')
call s:Set('String'            , '#79BE62'   , 'Black'     , '82'  , '16'  , 'NONE')
call s:Set('Comment'           , '#767676'   , 'Black'     , '243' , '16'  , 'NONE')

call s:Set('Constant'          , 'LightGray' , 'Black'     , '252' , '16'  , 'NONE')
call s:Set('Type'              , '#C0C290'   , 'Black'     , '15'  , '16'  , 'NONE')
call s:Set('Function'          , '#DB4301'   , 'Black'     , '208' , '16'  , 'NONE')

call s:Set('Identifier'        , 'LightGray' , 'Black'     , '252' , '16'  , 'NONE')
call s:Set('Special'           , 'LightGray' , 'Black'     , '252' , '16'  , 'NONE')
call s:Set('MatchParen'        , 'Black'     , 'LightGray' , '16'  , '252' , 'NONE')

call s:Set('elixirDelimiter'   , '#778899'   , 'Black'     , '67'  , '16'  , 'NONE')
call s:Set('Search'            , '#C0C290'   , '#990808'   , '230' , '196' , 'NONE')
call s:Set('Visual'            , '#C0C290'   , '#758888'   , '230' , '188' , 'NONE')
call s:Set('Nontext'           , '#990000'   , 'Black'     , '124' , '16'  , 'NONE')

call s:Set('Directory'         , '#DB4301'   , 'Black'     , '208' , '16'  , 'NONE')
call s:Set('Title'             , '#C0C290'   , 'Black'     , '230' , '16'  , 'bold')
call s:Set('Todo'              , '#181818'   , '#C0C290'   , '232' , '230' , 'bold')

call s:Set('Pmenu'             , '#C0C280'   , '#080808'   , '230' , '233' , 'NONE')
call s:Set('PmenuSel'          , '#F0F0F0'   , 'Black'     , '255' , '16'  , 'underline')

call s:Set('helpSpecial'       , '#DB4301'   , 'Black'     , '208' , '16'  , 'NONE')
call s:Set('helpHyperTextJump' , '#C0C290'   , 'Black'     , '230' , '16'  , 'underline')
call s:Set('helpNote'          , 'LightGray' , 'Black'     , '252' , '16'  , 'NONE')

" ------ Coustom ------
call s:Set('VertSplit'         , '#C0C280'   , 'Black'    , '230' , '16'  , 'NONE')
call s:Set('TabLine'           , '#666666'   , '#060606'   , '251' , '232' , 'underline')
call s:Set('TabLineFill'       , '#C0C280'   , '#060606'   , '230' , '232' , 'underline')
call s:Set('TabLineSel'        , '#000000'   , '#C0C280'   , '16'  , '230' , 'NONE')
call s:Set('StatusLine'        , '#C0C280'   , 'Black'     , '230' , '16'  , 'underline')



" ------ Language Syntax ------
" Vim Syntax
call s:Set('vimOption'       , '#C0C280' , 'Black' , '230' , '16' , 'NONE')
call s:Set('vimGroup'        , '#C0C280' , 'Black' , '230' , '16' , 'NONE')
call s:Set('vimCommentTitle' , '#737373' , 'Black' , '243' , '16' , 'NONE')
call s:Set('vimCommand'      , 'Red'     , 'Black' , '196' , '16' , 'NONE')
call s:Set('vimIsCommand'    , '#DB4301' , 'Black' , '208' , '16' , 'NONE')
call s:Set('vimMapLhs'       , '#D5523A' , 'Black' , '209' , '16' , 'NONE')

call s:Link('vimHiClear'     , 'vimHiGroup')
call s:Link('vimHiGroup'     , 'vimHiGroup')
call s:Link('vimHiAttrib'    , 'vimHiGroup')
call s:Link('vimHiGui'       , 'vimHiGroup')
call s:Link('vimHiGuiFgBg'   , 'vimHiGroup')
call s:Link('vimHiCTerm'     , 'vimHiGroup')
call s:Link('vimHiCTermFgBg' , 'vimHiGroup')
call s:Link('vimSynType'     , 'vimHiGroup')
call s:Link('vimNotation'    , 'vimMapLhs')
call s:Link('vimAutoEvent'   , 'vimIsCommand')

" HTML Syntax
call s:Set('htmlTag','#DF642F','Black','208','16','NONE')

call s:Link('htmlEndTag', 'htmlTag')
call s:Link('htmlTagN', 'htmlTag')
call s:Link('htmlTagName', 'htmlTag')
call s:Link('htmlSpecialTagName', 'htmlTag')

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
hi cssClassName guifg=#C1C292 ctermfg=15 guibg=black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi cssIdentifier guifg=#DC1111 ctermfg=15 guibg=black ctermbg=16 gui=NONE cterm=NONE term=NONE

hi link cssClassNameDot cssClassName 
hi link cssPseudoClassId cssIdentifier

hi cssBoxProp guifg=#855EB6 ctermfg=15 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi cssIEUIProp guifg=#881820 ctermfg=15 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi cssUnitDecorators guifg=#C0C280 ctermfg=15 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi cssError guifg=#970000 ctermfg=15 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE

hi link cssImportant cssTagName 

hi link cssUIProp cssBoxProp
hi link cssAuralProp cssBoxProp
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
hi link cssFlexibleBoxProp cssBoxProp

" for IE CSS Hack
hi link cssUnicodeEscape Comment 
hi link cssHack Comment

hi link cssAnimationProp cssTagName
hi link cssTranformProp cssTagName
hi link cssTransitionProp cssTagName


" JavaScript Syntax
hi jsFunction guifg=#DB4300 ctermfg=15 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi jsFuncName guifg=#FF6600 ctermfg=15 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi jsFuncArgs guifg=#E70F0F ctermfg=15 guibg=Black ctermbg=16 gui=underline cterm=underline term=underline
hi jsAssignExpIdent guifg=#3A627B ctermfg=15 guibg=Black ctermbg=16 
hi jsNumber guifg=#668CB6 guibg=Black


hi link jsClass jsAssignExpIdent
hi jsRegexpString guifg=#C83E8D
hi javascriptunderscore guifg=#990000 ctermfg=15 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE

hi link jsStorageClass jsFunction
hi link jsNull jsFunction
hi link jsThis jsFunction
hi link jsLabel jsFunction
hi link jsStatement jsFunction
hi link jsReturn jsFunction
hi link jsRepeat jsFunction
hi link jsFuncCall jsFuncName
hi link jsPrototype jsFunction
hi link jsConditional jsFunction
hi link jsBooleanFalse jsFunction
hi link jsBooleanTrue  jsFunction
hi jsObjectKey guifg=#9E4779
hi jsGlobalObjects guifg=#9E0090 gui=underline
hi jsOperator guifg=White gui=NONE

hi link jsRegexpCharClass String 
hi link jsFuncAssignObjChain jsObjectKey
hi link jsFuncAssignIdent	jsFuncName
hi link jsFunctionKey jsObjectKey 
hi link jsRegexpQuantifier jsAssignExpIdent
hi link jsRegexpOr jsAssignExpIdent

" JSON Syntax
hi jsonKeyword guifg=#DAA68F gui=underline
hi jsonBrace guifg=#DB4610 gui=NONE


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

"------ Vim Plugin Syntax ------

" Tagbar Plugin
" https://github.com/majutsushi/tagbar
hi TagbarScope guifg=#DB4300 guibg=Black
hi TagbarType guifg=#C91E58 guibg=Black

" NerdTree Plugin
" https://github.com/scrooloose/nerdtree
hi NerdTreeOpenable guifg=#DB4300 gui=bold
hi NerdTreeCWD guifg=#990902
hi NerdTreeDir guifg=#DAA68F
hi NerdTreeFile guifg=#f8f8f8

hi link NerdTreeUp NerdTreeDir 
hi NerdTreeHelpTitle guifg=#990000 gui=bold,underline

" Gundo Plugin
" https://github.com/sjl/gundo.vim
hi GundoCurrentLocation guifg=#DB4300 gui=bold
hi GundoNumber guifg=#668CB6
hi GundoNumberField guifg=#DB4300 
" Gundo diff file
hi diffNewFile guifg=#79BE62
hi diffFile guifg=#79BE62
hi link diffLine GundoCurrentLocation
hi diffRemoved guifg=#990000 guibg=Black
hi diffAdded guifg=#79BE62 guibg=Black

" Unite Plugin
hi uniteCandidateSourceName guifg=#DB4300 guibg=Black
hi uniteSource_File guifg=#F0F0F0 guibg=Black 
hi uniteCandidateIcon guifg=#79BE62
hi uniteSource_DirectoryNew guifg=#DB4300

" MRU Plugin
hi qfFileName guifg=#990000 guibg=Black gui=NONE
hi link MRUFileName qfFileName

