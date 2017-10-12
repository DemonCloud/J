" Vim colors
" Name: J
" Author: YiJun
" License: MIT
"
" This Vim ColorScheme will rebuild in 2015 10 28
highlight clear

if exists("syntax_on")
	syntax reset
endif

set background=dark

let g:colors_name="J"

" set Highlight
function! s:Set(prop,gfg,gbg,tfg,tbg,stl)
	let hstr='hi ' . a:prop . ' guifg=' . a:gfg . ' guibg=' . a:gbg
	if strlen(a:tfg)
		let hstr .=' ctermfg=' . a:tfg . ' ctermbg=' . a:tbg
		let hstr .=' gui=' . a:stl . ' cterm=' . a:stl . ' term=' . a:stl
	endif

	try
		exec hstr
	catch
	endtry
endfunction

" link emplament Scheme
function! s:Link(prop,linker)
	let lstr='hi link '. a:prop . ' ' . a:linker
	exec lstr
endfunction

" Main Color Style
let s:jcg1='#080808' " Background
let s:jct1='232'
let s:jcg2='#C0C280' " Main Text Color
let s:jct2='143'

	" Vim Normal
" Default Normal Global
call s:Set('Normal'            , '#A8A8A8'   , s:jcg1    , '248'  , s:jct1 , 'NONE')

" Cursor
call s:Set('Cursor'            , s:jcg1      , '#870000' , s:jct1 , '88'   , 'NONE')
call s:Set('CursorLine'        , '#990808'   , '#060606' , '160'  , '16'   , 'NONE')
call s:Set('CursorLineNr'      , '#990808'   , '#060606' , '160'  , '16'   , 'NONE')

call s:Set('FoldColumn'        , 'DarkGray'  , s:jcg1    , '248'  , s:jct1 , 'NONE')
call s:Set('Folded'            , '#FFFFFF'   , '#870000' , '15'   , '88'   , 'NONE')

call s:Set('LineNr'            , s:jcg2      , s:jcg1    , s:jct2 , s:jct1 , 'NONE')
call s:Set('Statement'         , '#FFFFFF'   , s:jcg1    , '15'   , s:jct1 , 'bold')
call s:Set('PreProc'           , '#FFFFFF'   , s:jcg1    , '15'   , s:jct1 , 'NONE')
call s:Set('PreCondit'         , '#FFFFFF'   , s:jcg1    , '15'   , s:jct1 , 'bold')
call s:Set('String'            , '#5F875F'   , s:jcg1    , '65'   , s:jct1 , 'NONE')
call s:Set('Character'         , '#79BE62'   , s:jcg1    , '83'   , s:jct1 , 'NONE')
call s:Set('Boolean'           , '#DB4301'   , s:jcg1    , '208'  , s:jct1 , 'NONE')
call s:Set('Comment'           , '#767676'   , s:jcg1    , '243'  , s:jct1 , 'NONE')
call s:Set('Operator'          , 'White'     , s:jcg1    , '15'   , s:jct1 , 'NONE')

call s:Set('Error'             , 'Red'       , s:jcg1    , '9'    , s:jct1 , 'NONE')
call s:Set('ErrorMsg'          , 'Red'       , s:jcg1    , '9'    , s:jct1 , 'NONE')
call s:Set('WarningMsg'        , 'Red'       , '#FFFF87' , '9'    , '228'  , 'NONE')

call s:Set('Keyword'           , '#DFAF87'   , s:jcg1    , '180'  , s:jct1 , 'NONE')
call s:Set('Constant'          , 'LightGray' , s:jcg1    , '252'  , s:jct1 , 'NONE')
call s:Set('Type'              , '#C0C290'   , s:jcg1    , s:jct2 , s:jct1 , 'NONE')
call s:Set('Function'          , '#DB4301'   , s:jcg1    , '208'  , s:jct1 , 'NONE')

call s:Set('Identifier'        , 'LightGray' , s:jcg1    , '252'  , s:jct1 , 'NONE')
call s:Set('Special'           , 'LightGray' , s:jcg1    , '252'  , s:jct1 , 'NONE')
call s:Set('MatchParen'        , 'LightGray' , s:jcg1    , '252'  , s:jct1 , 'NONE')

call s:Set('elixirDelimiter'   , '#778899'   , s:jcg1    , '67'   , s:jct1 , 'NONE')
call s:Set('Search'            , s:jcg1      , '#990808' , s:jct1 , '196'  , 'NONE')
call s:Set('IncSearch'         , s:jcg1      , '#990808' , s:jct1 , '196'  , 'NONE')
call s:Set('Visual'            , '#C0C290'   , '#758888' , s:jct2 , '188'  , 'NONE')
call s:Set('Nontext'           , '#990000'   , s:jcg1    , '124'  , s:jct1 , 'NONE')

call s:Set('Directory'         , '#DB4301'   , s:jcg1    , '208'  , s:jct1 , 'NONE')
call s:Set('Title'             , '#C0C290'   , s:jcg1    , s:jct2 , s:jct1 , 'bold')
call s:Set('Todo'              , '#181818'   , '#C0C290' , s:jct1 , s:jct2 , 'bold')

call s:Set('Pmenu'             , s:jcg2      , '#000000' , s:jct2 , '16'   , 'NONE')
call s:Set('PmenuSel'          , '#000000'   , '#870000' , '16'   , '88'   , 'NONE')
call s:Set('PmenuSbar'         , s:jcg2      , '#000000' , s:jct2 , '16'   , 'NONE')
call s:Set('PemnuThumb'        , s:jcg2      , '#000000' , s:jct2 , '16'   , 'NONE')

call s:Set('Tag'               , s:jcg2      , s:jcg1    , s:jct2 , s:jct1 , 'NONE')
call s:Set('Title'             , s:jcg2      , s:jcg1    , s:jct2 , s:jct1 , 'NONE')

call s:Set('helpSpecial'       , '#DB4301'   , s:jcg1    , '208'  , s:jct1 , 'NONE')
call s:Set('helpHyperTextJump' , '#C0C290'   , s:jcg1    , s:jct2 , s:jct1 , 'NONE')
call s:Set('helpNote'          , 'LightGray' , s:jcg1    , '252'  , s:jct1 , 'NONE')
call s:Set('helpVim'           , '#870000'   , s:jcg1    , '88'   , s:jct1 , 'NONE')

call s:Link('DiffAdd','String')
call s:Link('DiffChange','Title')
call s:Link('DiffDelete','Search')

call s:Link('StorageClass','Title')
call s:Link('Structure','Function')

call s:Link('helpSectionDelim' , 'helpVim')
call s:Link('helpHeader'       , 'helpVim')

" ------ Coustom ------
call s:Set('VertSplit'          , '#101010' , s:jcg1    , '233'  , s:jct1 , 'NONE')
call s:Set('TabLine'            , '#3a3a3a' , '#121212' , '237'  , '233'  , 'NONE')
call s:Set('TabLineFill'        , '#101010' , s:jcg1    , '233'  , s:jct1 , 'NONE')
call s:Set('TabLineExp'         , '#870000' , '#101010' , '88'   , '233' ,  'NONE')
call s:Set('TabLineSel'         , '#870000' , s:jcg1    , '88'   , s:jct1 , 'NONE')
call s:Set('StatusLine'         , s:jcg2    , s:jcg1    , s:jct2 , s:jct1 , 'NONE')
call s:Set('StatusLineNC'       , '#101010' , s:jcg1    , '233'  , s:jct1 , 'underline')
call s:Set('SpecialKey'         , '#121212' , s:jcg1    , '233'  , s:jct1 , 'NONE')

" ------ Language Syntax ------
" Vim Syntax
call s:Set('vimOption'          , s:jcg2    , s:jcg1    , s:jct2 , s:jct1 , 'NONE')
call s:Set('vimGroup'           , s:jcg2    , s:jcg1    , s:jct2 , s:jct1 , 'NONE')
call s:Set('vimCommentTitle'    , '#737373' , s:jcg1    , '243'  , s:jct1 , 'NONE')
call s:Set('vimCommand'         , 'Red'     , s:jcg1    , '196'  , s:jct1 , 'NONE')
call s:Set('vimIsCommand'       , s:jcg2    , s:jcg1    , s:jct2 , s:jct1 , 'NONE')
call s:Set('vimMapLhs'          , '#D5523A' , s:jcg1    , '209'  , s:jct1 , 'NONE')
call s:Set('vimEnvvar'          , '#5F00D7' , s:jcg1    , '56'   , s:jct1 , 'NONE')

call s:Link('vimHiClear'         , 'vimHiGroup')
call s:Link('vimHiGroup'         , 'vimHiGroup')
call s:Link('vimHiAttrib'        , 'vimHiGroup')
call s:Link('vimHiGui'           , 'vimHiGroup')
call s:Link('vimHiGuiFgBg'       , 'vimHiGroup')
call s:Link('vimHiCTerm'         , 'vimHiGroup')
call s:Link('vimHiCTermFgBg'     , 'vimHiGroup')
call s:Link('vimSynType'         , 'vimHiGroup')
call s:Link('vimNotation'        , 'vimMapLhs')
call s:Link('vimAutoEvent'       , 'vimIsCommand')
call s:Link('vimVar'             , 'vimIsCommand')
call s:Link('vimUserFunc'        , 'vimCommand')
call s:Link('vimFunction'        , 'Function')
call s:Link('vimMapMod'          , 'vimIsCommand')
call s:Link('vimMapModkey'       , 'vimIsCommand')
call s:Link('vimFuncSID'         , 'Function')

" HTML Syntax
call s:Set('htmlTag'             , '#DF642F'       , s:jcg1 , '208'  , s:jct1 , 'NONE')
call s:Set('htmlArg'             , s:jcg2          , s:jcg1 , s:jct2 , s:jct1 , 'NONE')
call s:Set('htmlTitle'           , '#870000'       , s:jcg1 , '88'   , s:jct1 , 'bold')
call s:Set('htmlH1'              , '#C2C280'       , s:jcg1 , s:jct2 , s:jct1 , 'bold')
call s:Set('htmlLink'            , '#41A0AD'       , s:jcg1 , '69'   , s:jct1 , 'NONE')
call s:Set('htmlSpecialChar'     , '#114180'       , s:jcg1 , '78'   , s:jct1 , 'NONE')

call s:Link('htmlEndTag'         , 'htmlTag')
call s:Link('htmlTagN'           , 'htmlTag')
call s:Link('htmlTagName'        , 'htmlTag')
call s:Link('htmlSpecialTagName' , 'htmlTag')
call s:Link('htmlH2'             , 'htmlH1')
call s:Link('htmlH3'             , 'htmlH1')
call s:Link('htmlH4'             , 'htmlH1')
call s:Link('htmlH5'             , 'htmlH1')
call s:Link('htmlH6'             , 'htmlH1')
call s:Link('xmlTag'             , 'htmlTag')
call s:Link('xmlTagName'         , 'htmlTag')
call s:Link('xmlEndTag'          , 'htmlTag')

" CSS Syntax
call s:Set('cssBraces'           , '#FFFFFF'       , s:jcg1 , '15'   , s:jct1 , 'NONE')
call s:Set('cssTagName'          , '#DB4300'       , s:jcg1 , '202'  , s:jct1 , 'NONE')
call s:Set('cssClassName'        , '#C1C298'       , s:jcg1 , '229'  , s:jct1 , 'NONE')
call s:Set('cssIdentifier'       , '#DC1111'       , s:jcg1 , '160'  , s:jct1 , 'NONE')
call s:Set('cssBoxProp'          , '#855EB8'       , s:jcg1 , '62'   , s:jct1 , 'NONE')
call s:Set('cssIEUIProp'         , '#881828'       , s:jcg1 , '88'   , s:jct1 , 'NONE')
call s:Set('cssUnitDecorators'   , s:jcg2          , s:jcg1 , s:jct2 , s:jct1 , 'NONE')
call s:Set('cssError'            , '#990000'       , s:jcg1 , '124'  , s:jct1 , 'NONE')

call s:Link('cssClassNameDot'         , 'cssClassName')
call s:Link('cssPseudoClassId'        , 'cssIdentifier')
call s:Link('cssImportant'            , 'cssTagName')
call s:Link('cssUIProp'               , 'cssBoxProp')
call s:Link('cssAuralProp'            , 'cssBoxProp')
call s:Link('cssDefinition'           , 'cssBoxProp')
call s:Link('cssFontProp'             , 'cssBoxProp')
call s:Link('cssFontAttr'             , 'cssBoxProp')
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
call s:Link('cssValueLength'          , 'jsNumber')
call s:Link('cssAnimationProp'        , 'cssTagName')
call s:Link('cssTranformProp'         , 'cssTagName')
call s:Link('cssTransitionProp'       , 'cssTagName')

" JavaScript Syntax
call s:Set('jsFunction'       , '#DB4300' , s:jcg1 , '202' , s:jct1 , 'NONE')
call s:Set('jsFuncName'       , '#FF6600' , s:jcg1 , '208' , s:jct1 , 'NONE')
call s:Set('jsFuncArgs'       , '#E70F0F' , s:jcg1 , '9'   , s:jct1 , 'NONE')
call s:Set('jsAssignExpIdent' , '#3A627B' , s:jcg1 , '24'  , s:jct1 , 'NONE')
call s:Set('jsNumber'         , '#669CB6' , s:jcg1 , '68'  , s:jct1 , 'NONE')
call s:Set('jsRegexpString'   , '#E21888' , s:jcg1 , '163' , s:jct1 , 'NONE')
call s:Set('jsObjectKey'      , '#AF00FF' , s:jcg1 , '129' , s:jct1 , 'NONE')
call s:Set('jsGlobalObjects'  , '#9E0090' , s:jcg1 , '201' , s:jct1 , 'NONE')
call s:Set('jsOperator'       , '#FFFFFF' , s:jcg1 , '15'  , s:jct1 , 'NONE')
call s:Set('jsVariableDef'    , '#005f87' , s:jcg1 , '24'  , s:jct1 , 'NONE')

call s:Link('jsParenRepeat'        , 'jsVariableDef')
call s:Link('jsDestructuringBlock' , 'jsVariableDef')
call s:Link('jsClass'              , 'jsAssignExpIdent')
call s:Link('jsImport'             , 'jsFunction')
call s:Link('jsDo'                 , 'jsFunction')
call s:Link('jsModuleAs'           , 'jsFunction')
call s:Link('jsExport'             , 'jsFunction')
call s:Link('jsFrom'               , 'jsFunction')
call s:Link('jsAsyncKeyword'       , 'jsFunction')
call s:Link('jsStorageClass'       , 'jsFunction')
call s:Link('jsTry'                , 'jsFunction')
call s:Link('jsCatch'              , 'jsFunction')
call s:Link('jsNull'               , 'jsFunction')
call s:Link('jsThis'               , 'jsFunction')
call s:Link('jsSuper'              , 'jsFunction')
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
call s:Link('jsArrowFunction'      , 'jsFunction')
call s:Link('jsRegexpCharClass'    , 'String' )
call s:Link('jsFuncAssignObjChain' , 'jsObjectKey')
call s:Link('jsGlobalNodeObjects'  , 'jsGlobalObjects')
call s:Link('jsModuleKeyword'      , 'jsGlobalObjects')
call s:Link('jsFuncAssignIdent'    , 'jsFuncName')
call s:Link('jsBuiltins'           , 'jsFuncName')
call s:Link('jsFunctionKey'        , 'jsObjectKey' )
call s:Link('jsArguments'          , 'jsObjectKey' )
call s:Link('jsRegexpQuantifier'   , 'jsAssignExpIdent')
call s:Link('jsRegexpOr'           , 'jsAssignExpIdent')
call s:Link('jsSpecial'            , 'jsNumber')

" TypeScript
call s:Link('typescriptBraces'        , 'jsFuncBraces')
call s:Link('typescriptReserved'      , 'jsFunction')
call s:Link('typescriptParens'        , 'jsParen')
call s:Link('typescriptConditional'   , 'jsFunction')
call s:Link('typescriptGlobalObjects' , 'jsGlobalObjects')
call s:Link('typescriptIdentifier'    , 'jsFunction')
call s:Link('typescriptStatement'     , 'jsFunction')
call s:Link('typescriptBranch'        , 'jsFunction')
call s:Link('typescriptExceptions'    , 'jsFunction')
call s:Link('typescriptLabel'         , 'jsFuncName')

" PHP Syntax
call s:Set('phpRegion'    , '#F8F8F8' , s:jcg1 , '253' , s:jct1 , 'NONE')

call s:Link('phpStaticClasses' , 'Function')
call s:Link('phpMethodsVar'    , 'LineNr')
call s:Link('phpKeyword'       , 'Function')
call s:Link('phpIdentifier'    , 'jsNumber')
call s:Link('phpVarSelector'   , 'jsNumber')
call s:Link('phpClass'         , 'Function')
call s:Link('phpFunction'      , 'vimCommand')

" JSON Syntax
call s:Set('jsonKeyword'  , s:jcg2 , s:jcg1 , s:jct2 , s:jct1 , 'NONE')
call s:Set('jsonBrace'    , s:jcg2 , s:jcg1 , s:jct2 , s:jct1 , 'NONE')

" Less Syntax
call s:Set('lessVariable' , '#000080' , s:jcg1 , '4'   , s:jct1 , 'NONE')

call s:Link('lessAmpersandChar', 'cssTagName')
call s:Link('lessDefinition', 'cssBoxProp')
call s:Link('lessMixinChar','cssTagName')
call s:Link('lessClass', 'cssTagName')

" C Syntax
call s:Set('cInclude'    , '#980918' , s:jcg1 , '88'   , s:jct1 , 'NONE')
call s:Set('cIncluded'   , '#C2C290' , s:jcg1 , s:jct2 , s:jct1 , 'NONE')
call s:Set('cDefine'     , '#C91E58' , s:jcg1 , '162'  , s:jct1 , 'NONE')
call s:Set('cNumber'     , '#668CB6' , s:jcg1 , '68'   , s:jct1 , 'NONE')
call s:Set('cType'       , s:jcg2    , s:jcg1 , s:jct2 , s:jct1 , 'NONE')
call s:Set('cCustomFunc' , '#875F5F' , s:jcg1 , '95'   , s:jct1 , 'NONE')

call s:Link('cRepeat'       , 'cInclude')
call s:Link('cStructure'    , 'cInclude')
call s:Link('cNumbers'      , 'cNumber')
call s:Link('cString'       , 'String')
call s:Link('cSpecial'      , 'String')
call s:Link('cStatement'    , 'Function')
call s:Link('cFloat'        , 'cNumber')
call s:Link('cFormat'       , 'Function')
call s:Link('cAnsiFunction' , 'Function')
call s:Link('cConditional'  , 'Function')
call s:Link('cRepeat'       , 'Function')
call s:Link('cLabel'        , 'Function')

" C++ Syntax
call s:Link('cppStatement'  , 'Function')

" Shell Syntax
call s:Set('shCtrlSeq','#005FFF',s:jcg1,'27',s:jct1,'NONE')

call s:Link('shStatement'   , 'Function')
call s:Link('shQuote'       , 'String')
call s:Link('shConditional' , 'vimCommand')
call s:Link('shDerefSimple' , 'jsGlobalObjects')
call s:Link('shNumber'      , 'jsNumber')
call s:Link('shOption'      , 'Function')

" Python Support
" Suggest https://github.com/kh3phr3n/python-syntax
call s:Link('pythonImport','cInclude')
call s:Link('pythonInclude','cInclude')
call s:Link('pythonCoding','cDefine')
call s:Link('pythonStatement','cType')
call s:Link('pythonRepeat','cType')
call s:Link('pythonConditional','cType')
call s:Link('pythonFunction','Function')
call s:Link('pythonException','cType')
call s:Link('pythonNumber','cNumber')
call s:Link('pythonOperator','cType')
call s:Link('pythonFunctionParams','jsFuncArgs')
call s:Link('pythonFunctionParameters','jsFuncArgs')
call s:Link('pythonEscape','jsGlobalObjects')
call s:Link('pythonSelf','cCustomFunc')

"------ Vim Plugin Syntax ------

" Tagbar Plugin
" https://github.com/majutsushi/tagbar
call s:Set('TagbarScope'    , '#DB4300' , s:jcg1 , '202' , s:jct1 , 'NONE')
call s:Set('TagbarType'     , '#C91E58' , s:jcg1 , '205' , s:jct1 , 'NONE')
call s:Set('TagbarFoldIcon' , '#870000' , s:jcg1 , '88'  , s:jct1 , 'NONE')

call s:Link('TagbarKind'      , 'Function')
call s:Link('TagbarHelpKey'   , 'TagbarFoldIcon')
call s:Link('TagbarHelpTitle' , 'Function')

" NerdTree Plugin
" https://github.com/scrooloose/nerdtree
call s:Set('NerdTreeOpenable'  , '#870000' , s:jcg1 , '88'   , s:jct1 , 'NONE')
call s:Set('NerdTreeCWD'       , s:jcg2    , s:jcg1 , s:jct2 , s:jct1 , 'NONE')
call s:Set('NerdTreeDir'       , s:jcg2    , s:jcg1 , s:jct2 , s:jct1 , 'NONE')
call s:Set('NerdTreeFile'      , '#989898' , s:jcg1 , '247'  , s:jct1 , 'NONE')
call s:Set('NerdTreeHelpTitle' , '#990080' , s:jcg1 , '196'  , s:jct1 , 'underline')
call s:Set('NerdTreeExecFile'  , '#990080' , s:jcg1 , '196'  , s:jct1 , 'NONE')

call s:Link('NerdTreeHelp'     , 'Comment')
call s:Link('NerdTreeHelpKey'  , 'Function')
call s:Link('NerdTreeUp'       , 'NerdTreeDir')
call s:Link('NerdTreeClosable' , 'NerdTreeDir')
call s:Link('NERDTreeRO'       , 'NerdTreeOpenable')

" Gundo Plugin
" https://github.com/sjl/gundo.vim
call s:Set('GundoCurrentLocation' , '#DB4300' , s:jcg1 , '202' , s:jct1 , 'bold')
call s:Set('GundoNumber'          , '#668CB6' , s:jcg1 , '111' , s:jct1 , 'NONE')
call s:Set('GundoNumberField'     , '#DB4300' , s:jcg1 , '202' , s:jct1 , 'NONE')
" Gundo diff file
call s:Set('diffRemoved'          , '#990000' , s:jcg1 , '124' , s:jct1 , 'NONE')

call s:Link('diffLine'    , 'GundoCurrentLocation')
call s:Link('diffNewFile' , 'String')
call s:Link('diffFile'    , 'String')
call s:Link('diffAdded'   , 'String')


" Unite Plugin
call s:Link('uniteCandidateSourceName' , 'NerdTreeOpenable')
call s:Link('uniteSource_DirectoryNew' , 'NerdTreeOpenable')
call s:Link('uniteCandidateIcon'       , 'String')
call s:Link('uniteSource_File'         , 'NerdTreeFile')

call s:Set('uniteMarkedLine','green',s:jcg1,'22','s:jct1','NONE')
call s:Link('uniteMarkedIcon','uniteMarkedLine')

" MRU Plugin
call s:Link('qfFileName'  , 'diffRemoved')
call s:Link('MRUFileName' , 'diffRemoved')

"Ag Search
call s:Link('qfLineNr'    , 'cNumber')

" Vim Git Syntax
call s:Set('gitcommitBranch','Red',s:jcg1,'124',s:jct1,'NONE')

call s:Link('gitcommitDiscardedType' , 'Function')
call s:Link('gitcommitDiscardedFile' , 'String')
call s:Link('gitcommitHeader'        , 'String')
call s:Link('gitcommitHead'          , 'Comment')
call s:Link('gitIdentityKeyword'     , 'LineNr')

" For Markdown Plugin
call s:Link('markdownCode'          , 'Function')
call s:Link('markdownCodeDelimiter' , 'Function')

" For Man Plugin
call s:Link('manSectionHeading' , 'Function')
call s:Link('manReference'      , 'String')

" For GitV Plugin
call s:Set('gitvGraphEdge0'    , '#00AF00' , s:jcg1 , '34'  , s:jct1 , 'NONE')
call s:Set('gitvSubject'       , '#3A3A3A' , s:jcg1 , '237' , s:jct1 , 'NONE')
call s:Set('gitvLocalUncommit' , '#870000' , s:jcg1 , '88'  , s:jct1 , 'NONE')
call s:Set('gitvRefHead'       , '#0087D7' , s:jcg1 , '32'  , s:jct1 , 'NONE')
call s:Set('gitvDate'          , '#005F00' , s:jcg1 , '22'  , s:jct1 , 'NONE')

call s:Link('gitDiff'       , 'gitvSubject')
call s:Link('gitDate'       , 'gitvDate')
call s:Link('gitEmail'      , 'gitvRefHead')
call s:Link('gitHash'       , 'gitvLocalUncommit')
call s:Link('gitvHash'      , 'gitvLocalUncommit')
call s:Link('gitvRefRemote' , 'gitvRefHead')

" For Golang [vim-go]
call s:Link('goPackage'     , 'jsFunction')
call s:Link('goImport'      , 'jsFunction')
call s:Link('goDeclaration' , 'jsFunction')
call s:Link('goVar'         , 'jsFunction')
call s:Link('goRepeat'      , 'jsFunction')
call s:Link('goEscapeC'     , 'jsGlobalObjects')
call s:Link('goBuiltins'    , 'jsGlobalObjects')
call s:Link('goParen'       , 'jsParen')

hi clear SignColumn
