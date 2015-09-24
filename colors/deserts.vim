"Vim color file
"Modified from Desert Theme

"cool help screens
":he group-name
":he highlight-groups
":he cterm-colors

set background=dark
if version > 580
    "no guarantees for version 5.8 and below, but this makes it stop complaining
    hi clear
    if exists("syntax_on")
		syntax reset
    endif
endif

"let g:colors_name="deserts"

"hi Normal	guifg=White guibg=grey20
hi Normal	guifg=#9CE69C guibg=grey20

"highlight groups
hi Cursor	guibg=khaki guifg=slategrey
"hi CursorIM
"hi Directory
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
"hi DiffText
"hi ErrorMsg
"hi LineNr
hi VertSplit	guibg=#c2bfa5 guifg=grey50 gui=none
hi Folded	guibg=grey30 guifg=gold
hi FoldColumn	guibg=grey30 guifg=tan
hi IncSearch	guifg=slategrey guibg=khaki
hi ModeMsg	guifg=goldenrod
hi MoreMsg	guifg=SeaGreen
hi NonText	guifg=LightBlue guibg=grey30
hi Question guifg=#ffa500 gui=bold
hi Search	guibg=peru guifg=wheat
hi SpecialKey	guifg=yellowgreen
hi StatusLine	guibg=#c2bfa5 guifg=black gui=none
hi StatusLineNC	guibg=#c2bfa5 guifg=grey50 gui=none
hi Title	guifg=indianred
hi Visual	gui=none guifg=khaki guibg=olivedrab
hi WarningMsg	guifg=salmon
"hi VisualNOS
"hi WildMenu
"hi Menu
"hi Scrollbar
"hi Tooltip
:hi TabLineFill guifg=LightGreen guibg=DarkGreen
:hi TabLine guifg=Blue guibg=grey50
:hi TabLineSel guifg=Red guibg=Yellow

"syntax highlighting groups
"hi Comment	guifg=SkyBlue cterm=italic gui=italic
hi Comment	guifg=#C8C8BA cterm=italic gui=italic
hi NotImp	guifg=#abcdef guibg=#123456 cterm=italic gui=italic
hi ApdlComment	guifg=#A37A00 cterm=italic gui=italic

hi ApdlFocus	guifg=#ccff11 cterm=italic gui=italic
hi ApdlArgs	cterm=italic gui=italic
"hi ApdlElem	cterm=italic gui=italic,bold guifg=#bbbfff
hi ApdlElem	cterm=italic gui=italic guifg=#bbbfff

"hi Comment	guifg=#474719
"hi Underlined
"hi Error
hi Constant	guifg=#ffa0a0
hi Identifier	guifg=palegreen
hi Statement	guifg=khaki
hi Type		guifg=darkkhaki
hi Special	guifg=navajowhite
hi Function	guifg=navajowhite
hi Apdlmcs	guifg=#ffff80 gui=italic
hi BatchArgs	guifg=#fedcba gui=italic
hi Ignore	guifg=grey40
hi Todo		guifg=orangered guibg=yellow
hi Todoo		guifg=yellow guibg=darkgreen
hi PreProc	guifg=darkgrey
hi ExtraWhite guifg=yellow2 guibg=darkgreen

"color terminal definitions
hi SpecialKey	ctermfg=darkgreen
hi NonText	cterm=bold ctermfg=darkblue
hi Directory	ctermfg=darkcyan
hi ErrorMsg	cterm=bold ctermfg=7 ctermbg=1
hi IncSearch	cterm=NONE ctermfg=yellow ctermbg=green
hi Search	cterm=NONE ctermfg=grey ctermbg=blue
hi MoreMsg	ctermfg=darkgreen
hi ModeMsg	cterm=NONE ctermfg=brown
hi LineNr	ctermfg=3
hi Question	ctermfg=green
hi StatusLine	cterm=bold,reverse
hi StatusLineNC cterm=reverse
hi VertSplit	cterm=reverse
hi Title	ctermfg=5
hi Visual	cterm=reverse
hi VisualNOS	cterm=bold,underline
hi WarningMsg	ctermfg=1
hi WildMenu	ctermfg=0 ctermbg=3
hi Folded	ctermfg=darkgrey ctermbg=NONE
hi FoldColumn	ctermfg=darkgrey ctermbg=NONE
hi DiffAdd	ctermbg=4
hi DiffChange	ctermbg=5
hi DiffDelete	cterm=bold ctermfg=4 ctermbg=6
hi DiffText	cterm=bold ctermbg=1

"hi Comment	ctermfg=darkcyan
hi Constant	ctermfg=brown
hi Special	ctermfg=5
hi Identifier	ctermfg=6
hi Statement	ctermfg=3
hi PreProc	ctermfg=5
hi Type		ctermfg=2
hi Underlined	cterm=underline ctermfg=5
hi Ignore	cterm=bold ctermfg=7
hi Ignore	ctermfg=darkgrey
hi Error	cterm=bold ctermfg=7 ctermbg=1
hi TabLine	ctermfg=Blue ctermbg=Yellow

"vim: sw=4
