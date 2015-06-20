" Vim color scheme
"
" Name:       J.vim
" Maintainer: YIJUN 
" License:    MIT
" 
" This Vim ColorScheme will rebuild in 2015 10 28

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

	exec hstr
endfunction

" link emplament Scheme
function! s:Link(prop,linker)
	let lstr='hi link '. a:prop . ' ' . a:linker
	exec lstr
endfunction


" Vim Normal
" Default Normal Global
call s:Set('Normal'            , 'LightGray' , 'Black'   , '252' , '16'  , 'NONE')

" Cursor
call s:Set('Cursor'            , 'Black'     , '#FFFFFF' , '16'  , '252' , 'NONE')
call s:Set('CursorLine'        , '#FFFFFF'   , '#080808' , '252' , '232' , 'NONE')
call s:Set('CursorLineNr'      , '#990808'   , '#080808' , '160' , '232' , 'NONE')

call s:Set('FoldColumn'        , 'DarkGray'  , 'Black'   , '248' , '16'  , 'NONE')
call s:Set('Folded'            , 'LightGray' , 'Black'   , '252' , '16'  , 'NONE')

call s:Set('LineNr'            , '#FFFFFF'   , 'Black'   , '248' , '16'  , 'NONE')
call s:Set('Statement'         , '#FFFFFF'   , 'Black'   , '15'  , '16'  , 'bold')
call s:Set('PreProc'           , '#FFFFFF'   , 'Black'   , '15'  , '16'  , 'NONE')
call s:Set('PreCondit'         , '#FFFFFF'   , 'Black'   , '15'  , '16'  , 'bold')
call s:Set('String'            , '#79BE62'   , 'Black'   , '83'  , '16'  , 'NONE')
call s:Set('Character'         , '#79BE62'   , 'Black'   , '83'  , '16'  , 'NONE')
call s:Set('Boolean'           , '#DB4301'   , 'Black'   , '208' , '16'  , 'NONE')
call s:Set('Comment'           , '#767676'   , 'Black'   , '243' , '16'  , 'NONE')
call s:Set('Operator'          , 'White'     , 'Black'   , '15'  , '16'  , 'NONE')

call s:Set('Error'             , 'White'     , 'Red'     , '15'  , '9'   , 'NONE')
call s:Set('ErrorMsg'          , 'White'     , 'Red'     , '15'  , '9'   , 'NONE')
call s:Set('WarningMsg'        , 'Red'       , '#FFFF00' , '9'   , '226' , 'NONE')

call s:Set('Keyword'           , '#dfaf87'   , 'Black'   , '180' , '16'  , 'underline')
call s:Set('Constant'          , 'LightGray' , 'Black'   , '252' , '16'  , 'NONE')
call s:Set('Type'              , '#C0C290'   , 'Black'   , '15'  , '16'  , 'NONE')
call s:Set('Function'          , '#DB4301'   , 'Black'   , '208' , '16'  , 'NONE')

call s:Set('Identifier'        , 'LightGray' , 'Black'   , '252' , '16'  , 'NONE')
call s:Set('Special'           , 'LightGray' , 'Black'   , '252' , '16'  , 'NONE')
call s:Set('MatchParen'        , 'LightGray' , 'Black'   , '252' , '16'  , 'NONE')

call s:Set('elixirDelimiter'   , '#778899'   , 'Black'   , '67'  , '16'  , 'NONE')
call s:Set('Search'            , '#C0C290'   , '#990808' , '230' , '196' , 'NONE')
call s:Set('Visual'            , '#C0C290'   , '#758888' , '232' , '188' , 'NONE')
call s:Set('Nontext'           , '#990000'   , 'Black'   , '124' , '16'  , 'NONE')

call s:Set('Directory'         , '#DB4301'   , 'Black'   , '208' , '16'  , 'NONE')
call s:Set('Title'             , '#C0C290'   , 'Black'   , '230' , '16'  , 'bold')
call s:Set('Todo'              , '#181818'   , '#C0C290' , '232' , '230' , 'bold')

call s:Set('Pmenu'             , '#C0C280'   , '#060606' , '230' , '232' , 'NONE')
call s:Set('PmenuSel'          , '#F0F0F0'   , 'Black'   , '255' , '16'  , 'underline')
call s:Set('PmenuSbar'         , '#C0C280'   , '#060606' , '230' , '232' , 'NONE')
call s:Set('PemnuThumb'        , '#C0C280'   , '#060606' , '230' , '232' , 'NONE')

call s:Set('Tag'               , '#C0C280'   , 'Black'   , '230' , '16'  , 'NONE')
call s:Set('Title'             , '#C0C280'   , 'Black'   , '230' , '16'  , 'underline')

call s:Set('helpSpecial'       , '#DB4301'   , 'Black'   , '208' , '16'  , 'NONE')
call s:Set('helpHyperTextJump' , '#C0C290'   , 'Black'   , '230' , '16'  , 'underline')
call s:Set('helpNote'          , 'LightGray' , 'Black'   , '252' , '16'  , 'NONE')

" ------ Coustom ------
call s:Set('VertSplit'         , '#C0C280'   , 'Black'   , '230' , '16'  , 'NONE')
call s:Set('TabLine'           , '#666666'   , '#060606' , '251' , '232' , 'underline')
call s:Set('TabLineFill'       , '#C0C280'   , '#060606' , '230' , '232' , 'underline')
call s:Set('TabLineSel'        , '#000000'   , '#C0C280' , '16'  , '230' , 'NONE')
call s:Set('StatusLine'        , '#C0C280'   , 'Black'   , '230' , '16'  , 'underline')

call s:Set('SpecialKey'        , '#121212'   , 'Black'   , '233' , '16'  , 'NONE')

" ------ Language Syntax ------
" Vim Syntax
call s:Set('vimOption'       , '#C0C280' , 'Black' , '230' , '16' , 'NONE')
call s:Set('vimGroup'        , '#C0C280' , 'Black' , '230' , '16' , 'NONE')
call s:Set('vimCommentTitle' , '#737373' , 'Black' , '243' , '16' , 'NONE')
call s:Set('vimCommand'      , 'Red'     , 'Black' , '196' , '16' , 'NONE')
call s:Set('vimIsCommand'    , '#DB4301' , 'Black' , '208' , '16' , 'NONE')
call s:Set('vimMapLhs'       , '#D5523A' , 'Black' , '209' , '16' , 'NONE')
call s:Set('vimEnvvar'       , '#5F00D7' , 'Black' , '56'  , '16' , 'NONE')

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
call s:Set('htmlTag'         , '#DF642F' , 'Black' , '208' , '16' , 'NONE')
call s:Set('htmlArg'         , '#A9A9A9' , 'Black' , '246' , '16' , 'NONE')
call s:Set('htmlTitle'       , 'Red'     , 'Black' , '196' , '16' , 'NONE')
call s:Set('htmlH1'          , '#C2C280' , 'Black' , '230' , '16' , 'underline')
call s:Set('htmlLink'        , '#41A0AD' , 'Black' , '69'  , '16' , 'underline')
call s:Set('htmlSpecialChar' , '#114180' , 'Black' , '78'  , '16' , 'NONE')

call s:Link('htmlEndTag'         , 'htmlTag')
call s:Link('htmlTagN'           , 'htmlTag')
call s:Link('htmlTagName'        , 'htmlTag')
call s:Link('htmlSpecialTagName' , 'htmlTag')
call s:Link('htmlH2'             , 'htmlH1')
call s:Link('htmlH3'             , 'htmlH1')
call s:Link('htmlH4'             , 'htmlH1')
call s:Link('htmlH5'             , 'htmlH1')
call s:Link('htmlH6'             , 'htmlH1')

" CSS Syntax
call s:Set('cssBraces'         , '#FFFFFF' , 'Black' , '15'  , '16' , 'NONE')
call s:Set('cssTagName'        , '#DB4300' , 'Black' , '202' , '16' , 'underline')
call s:Set('cssClassName'      , '#C1C298' , 'Black' , '229' , '16' , 'NONE')
call s:Set('cssIdentifier'     , '#DC1111' , 'Black' , '160' , '16' , 'NONE')
call s:Set('cssBoxProp'        , '#855EB8' , 'Black' , '62' , '16' , 'NONE')
call s:Set('cssIEUIProp'       , '#881828' , 'Black' , '88'  , '16' , 'NONE')
call s:Set('cssUnitDecorators' , '#C0C280' , 'Black' , '230' , '16' , 'NONE')
call s:Set('cssError'          , '#990000' , 'Black' , '124' , '16' , 'NONE')

call s:Link('cssClassNameDot'         , 'cssClassName')
call s:Link('cssPseudoClassId'        , 'cssIdentifier')
call s:Link('cssImportant'            , 'cssTagName')
call s:Link('cssUIProp'               , 'cssBoxProp')
call s:Link('cssAuralProp'            , 'cssBoxProp')
call s:Link('cssDefinition'           , 'cssBoxProp')
call s:Link('cssFontProp'             , 'cssBoxProp')
call s:Link('cssTextProp'             , 'cssBoxProp')
call s:Link('cssListProp'             , 'cssBoxProp')
call s:Link('cssColorProp'            , 'cssBoxProp')
call s:Link('cssPositioningProp'      , 'cssBoxProp')
call s:Link('cssPageProp'             , 'cssBoxProp')
call s:Link('cssBorderProp'           , 'cssBoxProp')
call s:Link('cssBackgroundProp'       , 'cssBoxProp')
call s:Link('cssTableProp'            , 'cssBoxProp')
call s:Link('cssAttrRegion'           , 'cssError')
call s:Link('cssFontDescriptorProp'   , 'cssBoxProp')
call s:Link('cssArualProp'            , 'cssBoxProp')
call s:Link('cssCeneratedContentProp' , 'cssBoxProp')
call s:Link('cssDimensionProp'        , 'cssBoxProp')
call s:Link('cssMultiColumnProp'      , 'cssBoxProp')
call s:Link('cssGeneratedContentProp' , 'cssBoxProp')
call s:Link('cssFlexibleBoxProp'      , 'cssBoxProp')
call s:Link('cssUIAttr'               , 'cssBoxProp')
call s:Link('cssUnicodeEscape'        , 'Comment')
call s:Link('cssHack'                 , 'Comment')
call s:Link('cssAnimationProp'        , 'cssTagName')
call s:Link('cssTranformProp'         , 'cssTagName')
call s:Link('cssTransitionProp'       , 'cssTagName')


" JavaScript Syntax
call s:Set('jsFunction'       , '#DB4300' , 'Black' , '202' , '16' , 'NONE')
call s:Set('jsFuncName'       , '#FF6600' , 'Black' , '208' , '16' , 'NONE')
call s:Set('jsFuncArgs'       , '#E70F0F' , 'Black' , '9'   , '16' , 'underline')
call s:Set('jsAssignExpIdent' , '#3A627B' , 'Black' , '24'  , '16' , 'NONE')
call s:Set('jsNumber'         , '#669CB6' , 'Black' , '68'  , '16' , 'NONE')
call s:Set('jsRegexpString'   , '#E21888' , 'Black' , '163' , '16' , 'NONE')
call s:Set('jsObjectKey'      , '#9E4479' , 'Black' , '206' , '16' , 'NONE')
call s:Set('jsGlobalObjects'  , '#9E0090' , 'Black' , '201' , '16' , 'NONE')
call s:Set('jsOperator'       , '#FFFFFF' , 'Black' , '15'  , '16' , 'NONE')

call s:Link('jsClass'              , 'jsAssignExpIdent')
call s:Link('jsStorageClass'       , 'jsFunction')
call s:Link('jsNull'               , 'jsFunction')
call s:Link('jsThis'               , 'jsFunction')
call s:Link('jsLabel'              , 'jsFunction')
call s:Link('jsStatement'          , 'jsFunction')
call s:Link('jsReturn'             , 'jsFunction')
call s:Link('jsRepeat'             , 'jsFunction')
call s:Link('jsFuncCall'           , 'jsFuncName')
call s:Link('jsPrototype'          , 'jsFunction')
call s:Link('jsConditional'        , 'jsFunction')
call s:Link('jsBooleanFalse'       , 'jsFunction')
call s:Link('jsBooleanTrue'        , 'jsFunction')
call s:Link('jsException'          , 'jsFunction')
call s:Link('jsExceptions'         , 'jsFunction')
call s:Link('jsRegexpCharClass'    , 'String' )
call s:Link('jsFuncAssignObjChain' , 'jsObjectKey')
call s:Link('jsFuncAssignIdent'    , 'jsFuncName')
call s:Link('jsFunctionKey'        , 'jsObjectKey' )
call s:Link('jsRegexpQuantifier'   , 'jsAssignExpIdent')
call s:Link('jsRegexpOr'           , 'jsAssignExpIdent')
call s:Link('jsSpecial'            , 'jsNumber')

" JSON Syntax
call s:Set('jsonKeyword'  , '#C0C290' , 'Black' , '230' , '16' , 'NONE')
call s:Set('jsonBrace'    , '#C0C280' , 'Black' , '230' , '16' , 'NONE')

" Less Syntax
call s:Set('lessVariable' , '#000080' , 'Black' , '4'   , '16' , 'NONE')
call s:Set('lessClass'    , '#008080' , 'Black' , '6' , '16' , 'NONE')

call s:Link('lessMixinChar','lessClass')

" C Syntax
call s:Set('cInclude'  , '#980919' , 'Black' , '88'  , '16' , 'NONE')
call s:Set('cIncluded' , '#C2C290' , 'Black' , '230' , '16' , 'NONE')
call s:Set('cDefine'   , '#C91E58' , 'Black' , '162' , '16' , 'NONE')
call s:Set('cNumber'   , '#668CB6' , 'Black' , '68'  , '16' , 'NONE')
call s:Set('cFormat'   , '#DB4300' , 'Black' , '202' , '16' , 'NONE')

call s:Link('cType'      , 'cInclude' )
call s:Link('cRepeat'    , 'cInclude')
call s:Link('cStructure' , 'cInclude')
call s:Link('cNumbers'   , 'cNumber')
call s:Link('cString'    , 'String')
call s:Link('cSpecial'   , 'String')


"------ Vim Plugin Syntax ------

" Tagbar Plugin
" https://github.com/majutsushi/tagbar
call s:Set('TagbarScope' , '#DB4300' , 'Black' , '202' , '16' , 'NONE')
call s:Set('TagbarType'  , '#C91E58' , 'Black' , '205' , '16' , 'NONE')

" NerdTree Plugin
" https://github.com/scrooloose/nerdtree
call s:Set('NerdTreeOpenable'  , '#DB4300' , 'Black' , '202' , '16' , 'NONE')
call s:Set('NerdTreeCWD'       , '#C0C280' , 'Black' , '230' , '16' , 'NONE')
call s:Set('NerdTreeDir'       , '#C0C288' , 'Black' , '217' , '16' , 'NONE')
call s:Set('NerdTreeFile'      , '#F8F8F8' , 'Black' , '255' , '16' , 'NONE')
call s:Set('NerdTreeHelpTitle' , '#990080' , 'Black' , '196' , '16' , 'underline')
call s:Set('NerdTreeExecFile'  , '#990080' , 'Black' , '196' , '16' , 'NONE')

call s:Link('NerdTreeUp', 'NerdTreeDir') 

" Gundo Plugin
" https://github.com/sjl/gundo.vim
call s:Set('GundoCurrentLocation' , '#DB4300' , 'Black' , '202' , '16' , 'bold')
call s:Set('GundoNumber'          , '#668CB6' , 'Black' , '111' , '16' , 'NONE')
call s:Set('GundoNumberField'     , '#DB4300' , 'Black' , '202' , '16' , 'NONE')
" Gundo diff file
call s:Set('diffRemoved'          , '#990000' , 'Black' , '124' , '16' , 'NONE')

call s:Link('diffLine'    , 'GundoCurrentLocation')
call s:Link('diffNewFile' , 'String')
call s:Link('diffFile'    , 'String')
call s:Link('diffAdded'   , 'String')


" Unite Plugin
call s:Link('uniteCandidateSourceName' , 'NerdTreeOpenable')
call s:Link('uniteSource_DirectoryNew' , 'NerdTreeOpenable')
call s:Link('uniteCandidateIcon'       , 'String')
call s:Link('uniteSource_File'         , 'NerdTreeFile')

" MRU Plugin
call s:Link('qfFileName'  , 'diffRemoved')
call s:Link('MRUFileName' , 'diffRemoved')

"Ag Search
call s:Link('qfLineNr','cNumber')

hi clear SignColumn
