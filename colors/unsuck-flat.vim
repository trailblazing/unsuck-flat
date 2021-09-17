" Vim color scheme
"
"         Name: unsuck-flat.vim
"      Version: 1.0
"   Maintainer: unsuckvim
" Contributors: None
"
" History:
"   2016-10-25 - Initial release
"

if &t_Co != 256 && ! has("gui_running")
	echomsg "err: Please use GVim or a 256-color terminal (set t_Co=256)"
	finish
endif

set background=dark
hi clear

if exists("syntax_on")
	syntax reset
endif
let colors_name = "unsuck-flat"

""""""""""""""""""""""
""" General colors

hi Normal             ctermfg=186  ctermbg=236  guifg=#DFDF87  guibg=#303030

"hi Conceal " placeholder character for concealed text
hi Cursor                          ctermbg=186                 guibg=#D5CE99
"hi CursorIM " for IME mode (Asian stuff)
hi CursorColumn                    ctermbg=235                 guibg=#262626
hi CursorLine                      ctermbg=234                 guibg=#1C1C1C
hi CursorLineNr       ctermfg=185               guifg=#DFDF5F
hi DiffAdd            ctermfg=fg   ctermbg=064  guifg=fg       guibg=#5F8700
hi DiffChange         ctermfg=bg   ctermbg=185  guifg=bg       guibg=#DFDF5F
hi DiffDelete         ctermfg=fg   ctermbg=088  guifg=fg       guibg=#870000
hi DiffText           ctermfg=bg   ctermbg=203  guifg=bg       guibg=#FF5F5F  cterm=bold
hi ErrorMsg           ctermfg=196  ctermbg=052  guifg=#FF0000  guibg=#5F0000
hi Folded             ctermfg=fg   ctermbg=238  guifg=fg       guibg=#444444
hi FoldColumn         ctermfg=fg   ctermbg=238  guifg=fg       guibg=#444444
" TODO: make IncSearch differ from Search
hi IncSearch          ctermfg=001  ctermbg=214  guifg=#800000  guibg=#FFAF00
hi LineNr             ctermfg=007  ctermbg=238  guifg=#C0C0C0  guibg=#444444
hi MatchParen         ctermfg=255  ctermbg=203  guifg=#EEEEEE  guibg=#FF5F5F
hi ModeMsg            ctermfg=220               guifg=#FFDF00
"hi MoreMsg " more message when the screen is filled with messages
hi NonText            ctermfg=234  ctermbg=232  guifg=#808080  guibg=#080808  cterm=bold
"	hi EndOfBuffer " filler lines (~) after the last line (default: NonText)
hi Pmenu              ctermfg=254  ctermbg=239  guifg=#E4E4E4  guibg=#4E4E4E
"hi PmenuSel           ctermfg=239  ctermbg=254  guifg=#4E4E4E  guibg=#E4E4E4
hi PmenuSel           ctermfg=255  ctermbg=130  guifg=#EEEEEE  guibg=#AF5F00
hi PmenuSbar          ctermfg=241  ctermbg=241  guifg=#626262  guibg=#626262
hi PmenuThumb         ctermfg=236  ctermbg=236  guifg=#303030  guibg=#303030
"hi Question " enter and yes/no questions
hi Search             ctermfg=001  ctermbg=214  guifg=#800000  guibg=#FFAF00
hi SignColumn         ctermfg=007  ctermbg=238  guifg=#C0C0C0  guibg=#444444
hi SpecialKey         ctermfg=fg   ctermbg=097  guifg=fg       guibg=#875FAF
" TODO: why is StatusLine inverted?
"hi StatusLine         ctermfg=130  ctermbg=255  guifg=#AF5F00  guibg=#EEEEEE
hi StatusLine         ctermfg=255  ctermbg=130  guifg=#EEEEEE  guibg=#AF5F00
" TODO: why is StatusLineNC inverted?
"hi StatusLineNC       ctermfg=239  ctermbg=254  guifg=#4E4E4E  guibg=#E4E4E4
hi StatusLineNC       ctermfg=254  ctermbg=239  guifg=#E4E4E4  guibg=#4E4E4E
hi TabLine            ctermfg=254  ctermbg=239  guifg=#E4E4E4  guibg=#4E4E4E
hi TabLineFill        ctermfg=bg   ctermbg=bg   guifg=bg       guibg=bg
hi TabLineSel         ctermfg=255  ctermbg=130  guifg=#EEEEEE  guibg=#AF5F00
"hi Title " titles for output from ":set all" etc.
hi VertSplit          ctermfg=239  ctermbg=239  guifg=#4E4E4E  guibg=#4E4E4E
hi Visual             ctermfg=255  ctermbg=203  guifg=#EEEEEE  guibg=#FF5F5F
hi VisualNOS          ctermfg=255  ctermbg=203  guifg=#EEEEEE  guibg=#FF5F5F

hi SpellBad           ctermfg=196  ctermbg=052                                guisp=#FF0000  gui=undercurl
hi SpellCap           ctermfg=051  ctermbg=023                                guisp=#00FFFF  gui=undercurl
hi SpellLocal         ctermfg=051  ctermbg=023                                guisp=#00FFFF  gui=undercurl
hi SpellRare          ctermfg=051  ctermbg=023                                guisp=#00FFFF  gui=undercurl

" TODO: This could be improved I guess, maybe use Search instead
hi WarningMsg         ctermfg=226  ctermbg=202  guifg=#FFFF00  guibg=#FF5F00
" TODO: verify if WildMenu looks good
hi WildMenu           ctermfg=255  ctermbg=130  guifg=#EEEEEE  guibg=#AF5F00

" TODO: GUI only stuff
"hi Menu
"hi Scrollbar
"hi Tooltip

"""""""""""""""""""""""""""
""" Syntax highlighting

hi Comment            ctermfg=248               guifg=#A8A8A8                 cterm=italic  gui=italic

hi Constant           ctermfg=080               guifg=#5FD7D7                 cterm=italic  gui=italic
	hi String          ctermfg=173               guifg=#D7875F
	hi Character       ctermfg=173               guifg=#D7875F
	hi Number          ctermfg=136               guifg=#AF8700
	hi Boolean         ctermfg=080               guifg=#5FD7D7                 cterm=italic  gui=italic
	hi Float           ctermfg=136               guifg=#AF8700

hi Identifier         ctermfg=210               guifg=#FF8787
	"hi Function        ctermfg=fg                guifg=fg

hi Statement          ctermfg=080               guifg=#5FD7D7                 cterm=italic  gui=italic
	hi Conditional     ctermfg=080               guifg=#5FD7D7                 cterm=italic  gui=italic
	hi Repeat          ctermfg=080               guifg=#5FD7D7                 cterm=italic  gui=italic
	hi Label           ctermfg=080               guifg=#5FD7D7                 cterm=italic  gui=italic
	hi Operator        ctermfg=080               guifg=#5FD7D7                 cterm=italic  gui=italic
	hi Keyword         ctermfg=080               guifg=#5FD7D7                 cterm=italic  gui=italic
	hi Exception       ctermfg=080               guifg=#5FD7D7                 cterm=italic  gui=italic

hi PreProc 		       ctermfg=205               guifg=#FF5FAF
"	hi Include " preprocessor #include
"	hi Define " preprocessor #define
"	hi Macro " same as Define
"	hi PreCondit " preprocessor #if, #else, #endif, etc.

hi Type               ctermfg=210               guifg=#FF8787
"	hi StorageClass " static, register, volatile, etc.
	hi Structure       ctermfg=210               guifg=#FF8787
"	hi Typedef " a typedef

" vertical lines in tree view
hi Special            ctermfg=185               guifg=#DFDF5F
"	hi SpecialChar " special character in a constant
"	hi Tag " you can use CTRL-] on this
"	hi Delimiter " character that needs attention
"	hi SpecialComment " special things inside a comment
"	hi Debug " debugging statements

hi Underlined         ctermfg=220               guifg=#FFDF00

"hi Ignore " left blank, hidden

" TODO: make distinguishable from SpellBad in cterm
hi Error              ctermfg=196  ctermbg=052  guifg=#FF0000  guibg=#5F0000

hi Todo               ctermfg=46   ctermbg=22   guifg=#00ff00  guibg=#005f00

