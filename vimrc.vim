﻿"VIMRC FILE "Sarat Maharjan "sarat.maharjan@gmail.com "2015.07.03
"For Ultisnips: Python 2.7.9

"{{{ Initial Setting - need to be at start
	let mapleader=","	"leader is comma
	let g:mapleader = ","
	if has('mouse')		"Enable Mouse
		set mouse=a
	endif
"}}}

"{{{ OTHER SOURCES
	let hostname = substitute(system('hostname'), '\n', '', '')
	let user = substitute(system('whoami'),'\n','','')
	if hostname == "ansys2"
		source C:/Users/maharjan/Dropbox/VIM/pathANDfontAnakon.vim
	elseif hostname == "Smaharjan"
		source E:/SM/VIM/pathANDfontAnakon.vim
	else
		source C:/Users/Sarat/Dropbox/VIM/pathANDfontHome.vim
	endif

	source $VIMRUNTIME/vimrc_example.vim
	source $VIMRUNTIME/mswin.vim
	source $VIMRUNTIME/macros/matchit.vim
	behave mswin
	"exe 'source ' .expand(pathColor)
	exe 'set rtp+=' .expand(pathRTP)

	"Zoom Functions
	exe 'so ' .expand(pathRTP)."/zoom.vim"
	exe 'so ' .expand(pathRTP)."/highlights.vim"
	exe 'set undodir=' .expand(pathWork)
"}}} Sources

"{{{ Language and Encoding
	"set langmenu=en_US
	set langmenu=de_DE
	let $LANG = 'en_US'
	source $VIMRUNTIME/delmenu.vim
	source $VIMRUNTIME/menu.vim
	set encoding=utf-8
	set fileencoding=utf-8
	:scriptencoding utf-8
	"set encoding=latin1
	"set keymap=german
"}}} Language and Encoding

"{{{ VUNDLE

	"{{{Installing vundle
		"IN COMMAND LINE
		"cd %USERPROFILE%
		"cd D:/VIM
		"git clone https://github.com/gmarik/Vundle.vim.git vimfiles/bundle/Vundle.vim
		"gvim _vimrc
	"}}}Installing vundle

		"Use Vim settings, rather than Vi settings (much better!). This must be first, because it changes other options as a side effect.
			set nocompatible		"be iMproved, required
			filetype off		"required

		"set the runtime path to include Vundle and initialize
		exe 'set rtp+=' .expand(pathRTP) . '/bundle/Vundle.vim'

		"pass a path where Vundle should install plugins
		call vundle#begin(expand(pathRTP) . '/bundle')

		"let Vundle manage Vundle, required
			Plugin 'gmarik/Vundle.vim'

			"The following are examples of different formats supported. Keep Plugin commands between vundle#begin/end.

			"plugin on GitHub repo
			"Plugin 'tpope/vim-fugitive'
			"Plugin 'mileszs/ack.vim'

			"plugin from http://vim-scripts.org/vim/scripts.html
			Plugin 'L9'

			"Git plugin not hosted on GitHub
			"Plugin 'git://git.wincent.com/command-t.git'
			Plugin 'https://github.com/scrooloose/nerdtree.git'
			"Plugin 'https://github.com/amix/vimrc.git'
			"Plugin 'https://github.com/tpope/vim-pathogen.git'
			Plugin 'https://github.com/vim-scripts/peaksea.git'
			Plugin 'https://github.com/sjl/badwolf.git'
			"Plugin 'https://github.com/sjl/gundo.vim.git'
			"Plugin 'https://github.com/ggreer/the_silver_searcher.git'
			Plugin 'https://github.com/rking/ag.vim.git'
			Plugin 'https://github.com/kien/ctrlp.vim.git'
			"Plugin 'https://github.com/kchmck/vim-coffee-script.git'
			"Plugin 'https://github.com/tpope/vim-commentary.git'
			Plugin 'https://github.com/scrooloose/nerdcommenter.git'
			Plugin 'https://github.com/jlanzarotta/bufexplorer.git'
			Plugin 'https://github.com/jeffkreeftmeijer/vim-numbertoggle.git'
			Plugin 'https://github.com/nathanaelkane/vim-indent-guides.git'
			Plugin 'https://github.com/tpope/vim-abolish.git'
			"Plugin 'https://github.com/mkitt/tabline.vim.git'
			"Plugin 'https://github.com/msanders/snipmate.vim.git'
			Plugin 'https://github.com/MattesGroeger/vim-bookmarks.git'
			Plugin 'https://github.com/vim-syntastic/syntastic.git'
			"if hostname != "ansys2"
				"Plugin 'https://github.com/SirVer/ultisnips.git'
			"endif

			Plugin 'https://github.com/bling/vim-airline.git'
			"Plugin 'https://github.com/Valloric/YouCompleteMe.git'
			Plugin 'https://github.com/yegappan/grep.git'
			"Plugin 'https://github.com/vim-scripts/TabLineSet.vim.git'
			Plugin 'https://github.com/tpope/vim-fugitive.git'
			Plugin 'https://github.com/rosenfeld/rgrep.vim.git'
			"Plugin 'https://github.com/chrisbra/BackgroundColor.vim.git'
			Plugin 'https://github.com/elzr/vim-json.git'

			"git repos on your local machine (i.e. when working on your own plugin)
			"Plugin 'file:///home/gmarik/path/to/plugin'

			"The sparkup vim script is in a subdirectory of this repo called vim.
			"Pass the path to set the runtimepath properly.
			Plugin 'rstacruz/sparkup', {'rtp': 'vim'}

			Plugin 'https://github.com/godlygeek/tabular.git'
			"Avoid a name conflict with L9
			"Plugin 'saratmaharjan/L9', {'name': 'saratmaharjan'}

		"All of your Plugins must be added before the following line
		call vundle#end()	"required

						"To ignore plugin indent changes, instead use:
						"filetype plugin on
						"
						"Brief help
						":PluginList		- lists configured plugins
						":PluginInstall		- installs plugins; append `!` to update or just :PluginUpdate
						":PluginSearch foo	- searches for foo; append `!` to refresh local cache
						":PluginClean		- confirms removal of unused plugins; append `!` to auto-approve removal
						"
						"see :h vundle for more details or wiki for FAQ
						"Put your non-Plugin stuff after this line
"}}} VUNDLE

"{{{ KEY MAPPINGS
	"map or remap is recursive and expanded, noremap is not expanded:::::: vmap and vnoremap for visual mode ....... nmap,
	"nnoremap for normal mode and so on........................

	nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
	nnoremap <C-F2> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
	nnoremap <C-F3> :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>
	nnoremap <space>nh :nohlsearch<CR>	"Key. ,Space	"turn off search highlight
	nnoremap <leader>q :mksession<CR>		"save session

	"nnoremap <leader>a :Ag		"open ag.vim
	nnoremap le `[v`]		"highlight last inserted text : last edit

	"noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm		"Remove the Windows ^M - when the encodings gets messed up

	inoremap jk <esc>		"jk is escape
	"CTRL-U in insert mode deletes a lot. Use CTRL-G u to first break undo, so that you can undo CTRL-U after inserting a line break.
	inoremap <C-U> <C-G>u<C-U>

	nnoremap <leader>w :w!<cr>		"Fast saving

	"Inserting New Line
	nnoremap <S-Enter> O<Esc>j
	nnoremap <CR> o<Esc>k

	"noremap <leader>q :e ~/buffer<cr>			"Quickly open a buffer for scribble
	"noremap <leader>x :e ~/buffer.md<cr>		"Quickly open a markdown buffer for scribble
	"noremap <leader>pp :setlocal paste!<cr>		"Toggle paste mode on and off
	"noremap <silent> <leader><cr> :noh<cr>		"Disable highlight when <leader><cr> is pressed
	"noremap <leader>bd :Bclose<cr>		"Close the current buffer
	"noremap <leader>ba :1,1000 bd!<cr>		"Close all the buffers
	"noremap <leader>cd :cd %:p:h<cr>:pwd<cr>		"Switch CWD to the directory of the open buffer

	"Opens a new tab with the current buffer's path : Super useful when editing files in the same directory
	"noremap <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

	noremap 0 ^		"Remap VIM 0 to first non-blank character
	noremap Q gq		"Don't use Ex mode, use Q for formatting

	"Useful mappings for managing tabs
		"noremap <leader>tn :tabnew<cr>
		"noremap <leader>to :tabonly<cr>
		"noremap <leader>tc :tabclose<cr>
		"noremap <leader>tm :tabmove
		"noremap <leader>t<leader> :tabnext

	"F7 to check if file is changed outside VIM
		noremap <F7> :checktime<CR>
		noremap! <F7> <C-O>:checktime<CR>

	"Visual mode pressing * or # searches for the current selection, Super useful! From an idea by Michael Naumann
		vnoremap <silent> * :call VisualSelection('f', '')<CR>
		vnoremap <silent> # :call VisualSelection('b', '')<CR>

	"move vertically by visual line i.e. Dont skip wrapped lines
		nnoremap j gj
		nnoremap k gk

	"move to beginning/end of line
		nnoremap B ^
		nnoremap E $

	"$/^ doesn't do anything
		nnoremap $ <nop>
		nnoremap ^ <nop>

	"edit vimrc/zshrc and load vimrc bindings - These are shortcuts to edit and source vimrc and zshrc.
"		nnoremap <leader>ev :vsp $MYVIMRC<CR>
"		nnoremap <leader>ez :vsp ~/.zshrc<CR>
"		nnoremap <leader>sv :source $MYVIMRC<CR>

	"Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
		noremap <space>s /
		noremap <s-space> ?
"}}} KEY MAPPINGS

"{{{ GUI OPTIONS
	:set guioptions-=m "remove menu bar
	:set guioptions-=T "remove toolbar
	":set guioptions-=r "remove right-hand scroll bar
	":set guioptions-=L "remove left-hand scroll bar

	"TO START MAXIMIZED
		"Use ~x on an English Windows version or ~n for French.
		au GUIEnter * simalt ~x

		"{{{Setting Color Scheme and Appearance
			set background=dark

			"colorscheme peaksea
			"colorscheme desert
			colorscheme deserts
			"colorscheme badwolf	"awesome colorscheme
			"colorscheme apprentice

			"Enable syntax highlighting
			syntax enable

			"Set extra options when running in GUI mode
			if has("gui_running")
				set guioptions-=T
				set guioptions-=e
				set t_Co=256
				"set guitablabel=%M\ %t
			endif
		"}}}

	"{{{ Status Bar
		"Always show the status line
		set laststatus=2

		"Format the status line
		set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ WD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
	"}}}

	"{{{Tabs Setting
		set tabstop=2 "number of visual spaces per TAB
		"set softtabstop=4 "number of spaces in tab when editing
		"set smarttab		"Be smart when using tabs ;)
		set shiftwidth=2		"1 tab == 4 spaces
	"}}}

	"{{{Line Numbers
		set number	"show line numbers
		set relativenumber
	"}}}
"}}} GUI OPTIONS

"{{{ Working Directory Setting
	exe 'cd ' . expand(pathWork)
	set autochdir		"Set file directory as Working Directory
"}}} Working Directory Setting

"{{{ file TABS and or Buffer setting
	":tab all			"open all files as tab
	":bufdo tab split	"Change all files to TABS
	"map ,bt :bufdo tab split<CR>
	set tabpagemax=50

	"{{{if TABS used
		"CTRL-Tab is next tab
			noremap <C-Tab> :<C-U>tabnext<CR>
			inoremap <C-Tab> <C-\><C-N>:tabnext<CR>
			cnoremap <C-Tab> <C-C>:tabnext<CR>

		"CTRL-SHIFT-Tab is previous tab
			noremap <C-S-Tab> :<C-U>tabprevious<CR>
			inoremap <C-S-Tab> <C-\><C-N>:tabprevious<CR>
			cnoremap <C-S-Tab> <C-C>:tabprevious<CR>

		"Let 'tl' toggle between this and the last accessed tab
			let g:lasttab = 1
			nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
			au TabLeave * let g:lasttab = tabpagenr()
	"}}}

"{{{ option 1 - not working
	"set showtabline=2 "always show tabs in gvim, but not vim
	""set up tab labels with tab number, buffer name, number of windows
	"function! GuiTabLabel()
	"let label = ''
	"let bufnrlist = tabpagebuflist(v:lnum)
	""Add '+' if one of the buffers in the tab page is modified
	"for bufnr in bufnrlist
	"if getbufvar(bufnr, "&modified")
		"let label = '+'
		"break
	"endif
	"endfor
	""Append the tab number
	"let label .= v:lnum.': '
	""Append the buffer name
	"let name = bufname(bufnrlist[tabpagewinnr(v:lnum) - 1])
	"if name == ''
	""give a name to no-name documents
	"if &buftype=='quickfix'
		"let name = '[Quickfix List]'
	"else
		"let name = '[No Name]'
	"endif
	"else
	""get only the file name
	"let name = fnamemodify(name,":t")
	"endif
	"let label .= name
	""Append the number of windows in the tab page
	"let wincount = tabpagewinnr(v:lnum, '$')
	"return label . ' [' . wincount . ']'
	"endfunction
	"set guitablabel=%{GuiTabLabel()}
"}}}

"{{{ tool tip Not Working
"set up tab tooltips with every buffer name
"function! GuiTabToolTip()
	"let tip = ''
	"let bufnrlist = tabpagebuflist(v:lnum)
	"for bufnr in bufnrlist
	""separate buffer entries
	"if tip!=''
		"let tip .= "\n "
	"endif
	""Add name of buffer
	"let name=bufname(bufnr)
	"if name == ''
		""give a name to no name documents
	"if getbufvar(bufnr,'&buftype')=='quickfix'
		"let name = '[Quickfix List]'
	"else
		"let name = '[No Name]'
	"endif
	"endif
	"let tip.=name
	""add modified/modifiable flags
	"if getbufvar(bufnr, "&modified")
		"let tip .= ' [+]'
	"endif
	"if getbufvar(bufnr, "&modifiable")==0
		"let tip .= ' [-]'
	"endif
	"endfor
	"return tip
"endfunction
"set guitabtooltip=%{GuiTabToolTip()}
"}}}

"{{{ Tab headings not working either
"function GuiTabLabel()
	"let label = ''
	"let bufnrlist = tabpagebuflist(v:lnum)

	""Add '+' if one of the buffers in the tab page is modified
	"for bufnr in bufnrlist
		"if getbufvar(bufnr, "&modified")
			"let label = '+'
			"break
		"endif
	"endfor

	""Append the number of windows in the tab page if more than one
	"let wincount = tabpagewinnr(v:lnum, '$')
	"if wincount > 1
		"let label .= wincount
	"endif
	"if label != ''
		"let label .= ' '
	"endif

	""Append the buffer name (not full path)
	"return label . "%t"
"endfunction

"set guitablabel=%!GuiTabLabel()
"}}}

"{{{ New one
"set tabline=%!MyTabLine() "custom tab pages line
"function MyTabLine()
	"let s = '' "complete tabline goes here
	""loop through each tab page
	"for t in range(tabpagenr('$'))
			""set highlight
			"if t + 1 == tabpagenr()
					"let s .= '%#TabLineSel#'
			"else
					"let s .= '%#TabLine#'
			"endif
			""set the tab page number (for mouse clicks)
			"let s .= '%' . (t + 1) . 'T'
			"let s .= ' '
			""set page number string
			"let s .= t + 1 . ' '
			""get buffer names and statuses
			"let n = ''	"temp string for buffer names while we loop and check buftype
			"let m = 0	"&modified counter
			"let bc = len(tabpagebuflist(t + 1))	"counter to avoid last ' '
			""loop through each buffer in a tab
			"for b in tabpagebuflist(t + 1)
					""buffer types: quickfix gets a [Q], help gets [H]{base fname}
					""others get 1dir/2dir/3dir/fname shortened to 1/2/3/fname
					"if getbufvar( b, "&buftype") == 'help'
							"let n .= '[H]' . fnamemodify( bufname(b), ':t:s/.txt$//' )
					"elseif getbufvar( b, "&buftype") == 'quickfix'
							"let n .= '[Q]'
					"else
							"let n .= pathshorten(bufname(b))
					"endif
					""check and ++ tab's &modified count
					"if getbufvar( b, "&modified")
							"let m += 1
					"endif
					""no final ' ' added...formatting looks better done later
					"if bc > 1
							"let n .= ' '
					"endif
					"let bc -= 1
			"endfor
			""add modified label [n+] where n pages in tab are modified
			"if m > 0
					"let s .= '[' . m . '+]'
			"endif
			""select the highlighting for the buffer names
			""my default highlighting only underlines the active tab
			""buffer names.
			"if t + 1 == tabpagenr()
					"let s .= '%#TabLineSel#'
			"else
					"let s .= '%#TabLine#'
			"endif
			""add buffer names
			"if n == ''
					"let s.= '[New]'
			"else
					"let s .= n
			"endif
			""switch to no underlining and add final space to buffer list
			"let s .= ' '
	"endfor
	""after the last tab fill with TabLineFill and reset tab page nr
	"let s .= '%#TabLineFill#%T'
	""right-align the label to close the current tab page
	"if tabpagenr('$') > 1
			"let s .= '%=%#TabLineFill#%999Xclose'
	"endif
	"return s
"endfunction
"}}}

	""{{{if BUFFER used NEED WORKING
	""CTRL-Tab is next buffer
		"noremap <C-Tab> :bn<CR>
	""CTRL-SHIFT-Tab is previous tab
		"noremap <C-S-Tab> :bp<CR>
	""Let 'tl' toggle between this and the last accessed tab
		"let g:lasttab = 1
		"nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
		"au TabLeave * let g:lasttab = tabpagenr()
	""}}}
"}}} file TABS setting

"{{{ Backup Settings
	"set backup
	"set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
	"set backupskip=/tmp/*,/private/tmp/*
	"set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
	"set directory=.,$TEMP
	"set writebackup
	:set nobackup
	""To make Backups with Date
		"":au! BufWrite * execute "w"expand("%") . strftime(".%y%m%d.%H%M%S")
		":au! BufWrite * execute "w!"expand("%") . strftime(".%y%m%d.")
		"noremap <leader>ba :au! BufWrite * execute "w!"expand("%") . strftime(".%y%m%d.")<CR>
"}}} Backup Settings

"{{{ FOLD settings
	set foldcolumn=3		"Add a bit extra margin to the left
	set foldenable	"enable folding
	set foldlevelstart=0	"open most folds by default
	set foldnestmax=10	"10 nested fold max
	"set foldmethod=indent	"fold based on indent level
	set foldmethod=marker
	"set foldmethod=syntax
	"set foldmethod=expr
	"foldlevel=0
	set foldlevel=0
	set modelines=1

	autocmd FileType vim setlocal foldmethod=marker
	"autocmd FileType vim setlocal foldmethod=indent
	"autocmd FileType apdl setlocal foldmethod=syntax
	autocmd FileType apdl setlocal foldmethod=marker
	autocmd FileType apdl setlocal foldmarker=anfang,ende
	autocmd FileType dosbatch setlocal foldmethod=marker
	autocmd FileType dosbatch setlocal foldmarker=anfang,ende
	autocmd FileType asm setlocal foldmethod=marker
	autocmd FileType asm setlocal foldmarker=anfang,ende
	autocmd FileType c setlocal foldmarker=anfang,ende
	autocmd FileType html setlocal foldmarker=anfang,ende
	autocmd FileType autohotkey setlocal foldmarker=anfang,ende
	autocmd FileType javascript setlocal foldmarker=anfang,ende
	autocmd FileType html setlocal foldmarker=anfang,ende
	autocmd FileType css setlocal foldmarker=anfang,ende
	autocmd FileType scss setlocal foldmarker=anfang,ende

	"let g:FoldMethod = 0		"Defining Global Variable

	let g:doFoldLevel=5

	"let g:vimsyn_folding='af'

	"Section Name {{{ ---3 brackets are markers
		"set number "This will be folded
	"}}}
"}}} FOLD Settings

"{{{ FUNCTIONS
	"noremap <leader>m :call ToggleNumber()<cr>
	"{{{ toggle between number and relativenumber
		"fun! ToggleNumber()
		"if(&relativenumber == 1)
			"set norelativenumber
			"set number
		"else
			"set relativenumber
		"endif
		"endfunc
	"}}} toggle between number and relativenumber

	"{{{ strips trailing whitespace at the end of files. this is called on buffer write in the autogroup above.
		function! <SID>StripTrailingWhitespaces()
			"save last search & cursor position
			let _s=@/
			let l = line(".")
			let c = col(".")
			%s/\s\+$//e
			let @/=_s
			call cursor(l, c)
		endfunction

		"Delete trailing white space on save, useful for Python and CoffeeScript ;)
		func! DeleteTrailingWS()
			exe "normal mz"
			%s/\s\+$//ge
			exe "normal `z"
		endfunc

		"autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
				"\:call <SID>StripTrailingWhitespaces()
		"autocmd BufWrite *.py :call DeleteTrailingWS()
		"autocmd BufWrite *.coffee :call DeleteTrailingWS()

	"}}} strips trailing whitespace at the end of files. this is called on buffer write in the autogroup above.

	"{{{ Function1			Adding Menu Item for Commands!!!
		function! CmdLine(str)
			exe "menu Foo.Bar :". a:str
			emenu Foo.Bar		"add menu
			unmenu Foo		"remove menu
		endfunction
	"}}} Function 1

	"{{{ selection
		function! VisualSelection(direction, extra_filter) range
			let l:saved_reg = @"
			execute "normal! vgvy"

			let l:pattern = escape(@", '\\/.*$^~[]')
			let l:pattern = substitute(l:pattern, "\n$", "", "")

			if a:direction == 'b'
				execute "normal ?". l:pattern . "^M"
			elseif a:direction == 'gv'
				call CmdLine("Ack \"". l:pattern . "\"")
			elseif a:direction == 'replace'
				call CmdLine("%s". '/'. l:pattern . '/')
			elseif a:direction == 'f'
				execute "normal /". l:pattern . "^M"
			endif

			let @/ = l:pattern
			let @"= l:saved_reg
		endfunction
	"}}} Selection

	"{{{ Function1
		"Returns true if paste mode is enabled
		function! HasPaste()
			if &paste
			return 'PASTE MODE '
			en
			return ''
		endfunction
	"}}} Function1

	"{{{ Function1
		"Don't close window, when deleting a buffer
		command! Bclose call <SID>BufcloseCloseIt()
		function! <SID>BufcloseCloseIt()
			let l:currentBufNum = bufnr("%")
			let l:alternateBufNum = bufnr("#")

			if buflisted(l:alternateBufNum)
				buffer #
			else
				bnext
			endif

			if bufnr("%") == l:currentBufNum
				new
			endif

			if buflisted(l:currentBufNum)
				execute("bdelete! ".l:currentBufNum)
			endif
		endfunction
	"}}} Function1

	"set diffexpr=MyDiff()		"ONLY required if VIM doesnot have DIFF component
	"{{{ Function1		ONLY REQUIRED IF VIM does not have DIFF Component
		"function MyDiff()
			"let opt = '-a --binary '
			"if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
			"if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
			"let arg1 = v:fname_in
			"if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
			"let arg2 = v:fname_new
			"if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
			"let arg3 = v:fname_out
			"if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
			"let eq = ''
			"if $VIMRUNTIME =~ ' '
				"if &sh =~ '\<cmd'
					"let cmd = '""' . $VIMRUNTIME . '\diff"'
					"let eq = '"'
				"else
					"let cmd = substitute($VIMRUNTIME, ' ', '"', '') . '\diff"'
				"endif
			"else
				"let cmd = $VIMRUNTIME . '\diff'
			"endif
			"silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
		"endfunction
	"}}} Function1

	"{{{ Toggle Fold Function
	noremap <leader>ff :call ToggleFold()<cr>
	fun! ToggleFold()
		if &foldmethod == 'marker'
			exe 'set foldmethod=syntax'
		else
			exe 'set foldmethod=marker'
		endif
	endfun
	"}}}
"}}} FUNCTIONS

"{{{ Other Settings
	"Return to last edit position when opening files (You want this!)
		autocmd BufReadPost *
			\ if line("'\"") > 0 && line("'\"") <= line("$") |
			\ exe "normal! g`\""|
			\ endif

	set viminfo^=%		"Remember info about open buffers on close

	"Specify the behavior when switching between buffers
	try
		set switchbuf=useopen,usetab,newtab
		set stal=2
	catch
	endtry

	set autoread		"Auto reload files if changed outside
	set so=7		"Set 7 lines to the cursor - when moving vertically using j/k
	"Linebreak on 500 characters
			"set lbr
			"set tw=500
	set ai "Auto indent
	set si "Smart indent
	"set wrap "Wrap lines
	set mousehide		"Hide the mouse when typing text
	set timeout timeoutlen=3000
	set history=700		"Sets how many lines of history VIM has to remember
	set autoread		"Set to auto read when a file is changed from the outside
	set showcmd		"show command in bottom bar, display incomplete commands
	set cursorline	"highlight current line
	set wildmenu	"visual autocomplete for command menu
	set showmatch		"highlight matching [{()}]		Show matching brackets when text indicator is over them
	set incsearch		"search as characters are entered, do incremental searching
	set hlsearch		"highlight matches
	set lazyredraw		"redraw only when we need to.
	set wildmenu		"Turn on the WiLd menu
	set ruler			"Always show current position
	set cmdheight=2			"Height of the command bar
	set ch=2		"Make command line two lines high
	set hid		"A buffer becomes hidden when it is abandoned
	set backspace=eol,start,indent		"Configure backspace so it acts as it should act				allow backspacing over everything in insert mode
	set whichwrap+=<,>,h,l				"Configure backspace so it acts as it should act
	set ignorecase		"Ignore case when searching
	set smartcase		"When searching try to be smart about cases
	set magic		"For regular expressions turn magic on
	set mat=2		"How many tenths of a second to blink when matching brackets

	"No annoying sound on errors
		set noerrorbells visualbell t_vb=
		if has('autocmd')
			autocmd GUIEnter * set visualbell t_vb=
		endif
		set noeb vb t_vb=
		set vb t_vb=

	syntax on
	filetype plugin on
	filetype plugin indent on	"required
	filetype indent on		"load filetype-specific indent files
	filetype plugin on
	filetype indent on

	autocmd InsertEnter * :set number
	autocmd InsertLeave * :set relativenumber

	"Cursor is green, Cyan when ":lmap"mappings are active, Constants are not underlined but have a slightly lighter background
		highlight Cursor guibg=Green guifg=NONE
		highlight lCursor guibg=Cyan guifg=NONE

	"CtrlP settings
		let g:ctrlp_match_window = 'bottom,order:ttb'
		let g:ctrlp_switch_buffer = 0
		let g:ctrlp_working_path_mode = 0
		"let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

	"create language-specific settings for certain filetypes/file extensions
		augroup configgroup
			autocmd!
			autocmd VimEnter * highlight clear SignColumn
			autocmd FileType java setlocal noexpandtab
			autocmd FileType java setlocal list
			autocmd FileType java setlocal listchars=tab:+\ ,eol:-
			autocmd FileType java setlocal formatprg=par\ -w80\ -T4
			autocmd FileType php setlocal expandtab
			autocmd FileType php setlocal list
			autocmd FileType php setlocal listchars=tab:+\ ,eol:-
			autocmd FileType php setlocal formatprg=par\ -w80\ -T4
			autocmd FileType ruby setlocal tabstop=2
			autocmd FileType ruby setlocal shiftwidth=2
			autocmd FileType ruby setlocal softtabstop=2
			autocmd FileType ruby setlocal commentstring=#\ %s
			autocmd FileType python setlocal commentstring=#\ %s
			autocmd BufEnter *.cls setlocal filetype=java
			autocmd BufEnter *.zsh-theme setlocal filetype=zsh
			autocmd BufEnter Makefile setlocal noexpandtab
			autocmd BufEnter *.sh setlocal tabstop=2
			autocmd BufEnter *.sh setlocal shiftwidth=2
			autocmd BufEnter *.sh setlocal softtabstop=2
		augroup END

	"Convenient command to see the difference between the current buffer and the file it was loaded from, thus the changes you made.
	"Only define it when not defined already.
	if !exists(":DiffOrig")
			command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
			\ | wincmd p | diffthis
	endif

	"Running current file in BATCH or CMD
	"noremap <C-y> :!%:p<CR>
	"noremap <leader>run :!%:p<CR>
	nnoremap <leader>run :!start %:p<CR>
	"noremap <leader>brun :exe '!start cmd /k' . expand(pathbat) . '/SM.bat & pause'<CR>
	"noremap <leader>brun :exe '!start cmd /k' . expand(pathbat) . '/SM.bat'<CR>
	noremap <leader>bun :exe '!start cmd /c' . expand(pathbat) . '/SM.bat'<CR>

"}}} Other Settings

"{{{ Intent-Guide Plugin Settings
	let g:indent_guides_start_level=1
	let g:indent_guides_guide_size=1
	let g:indent_guides_auto_colors=1
	let g:indent_guides_space_guides=0
	let g:indent_guides_enable_on_vim_startup=1
	let g:indent_guides_color_change_percent=3
"}}}

"{{{ Use CTRL-S for saving, also in Insert mode
	noremap <C-S>		:update!<CR>
	vnoremap <C-S>		<C-C>:update!<CR>
	inoremap <C-S>		<C-O>:update!<CR>
"}}}

"{{{ Commenting blocks of code. Alternative to Nerd Commentator
	"autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
	"autocmd FileType sh,ruby,python let b:comment_leader = '# '
	"autocmd FileType conf,fstab let b:comment_leader = '# '
	"autocmd FileType tex let b:comment_leader = '% '
	"autocmd FileType mail let b:comment_leader = '> '
	"autocmd FileType vim let b:comment_leader = '"'
	"autocmd FileType apdl let b:comment_leader = '! '
	"noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
	"noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
"}}}

"{{{TABLINE SETTINGS
"set showtabline=2 "always show tabs in gvim, but not vim
""set up tab labels with tab number, buffer name, number of windows
"function! GuiTabLabel()
	"let label = ''
	"let bufnrlist = tabpagebuflist(v:lnum)
	""Add '+' if one of the buffers in the tab page is modified
	"for bufnr in bufnrlist
	"if getbufvar(bufnr, "&modified")
		"let label = '+'
		"break
	"endif
	"endfor
	""Append the tab number
	"let label .= v:lnum.': '
	""Append the buffer name
	"let name = bufname(bufnrlist[tabpagewinnr(v:lnum) - 1])
	"if name == ''
	""give a name to no-name documents
	"if &buftype=='quickfix'
		"let name = '[Quickfix List]'
	"else
		"let name = '[No Name]'
	"endif
	"else
	""get only the file name
	"let name = fnamemodify(name,":t")
	"endif
	"let label .= name
	""Append the number of windows in the tab page
	"let wincount = tabpagewinnr(v:lnum, '$')
	"return label . ' [' . wincount . ']'
"endfunction
"set guitablabel=%{GuiTabLabel()}
"}}}

"{{{ File Type Association
"APDL filetye association
	au BufNewFile,BufRead *.in	setf apdl
	au BufNewFile,BufRead *.mac	setf apdl
	au BufNewFile,BufRead *.out	setf apdl
	au BufNewFile,BufRead *.inp	setf apdl
	au BufNewFile,BufRead *.solc	setf apdl
	au BufNewFile,BufRead *.csv	setf apdl
	au BufNewFile,BufRead *.s01	setf apdl
	au BufNewFile,BufRead *.s02	setf apdl
	au BufNewFile,BufRead *.s03	setf apdl
	au BufNewFile,BufRead *.s04	setf apdl
	au BufReadPost *.mac set syntax=apdl
	au BufReadPost *.mac setf apdl
	au BufReadPost *.in setf apdl
	au BufReadPost *.out setf apdl
	au BufReadPost *.inp setf apdl
	au BufReadPost *.solc setf apdl
	au BufReadPost *.csv setf apdl
	au BufReadPost *.s01 setf apdl
	au BufReadPost *.s02 setf apdl
	au BufReadPost *.s03 setf apdl
	au BufReadPost *.s04 setf apdl
	au BufReadPost *.ans setf apdl

	au WinEnter *.mac setf apdl
"}}}

"{{{ Nerd Commentator Settings
	let g:NERDCustomDelimiters = {
		\ 'ruby': { 'left': '#', 'leftAlt': 'FOO', 'rightAlt': 'BAR' },
		\ 'grondle': { 'left': '{{', 'right': '}}' },
		\ 'apdl': { 'left': '! ', 'leftAlt': '!', 'right': '' },
		\ 'mac': { 'left': '! ', 'leftAlt': '!', 'right': '' },
		\ 'macro': { 'left': '! ', 'leftAlt': '!', 'right': '' },
		\ 'asm': { 'left': '! ', 'leftAlt': '!', 'right': '' },
	\ }

	let NERD_apdl_alt_style=1
	let NERD_mac_alt_style=1
	let NERD_macro_alt_style=1
"}}}

"{{{ Open Important Files
	noremap <leader>vrc :exe 'tabedit ' . expand(pathRTP) . '/vimrc.vim'<CR>
	noremap <leader>apd :exe 'tabedit ' . expand(pathRTP) . '/syntax/apdl.vim'<CR>
	noremap <leader>bat :exe 'tabedit ' . expand(pathbat) . '/SM.bat'<CR>
	noremap <leader>baat :exe 'tabedit ' . expand(pathbat) . '/SM2.bat'<CR>
	noremap <leader>cp :exe 'tabedit ' . expand(pathsm) . '/macros/cp7.mac'<CR>
	noremap <leader>sm :exe 'tabedit ' . expand(pathsm) . '/sm.mac'<CR>
	noremap <leader>app :exe 'tabedit ' . expand(pathRTP) . '/colors/deserts.vim'<CR>
	noremap <leader>ab :exe 'tabedit ' . expand(pathsm). '/absm.mac'<CR>
	noremap <leader>snip :exe 'tabedit ' . expand(pathRTP) . '/snips/apdl.snippets'<CR>
"}}}

"{{{ UltiSnips Settings
	let g:UltiSnipsExpandTrigger="<tab>"
	let g:UltiSnipsJumpForwardTrigger="<tab>"
	let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
	let g:UltiSnipsSnippetDirectories=["UltiSnips","snips"]
	let g:UltiSnipsSnippetsDir=expand(pathRTP) . '/snips'
"}}}

"{{{ BOOKMARKS Settings
	let g:bookmark_save_per_working_dir = 1
	let g:bookmark_auto_save = 1
	let g:bookmark_manage_per_buffer = 1
	"let g:bookmark_auto_save_file = pathWork
		"mm	:BookmarkToggle
		"mi	:BookmarkAnnotate <TEXT>
		"mn	:BookmarkNext
		"mp	:BookmarkPrev
		"ma	:BookmarkShowAll
		"mc	:BookmarkClear
		"mx	:BookmarkClearAll
		":BookmarkSave <FILE_PATH>
		":BookmarkLoad <FILE_PATH>
	let g:bookmark_no_default_key_mappings = 1
	function! BookmarkMapKeys()
		nmap mm :BookmarkToggle<CR>
		nmap mi :BookmarkAnnotate<CR>
		nmap mn :BookmarkNext<CR>
		nmap mp :BookmarkPrev<CR>
		nmap ma :BookmarkShowAll<CR>
		nmap mc :BookmarkClear<CR>
		nmap mx :BookmarkClearAll<CR>
	endfunction
	function! BookmarkUnmapKeys()
		unmap mm
		unmap mi
		unmap mn
		unmap mp
		unmap ma
		unmap mc
		unmap mx
	endfunction
	autocmd BufEnter * :call BookmarkMapKeys()
	autocmd BufEnter NERD_tree_* :call BookmarkUnmapKeys()
"}}}

"{{{"The Silver Searcher
	"if executable('ag')
	""Use ag over grep
	"set grepprg=ag\ --nogroup\ --nocolor

	""Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
	"let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

	""ag is fast enough that CtrlP doesn't need to cache
	"let g:ctrlp_use_caching = 0
	"endif
"}}}

"{{{ SEARCH OPTIONS
	"bind K to vimgrep word under cursor
		nnoremap <leader>gw :vimgrep! /<C-R><C-W>/gj *.in<CR>:cw<CR>
	"Search in Dir and sub directories for word under Cursor in ALL FILES
		"map <F4> :execute "vimgrep /". expand("<cword>") . "/gj **"<Bar> cw<CR>

	"same as above but for some extension Only...
		map <F4> :execute "vimgrep /". expand("<cword>") . "/gj *.in"<Bar> cw<CR>

	"Search for word under cursor in same file.... Same as / searching....(* or #) is preferred
		command! GREP :execute 'vimgrep /'.expand('<cword>').'/gj '.expand('%') | copen

	"{{{GREP settings
		let Grep_Path=expand(pathRTP).'\GREP\bin\grep.exe'
		let Fgrep_Path=expand(pathRTP).'\GREP\bin\fgrep.exe'
		let Egrep_Path=expand(pathRTP).'\GREP\bin\egrep.exe'
		let Agrep_Path=expand(pathRTP).'\GREP\bin\agrep.exe'
		let Grep_Xargs_Path=expand(pathRTP).'\GREP\bin\xargs.exe'
		let Grep_Find_Path=expand(pathRTP).'\GREP\bin\find.exe'
		let Grep_Default_Filelist='*.in *.mac *.out'
		let Grep_Default_Options = '-ri'
		let Grep_Find_Use_Xargs = 0
		"let Grep_Xargs_Options = '--null'
		nnoremap <leader>spc :Grep sp.*case *.in *.mac *.out <CR>
	"}}}
"}}}

"{{{ Session Settings
	let SessionLoad=1
	"set ssop=buffers,tabpages,winsize,curdir
	"set ssop=tabpages,winsize,curdir,folds
	set ssop=tabpages,winsize,curdir
"}}}

"{{{ Switching Between TABS
	"let g:lasttab = 1
	"nmap <Leader>tt :exe "tabn ".g:lasttab<CR>
	"au TabLeave * let g:lasttab = tabpagenr()

	"Go to last active tab
	nnoremap <silent>tl :exe "tabn ".g:lasttab<cr>
	vnoremap <silent>tl :exe "tabn ".g:lasttab<cr>

	"Go to last edited tab
	let g:editTab=1
	let g:editTab2=1
	nmap <Leader>tt :call LastEditTab()<cr>
	au InsertLeave * let g:editTab = tabpagenr()
	function! LastEditTab()
		:exe "tabn ".g:editTab2
		if g:editTab2 ==# g:editTab

		else
			let g:editTab2=g:editTab
		endif
	endfunction
"}}}

"{{{ Windows Settings
	"window Naviations
		nnoremap ,hor <C-w>t<C-w>K
		nnoremap ,ver <C-w>t<C-w>H
		nnoremap <S-tab> <C-w>w

	"Smart way to move between windows
		"map <C-j> <C-W>j
		"map <C-k> <C-W>k
		"map <C-h> <C-W>h
		"map <C-l> <C-W>l

	"resize Window
		nnoremap ++ :vertical resize +5<cr>
		nnoremap -- :vertical resize -5<cr>
		"nnoremap +-+ <C-w>o
		"nnoremap +-- <C-w>=
		"nnoremap ++- <C-w>c
"}}}

"{{{ Still TO MANAGE
"Update VIMRC
noremap <leader>sv :exe 'source ' .expand(pathRTP) . '/vimrc.vim'<CR>

"Set working Directory
exe ':set dir=' . expand(pathWork)
noremap <leader>wd :exe 'cd ' . expand(pathWork)<CR>

"for Indentation
vnoremap < <gv
vnoremap > >gv

":verbose nnoremap ö <C-]>
":verbose nnoremap ä <C-O>
	"exe 'noremap <Char-196> }'	| "LATIN CAPITAL A WITH DIAERESIS
	"exe 'noremap <Char-214> {'	| "LATIN CAPITAL O WITH DIAERESIS
	"exe 'noremap <Char-228> ]'	| "LATIN SMALL A WITH DIAERESIS
	"exe 'noremap <Char-246> ['	| "LATIN SMALL O WITH DIAERESIS

noremap <leader>llt $
noremap <leader>lls ^

"REFRESH file : reload + go to end
noremap <F5> :e<CR>G
noremap <S-F5> :e!<CR>G

noremap <leader>ntr :NERDTreeFind<cr>
noremap <leader>gm `

set guitablabel=\[%N\]\ %t\ %M

"Map g- as an alias for g;
nnoremap g- g;

set wrap		"wrap lines
"set nowrap		"don't wrap lines
set visualbell		"don't beep
set noerrorbells		"don't beep

"Disable arrows in Normal Mode
	"map <up> <nop>
	"map <down> <nop>
	"map <left> <nop>
	"map <right> <nop>

"CTRL-C and CTRL-Insert are Copy
	vnoremap <C-C> "+ygv
	vnoremap <C-Insert> "+ygv

let g:airline_section_c='%t >>>          WD: %r%{getcwd()}%h          <<< %{strftime("%c")}'

set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
":SyntasticInfo

"set list
"set listchars=tab:»·,trail:·
"set listchars=tab:>.,trail:.,extends:#,nbsp:.
"set list listchars=tab:>-,eol:¶
"Alternative to intent-guides Plugin
	":set list lcs=tab:\|\

"let NERDTreeIgnore += ['\(\.in\)\@<!$[[file]]']
let NERDTreeIgnore = ['\(\.in\)\@<!$[[file]]']

set printfont=Courier:h12

"nnoremap <F6> :GundoToggle<CR>

"Open File under cursor in new TAB
noremap <F11> <c-w>gf<CR>

nnoremap gl ''

"repeat last : command
nnoremap <F12> @q

"search and replace :///, ask for confirmation
nnoremap <leader>cfn :%s/:\/\/\/\.\\/: /gc<cr>

"nnoremap u <nop>
nnoremap U <nop>
nnoremap J <nop>
nnoremap <C-R> :e!<CR>G
nnoremap <C-R> <nop>

"maps to move between changes/DIFF
noremap <C-h> ]c
noremap <C-g> [c

"Show Highlight Group
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

"recursive folding and opening folds
nnoremap zs zO
nnoremap zd zC

"Select word under Cursor
nnoremap <space> viw

"{{{ TO HIGHLLIGHT space-tab or tab-space or space-space
	"if &ft=='out'

	"else
		"match extraWhite / \s/
		"match extraWhite /\s /
		"match extraWhite /\( \s\)\|\(\s \)/
		"autocmd ColorScheme * highlight extraWhite ctermbg=red guibg=red
		"autocmd ColorScheme * highlight extraWhite ctermbg=red guibg=red
	"endif
	nnoremap <Leader>wn :match extraWhite /\( \s\)\\|\(\s \)/<cr>
	nnoremap <Leader>wf :match<CR>
"}}}

set shortmess=a

"Compare with last saved FILE
function! s:DiffWithSaved()
	let filetype=&ft
	diffthis
	vnew | r # | normal! 1Gdd
	diffthis
	exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! Dsave call s:DiffWithSaved()

"Set up the gui cursor to look nice
"set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

let g:bufExplorerSortBy='name'	" Sort by the buffer's name.
"autocmd BufEnter * :syntax sync fromstart

"autocmd BufWinLeave *.* mkview!
"autocmd BufWinEnter *.* silent loadview

let username=$USERNAME
noremap <leader>desk :exe 'cd C:\Users\'.expand(username).'\Desktop'<CR>

"move to start/end of fold
	noremap <leader>fa zk
	noremap <leader>fe zj
	noremap fa [z
	noremap fe ]z

"map Ctrl-F to search (recursive mapping) and replace Ctrl F by Alt b
	nnoremap <A-b> <C-f>
	map <C-f> <space>s

"Highlight line,word,column, or clear highlights
	nnoremap <silent> <leader>hil :exe "let m = matchadd('WildMenu','\\%" . line('.') . "l')"<CR>
	nnoremap <silent> <Leader>hiw :exe "let m=matchadd('WildMenu','\\<\\w*\\%" . line(".") . "l\\%" . col(".") . "c\\w*\\>')"<CR>
	nnoremap <silent> <leader>hic :exe "let m=matchadd('WildMenu','\\<\\w*\\%" . virtcol(".") . "v\\w*\\>')"<CR>
	nnoremap <silent> <leader><CR> :call clearmatches()<CR>

"% to go to closing tag - Defining Tags for matchit
	let b:match_words='\<if\>:\<elseif\>:\<else\>:\<endif\>,\<do\>:\<enddo\>,\<anfang\>:\<ende\>,{{{:}}}'
	au SessionLoadPost * let b:match_words='\<if\>:\<elseif\>:\<else\>:\<endif\>,\<do\>:\<enddo\>,\<anfang\>:\<ende\>,{{{:}}}'
	nnoremap <leader><tab> :let b:match_words='\<if\>:\<elseif\>:\<else\>:\<endif\>,\<do\>:\<enddo\>,\<anfang\>:\<ende\>,{{{:}}}'<CR>
	"use tab or ä as key instead of %
	nnoremap ä %
	map <tab> %

"set grepprg=grep\ -nrI\ --exclude-dir=target\ --exclude-dir=tmp\ --exclude-dir=log\ --exclude="*.min.js"\ --exclude="*.log"\ $*\ /dev/null
"let Grep_Shell_Quote_Char = "\""

noremap <C-w> :bd<CR>

noremap <C-t> :call WrapToggle()<CR>
function! WrapToggle()
	if &wrap
		set nowrap
	else
		set nolist wrap linebreak breakat&vim
	endif
endfunction

noremap 11 :execute "tab drop s.in"<CR>
noremap # :call FileLoad()<CR>
function! FileLoad()
	let path = expand("<cword>").".in"
	if(filereadable(path))
		exe "tab drop " . path
	endif
endfunction

command! -nargs=1 Tt :call Dtab("<args>")
function! Dtab(fName)
	let path = a:fName.".in"
	if(filereadable(path))
		exe "tab drop " . path
	else
		echo "File Not Available."
	endif
endfunction

"function! BufSel(pattern)
function! BufSel()
	let bufcount = bufnr("$")
	let currbufnr = 1
	let nummatches = 0
	let firstmatchingbufnr = 0
	while currbufnr <= bufcount
		if(bufexists(currbufnr))
			let currbufname = bufname(currbufnr)
			if(match(currbufname, expand("<cword>")) > -1)
				echo currbufnr . ": ". bufname(currbufnr)
				let nummatches += 1
				let firstmatchingbufnr = currbufnr
			endif
		endif
		let currbufnr = currbufnr + 1
	endwhile
	if(nummatches == 1)
		execute ":buffer ". firstmatchingbufnr
	elseif(nummatches > 1)
		let desiredbufnr = input("Enter buffer number: ")
		if(strlen(desiredbufnr) != 0)
			execute ":buffer ". desiredbufnr
		endif
	else
		echo "No matching buffers"
	endif
endfunction
"Bind the BufSel() function to a user-command
"command! -nargs=1 Bs :call BufSel("<args>")
"command! Bs :call BufSel()
noremap <C-F12> :call BufSel()<CR>

set textwidth=0
set wrapmargin=0

"move tabs with ALT -> or ALT <-
	nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
	nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>
""move within windows with ALT shift -> or ALT shift <-
	"nnoremap <silent> <A-S-Left> :wincmd h<CR>
	"nnoremap <silent> <A-S-Right> :wincmd l<CR>
	"nnoremap <silent> <A-S-Up> :wincmd k<CR>
	"nnoremap <silent> <A-S-Down> :wincmd j<CR>
"move windows with ALT up or ALT down
	nnoremap <silent> <A-Up> <c-w>r
	nnoremap <silent> <A-Down> <c-w>R

"set viminfo='1000,f1

set splitbelow
set splitright
set nohidden

"set printoptions=number:y
set printoptions=number:n
set printoptions+=wrap:n
set printoptions+=left:2
"printing Time
	"set pheader=%<%f%h%m%40{strftime(\"%I:%M:%S\ \%p,\ %a\ %b\ %d,\ %Y\")}%=Page\ %N
	set pheader=%<%f%h%m%40{strftime(\"%I:%M:%S\ \%p,\ %d\.%m.%Y\")}%=Page\ %N
"last modification Time
	"set pheader=%<%f%h%m\ %40{strftime(\"%c\",getftime(expand(\"%%\")))}%=Page\ %N

map ff :tabfirst<CR>

"recursive Search arg1 using Vimgrep
command! -nargs=1 Grepr :vimgrep <q-args> **/*.in | copen

"execute Draftsight
nnoremap <leader>cad :!start "E:\SM\Dassault Systemes\DraftSight\bin\DraftSight.exe"<CR>

"word template Loacation
"nnoremap <leader>wt :!start explorer "%appdata%\Microsoft\Templates\"<CR>
nnoremap <leader>wt :!start explorer "C:\Users\Maharjan\AppData\Roaming\Microsoft\Templates"<CR>

"network Addresses
	nnoremap <leader>mr :!start explorer "\\mkumer"<CR>
	nnoremap <leader>mz :!start explorer "\\mkurz1"<CR>
	nnoremap <leader>tr :!start explorer "\\twacker"<CR>

"let g:ag_prg="E:/SM/VIM/ag/ag.exe --vimgrep"
set shortmess=at

nnoremap <A-a> <C-a>
nnoremap <A-x> <C-x>

											"press Esc (to leave editing or other mode)
											"hit ctrl+v (visual block mode)
											"use the up/down arrow keys to select lines you want (it won't highlight everything - it's OK!)
											"Shift+i (capital I)
											"insert the text you want, i.e. '% '
											"press Esc
											"Give it a second to work.

											"To uncomment blocks in vim:
											"press Esc (to leave editing or other mode)
											"hit ctrl+v (visual block mode)
											"use the up/down arrow keys to select the lines to uncomment.
											"If you want to select multiple characters, use one or combine these methods:

											"use the left/right arrow keys to select more text
											"to select chunks of text use shift + left/right arrow key
											"you can repeatedly push the delete keys below, like a regular delete button
											"press d or x to delete characters, repeatedly if necessary

											"press Esc

											"Give it a second to work.

"wrap <b></b> around visually selected text
vmap sb "zdi<b><C-R>z</b><Esc>
"wrap <?= ?> around visually selected text
vmap st "zdi<?= <C-R>z ?><Esc>
vmap fb do<Esc>ki! anfang <Esc>o! ende<Esc>bhPkA
vmap db do<Esc>ki*do, <Esc>o*enddo<Esc>bhPkA
vmap ifb do<Esc>ki*if, <Esc>o*endif<Esc>bhPkA

" If buffer modified, update any 'Last modified: ' in the first 20 lines.
" 'Last modified: ' can have up to 10 characters before (they are retained).
" Restores cursor and window position using save_cursor variable.
function! LastModified()
	if &modified
		let save_cursor = getpos(".")
		let n = min([20, line("$")])
		keepjumps exe '1,' . n . 's#^\(.\{,10}Last modified: \).*#\1' .
			\ strftime('%a %b %d, %Y (%I:%M%p)') . '#e'
		call histdel('search', -1)
		call setpos('.', save_cursor)
	endif
endfun
autocmd BufWritePre * call LastModified()

"Disable Middle Mouse Button
nnoremap <MiddleMouse> <Nop>
nnoremap <2-MiddleMouse> <Nop>
nnoremap <3-MiddleMouse> <Nop>
nnoremap <4-MiddleMouse> <Nop>
inoremap <MiddleMouse> <Nop>
inoremap <2-MiddleMouse> <Nop>
inoremap <3-MiddleMouse> <Nop>
inoremap <4-MiddleMouse> <Nop>

"Open command prompt by running :Cp
command! Cmd :!start cmd /k cd %:p:h<CR>

"Open windows explorer by running :We
command! We :!start Explorer /select,%:p<CR>

function! CleanFormat()
	silent %s/,/, /ge
	silent %s/=/ = /ge
	silent %s/!/! /ge
	silent %s/  / /ge
	silent %s/  / /ge
	silent %s/  / /ge
	silent %s/  / /ge
	silent %s/  / /ge
	silent %s/< =/<=/ge
	silent %s/> =/>=/ge
endfun
nnoremap <leader>cft :call CleanFormat()<CR>

set commentstring=\ !\ %s

"Fold apdl Import Block
nnoremap <leader>fi gg/assembly<CR>zf/wallbsol<CR>:nohlsearch<CR>
"Fold apdl Shell kp Block
nnoremap <leader>fs gg/tech<CR>zf/engineering<CR>:nohlsearch<CR>
"Fold apdl Pretensions maintains Block
nnoremap <leader>fp gg/maintains<CR>zf/\*\*\*\*<CR>:nohlsearch<CR>

nnoremap gc f!







"}}}
