" Vim color scheme
"
" Name:       J.vim
" Maintainer: YiJun
" License:    MIT
"
" This Vim ColorScheme will rebuild in 2015 10 28

highlight clear

if exists("syntax_on")
	syntax reset
endif

set background="dark"

let g:colors_name="J"

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
call s:Set('Normal'            , '#A8A8A8'   , '#080808' , '248' , '232' , 'NONE')

" Cursor
call s:Set('Cursor'            , '#080808'   , '#870000' , '232' , '88'  , 'NONE')
call s:Set('CursorLine'        , '#990000'   , '#060606' , '160' , '16'  , 'NONE')
call s:Set('CursorLineNr'      , '#990808'   , '#080808' , '160' , '16'  , 'NONE')

call s:Set('FoldColumn'        , 'DarkGray'  , '#080808' , '248' , '232' , 'NONE')
call s:Set('Folded'            , 'LightGray' , '#080808' , '252' , '232' , 'NONE')

call s:Set('LineNr'            , '#C0C280'   , '#080808' , '230' , '232' , 'NONE')
call s:Set('Statement'         , '#FFFFFF'   , '#080808' , '15'  , '232' , 'bold')
call s:Set('PreProc'           , '#FFFFFF'   , '#080808' , '15'  , '232' , 'NONE')
call s:Set('PreCondit'         , '#FFFFFF'   , '#080808' , '15'  , '232' , 'bold')
call s:Set('String'            , '#5F875F'   , '#080808' , '65'  , '232' , 'NONE')
call s:Set('Character'         , '#79BE62'   , '#080808' , '83'  , '232' , 'NONE')
call s:Set('Boolean'           , '#DB4301'   , '#080808' , '208' , '232' , 'NONE')
call s:Set('Comment'           , '#767676'   , '#080808' , '243' , '232' , 'NONE')
call s:Set('Operator'          , 'White'     , '#080808' , '15'  , '232' , 'NONE')

call s:Set('Error'             , 'Red'       , '#080808' , '9'   , '232' , 'underline')
call s:Set('ErrorMsg'          , 'Red'       , '#080808' , '9'   , '232' , 'underline')
call s:Set('WarningMsg'        , 'Red'       , '#FFFF87' , '9'   , '228' , 'NONE')

call s:Set('Keyword'           , '#dfaf87'   , '#080808' , '180' , '232' , 'underline')
call s:Set('Constant'          , 'LightGray' , '#080808' , '252' , '232' , 'NONE')
call s:Set('Type'              , '#C0C290'   , '#080808' , '15'  , '232' , 'NONE')
call s:Set('Function'          , '#DB4301'   , '#080808' , '208' , '232' , 'NONE')

call s:Set('Identifier'        , 'LightGray' , '#080808' , '252' , '232' , 'NONE')
call s:Set('Special'           , 'LightGray' , '#080808' , '252' , '232' , 'NONE')
call s:Set('MatchParen'        , 'LightGray' , '#080808' , '252' , '232' , 'NONE')

call s:Set('elixirDelimiter'   , '#778899'   , '#080808' , '67'  , '232' , 'NONE')
call s:Set('Search'            , '#990808'   , '#080808' , '196' , '232' , 'underline')
call s:Set('Visual'            , '#C0C290'   , '#758888' , '232' , '188' , 'NONE')
call s:Set('Nontext'           , '#990000'   , '#080808' , '124' , '232' , 'NONE')

call s:Set('Directory'         , '#DB4301'   , '#080808' , '208' , '232' , 'NONE')
call s:Set('Title'             , '#C0C290'   , '#080808' , '230' , '232' , 'bold')
call s:Set('Todo'              , '#181818'   , '#C0C290' , '232' , '230' , 'bold')

call s:Set('Pmenu'             , '#C0C280'   , '#000000' , '230' , '16'  , 'NONE')
call s:Set('PmenuSel'          , '#000000'   , '#870000' , '16'  , '88'  , 'NONE')
call s:Set('PmenuSbar'         , '#C0C280'   , '#000000' , '230' , '16'  , 'NONE')
call s:Set('PemnuThumb'        , '#C0C280'   , '#000000' , '230' , '16'  , 'NONE')

call s:Set('Tag'               , '#C0C280'   , '#080808' , '230' , '232' , 'NONE')
call s:Set('Title'             , '#C0C280'   , '#080808' , '230' , '232' , 'underline')

call s:Set('helpSpecial'       , '#DB4301'   , '#080808' , '208' , '232' , 'NONE')
call s:Set('helpHyperTextJump' , '#C0C290'   , '#080808' , '230' , '232' , 'underline')
call s:Set('helpNote'          , 'LightGray' , '#080808' , '252' , '232' , 'NONE')

" ------ Coustom ------
call s:Set('VertSplit'         , '#C0C280'   , '#080808' , '230' , '232' , 'NONE')
call s:Set('TabLine'           , '#666666'   , '#080808' , '251' , '232' , 'underline')
call s:Set('TabLineFill'       , '#C0C280'   , '#080808' , '230' , '232' , 'underline')
call s:Set('TabLineSel'        , '#C0C280'   , '#010101' , '230' , '16'  , 'underline')
call s:Set('StatusLine'        , '#C0C280'   , '#080808' , '230' , '232' , 'underline')

call s:Set('SpecialKey'        , '#121212'   , '#080808' , '233' , '232' , 'NONE')

" ------ Language Syntax ------
" Vim Syntax
call s:Set('vimOption'       , '#C0C280' , '#080808' , '230' , '232' , 'NONE')
call s:Set('vimGroup'        , '#C0C280' , '#080808' , '230' , '232' , 'NONE')
call s:Set('vimCommentTitle' , '#737373' , '#080808' , '243' , '232' , 'NONE')
call s:Set('vimCommand'      , 'Red'     , '#080808' , '196' , '232' , 'NONE')
call s:Set('vimIsCommand'    , '#DB4301' , '#080808' , '208' , '232' , 'NONE')
call s:Set('vimMapLhs'       , '#D5523A' , '#080808' , '209' , '232' , 'NONE')
call s:Set('vimEnvvar'       , '#5F00D7' , '#080808' , '56'  , '232' , 'NONE')

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
call s:Set('htmlTag'         , '#DF642F' , '#080808' , '208' , '232' , 'NONE')
call s:Set('htmlArg'         , '#870000' , '#080808' , '88'  , '232' , 'NONE')
call s:Set('htmlTitle'       , 'Red'     , '#080808' , '196' , '232' , 'NONE')
call s:Set('htmlH1'          , '#C2C280' , '#080808' , '230' , '232' , 'underline')
call s:Set('htmlLink'        , '#41A0AD' , '#080808' , '69'  , '232' , 'underline')
call s:Set('htmlSpecialChar' , '#114180' , '#080808' , '78'  , '232' , 'NONE')

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
call s:Set('cssBraces'         , '#FFFFFF' , '#080808' , '15'  , '232' , 'NONE')
call s:Set('cssTagName'        , '#DB4300' , '#080808' , '202' , '232' , 'underline')
call s:Set('cssClassName'      , '#C1C298' , '#080808' , '229' , '232' , 'NONE')
call s:Set('cssIdentifier'     , '#DC1111' , '#080808' , '160' , '232' , 'NONE')
call s:Set('cssBoxProp'        , '#855EB8' , '#080808' , '62' , '232' , 'NONE')
call s:Set('cssIEUIProp'       , '#881828' , '#080808' , '88'  , '232' , 'NONE')
call s:Set('cssUnitDecorators' , '#C0C280' , '#080808' , '230' , '232' , 'NONE')
call s:Set('cssError'          , '#990000' , '#080808' , '124' , '232' , 'NONE')

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
call s:Set('jsFunction'       , '#DB4300' , '#080808' , '202' , '232' , 'NONE')
call s:Set('jsFuncName'       , '#FF6600' , '#080808' , '208' , '232' , 'NONE')
call s:Set('jsFuncArgs'       , '#E70F0F' , '#080808' , '9'   , '232' , 'underline')
call s:Set('jsAssignExpIdent' , '#3A627B' , '#080808' , '24'  , '232' , 'NONE')
call s:Set('jsNumber'         , '#669CB6' , '#080808' , '68'  , '232' , 'NONE')
call s:Set('jsRegexpString'   , '#E21888' , '#080808' , '163' , '232' , 'NONE')
call s:Set('jsObjectKey'      , '#9E4479' , '#080808' , '206' , '232' , 'NONE')
call s:Set('jsGlobalObjects'  , '#9E0090' , '#080808' , '201' , '232' , 'NONE')
call s:Set('jsOperator'       , '#FFFFFF' , '#080808' , '15'  , '232' , 'NONE')

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

" PHP Syntax
call s:Set('phpRegion'    , '#F8F8F8' , '#080808' , '253' , '232' , 'NONE')

call s:Link('phpStaticClasses' , 'Function')
call s:Link('phpMethodsVar'    , 'LineNr')
call s:Link('phpKeyword'       , 'phpRegion')
call s:Link('phpIdentifier'    , 'jsNumber')
call s:Link('phpVarSeletor'    , 'jsNumber')
call s:Link('phpClass'         , 'Function')

" JSON Syntax
call s:Set('jsonKeyword'  , '#C0C290' , '#080808' , '230' , '232' , 'NONE')
call s:Set('jsonBrace'    , '#C0C280' , '#080808' , '230' , '232' , 'NONE')

" Less Syntax
call s:Set('lessVariable' , '#000080' , '#080808' , '4'   , '232' , 'NONE')
call s:Set('lessClass'    , '#008080' , '#080808' , '6'   , '232' , 'NONE')

call s:Link('lessMixinChar','lessClass')

" C Syntax
call s:Set('cInclude'  , '#980919' , '#080808' , '88'  , '232' , 'NONE')
call s:Set('cIncluded' , '#C2C290' , '#080808' , '230' , '232' , 'NONE')
call s:Set('cDefine'   , '#C91E58' , '#080808' , '162' , '232' , 'NONE')
call s:Set('cNumber'   , '#668CB6' , '#080808' , '68'  , '232' , 'NONE')
call s:Set('cFormat'   , '#DB4300' , '#080808' , '202' , '232' , 'NONE')

call s:Link('cType'      , 'cInclude' )
call s:Link('cRepeat'    , 'cInclude')
call s:Link('cStructure' , 'cInclude')
call s:Link('cNumbers'   , 'cNumber')
call s:Link('cString'    , 'String')
call s:Link('cSpecial'   , 'String')


"------ Vim Plugin Syntax ------

" Tagbar Plugin
" https://github.com/majutsushi/tagbar
call s:Set('TagbarScope'    , '#DB4300' , '#080808' , '202' , '232' , 'NONE')
call s:Set('TagbarType'     , '#C91E58' , '#080808' , '205' , '232' , 'NONE')
call s:Set('TagbarFoldIcon' , '#870000' , '#080808' , '88'  , '232' , 'NONE')

call s:Link('TagbarKind'      , 'Function')
call s:Link('TagbarHelpKey'   , 'TagbarFoldIcon')
call s:Link('TagbarHelpTitle' , 'Function')

" NerdTree Plugin
" https://github.com/scrooloose/nerdtree
call s:Set('NerdTreeOpenable'  , '#870000' , '#080808' , '88' , '232' , 'NONE')
call s:Set('NerdTreeCWD'       , '#C0C280' , '#080808' , '230' , '232' , 'NONE')
call s:Set('NerdTreeDir'       , '#C0C288' , '#080808' , '217' , '232' , 'NONE')
call s:Set('NerdTreeFile'      , '#989898' , '#080808' , '247' , '232' , 'NONE')
call s:Set('NerdTreeHelpTitle' , '#990080' , '#080808' , '196' , '232' , 'underline')
call s:Set('NerdTreeExecFile'  , '#990080' , '#080808' , '196' , '232' , 'NONE')

call s:Link('NerdTreeHelp','Comment')
call s:Link('NerdTreeHelpKey','Function')
call s:Link('NerdTreeUp', 'NerdTreeDir') 
call s:Link('NerdTreeClosable','NerdTreeDir')

" Gundo Plugin
" https://github.com/sjl/gundo.vim
call s:Set('GundoCurrentLocation' , '#DB4300' , '#080808' , '202' , '232' , 'bold')
call s:Set('GundoNumber'          , '#668CB6' , '#080808' , '111' , '232' , 'NONE')
call s:Set('GundoNumberField'     , '#DB4300' , '#080808' , '202' , '232' , 'NONE')
" Gundo diff file
call s:Set('diffRemoved'          , '#990000' , '#080808' , '124' , '232' , 'NONE')

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
call s:Link('qfLineNr'    , 'cNumber')

" Vim Git Syntax
call s:Set('gitcommitBranch','Red','#080808','124','232','NONE')

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
call s:Set('gitvGraphEdge0'    , '#00AF00' , '#080808' , '34'  , '232' , 'NONE')
call s:Set('gitvSubject'       , '#3A3A3A' , '#080808' , '237' , '232' , 'NONE')
call s:Set('gitvLocalUncommit' , '#870000' , '#080808' , '88'  , '232' , 'NONE')
call s:Set('gitvRefHead'       , '#0087D7' , '#080808' , '32'  , '232' , 'NONE')
call s:Set('gitvDate'          , '#005F00' , '#080808' , '22'  , '232' , 'NONE')

call s:Link('gitDiff'       , 'gitvSubject')
call s:Link('gitDate'       , 'gitvDate')
call s:Link('gitEmail'      , 'gitvRefHead')
call s:Link('gitHash'       , 'gitvLocalUncommit')
call s:Link('gitvHash'      , 'gitvLocalUncommit')
call s:Link('gitvRefRemote' , 'gitvRefHead')

hi clear SignColumn
