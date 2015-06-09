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
	let hstr='hi '.prop.' guifg='.gfg.' guibg='.gbg

	if strlen(a:tfg)
		let hstr+=' ctermfg='.tfg.' ctermbg='.tbg
		let hstr+=' gui='.stl.' cterm='.stl.' term='.stl
	endif

	execute hstr
endfunction

" link emplament Scheme
function! s:Link(prop,linker)
	let lstr='hi link '.prop.' '.linker
	execute lstr
endfunction

" Vim Normal 
" Default Normal Global
call s:Set('Normal','LightGray','Black','252','16','NONE')

" Cursor
call s:Set('Cursor'            , 'Black'     , '#FFFFFF'   , '16'  , '252' , 'NONE')
call s:Set('CusorLine'         , '#FFFFFF'   , '#080808'   , '252' , '234' , 'NONE')
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
call s:Set('Special'           , 'LightGray' , 'Black'     , '252  , '16'  , 'NONE')
call s:Set('MatchParen'        , 'Black'     , 'LightGray' , '16'  , '252' , 'NONE')

call s:Set('elixirDelimiter'   , '#778899'   , 'Black'     , '67'  , '16'  , 'NONE')
call s:Set('Search'            , '#C0C290'   , '#990808'   , '230' , '196' , 'NONE')
call s:Set('Visual'            , '#C0C290'   , '#758888'   , '230' , '188' , 'NONE')
call s:Set('Nontext'           , '#990000'   , 'Black'     , '124' , '16'  , 'NONE')

call s:Set('Directory'         , '#DB4301'   , 'Black'     , '208' , '16'  , 'NONE')
call s:Set('Title'             , '#C0C290'   , 'Black'     , '230' , '16'  , 'bold')
call s:Set('Todo'              , '#181818'   , '#C0C290'   , '232' , '230' , 'bold')

call s:Set('Pmenu'             , '#FFFFFF'   , '#C0C290'   , '255' , '230' , 'NONE')
call s:Set('PmenuSel'          , '#C0C280'   , 'Black'     , '230' , '16'  , 'NONE')

call s:Set('helpSpecial'       , '#DB4301'   , 'Black'     , '208' , '16'  , 'NONE')
call s:Set('helpHyperTextJump' , '#C0C290'   , 'Black'     , '230' , '16'  , 'underline')

" ------ Coustom ------
hi VertSplit guifg=Black guibg=White
hi TabLine guibg=#060606 guifg=#666666 gui=underline cterm=underline term=underline
hi TabLineFill guibg=#060606 guifg=#C0C280 gui=underline cterm=underline term=underline
hi TabLineSel guibg=#C0C280 guifg=#000000 gui=NONE cterm=NONE term=NONE
hi helpNote guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi StatusLine guibg=Black guifg=#C0C280 ctermfg=15 ctermbg=16 gui=underline cterm=underline term=underline 


" ------ Language Syntax ------

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
hi vimCommand guifg=Red ctermfg=15 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimIsCommand guifg=White ctermfg=15 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimMapLhs guifg=#D5523A ctermfg=15 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimNotation guifg=#D5523A ctermfg=15 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimAutoEvent guifg=#DB4300 


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

