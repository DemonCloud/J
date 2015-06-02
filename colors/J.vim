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
hi CursorLine guifg=LightGray ctermfg=252 guibg=#181818 ctermbg=234 gui=NONE cterm=NONE term=NONE
hi CursorLineNr guifg=Red ctermfg=15 guibg=#202020 ctermbg=16 gui=bold cterm=bold term=bold
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
hi rubyConstant guifg=LightGray ctermfg=252 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi rubySharpBang guifg=#737373 ctermfg=243 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi rubyStringDelimiter guifg=#778899 ctermfg=67 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi rubyStringEscape guifg=#778899 ctermfg=67 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi rubyRegexpEscape guifg=#778899 ctermfg=67 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi rubyRegexpAnchor guifg=#778899 ctermfg=67 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi rubyRegexpSpecial guifg=#778899 ctermfg=67 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi perlSharpBang guifg=#737373 ctermfg=243 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi perlStringStartEnd guifg=#778899 ctermfg=67 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi perlStringEscape guifg=#778899 ctermfg=67 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi perlMatchStartEnd guifg=#778899 ctermfg=67 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi pythonEscape guifg=#778899 ctermfg=67 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi javaScriptFunction guifg=White ctermfg=15 guibg=Black ctermbg=16 gui=bold cterm=bold term=bold
hi elixirDelimiter guifg=#778899 ctermfg=67 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi Search guifg=White ctermfg=15 guibg=#778899 ctermbg=67 gui=NONE cterm=NONE term=NONE
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
hi vimIsCommand guifg=White ctermfg=15 guibg=Black ctermbg=16 gui=bold cterm=bold term=bold
hi vimMapLhs guifg=#D5523A ctermfg=15 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE
hi vimNotation guifg=#D5523A ctermfg=15 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE

hi jsFunction guifg=#DB4300 ctermfg=15 guibg=Black ctermbg=16 gui=bold cterm=bold term=bold
hi jsFuncName guifg=#6C9E63 ctermfg=15 guibg=Black ctermbg=16 gui=bold cterm=bold term=bold
hi jsFuncArgs guifg=#E70F0F ctermfg=15 guibg=Black ctermbg=16 gui=bold cterm=bold term=bold
hi jsAssignExpIdent guifg=#719CE0 ctermfg=15 guibg=Black ctermbg=16 gui=NONE cterm=NONE term=NONE 
hi link jsStorageClass jsFunction 
hi link jsThis jsFunction
hi link jsReturn jsFunction
hi link jsFuncCall jsFuncName

hi VertSplit guifg=Black guibg=White
