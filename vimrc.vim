"VIMRC FILE "Sarat Maharjan "sarat.maharjan@gmail.com "2015.07.03

"{{{ OTHER SOURCES

	let user = substitute(system('whoami'),'\n','','')
	if user == "sarat-hp\\sarat"
		source C:/Users/Sarat/Dropbox/VIM/pathANDfontHome.vim
	elseif user == "anakon\\maharjan"
		source E:/Cloud/Dropbox/VIM/pathANDfontAnakon.vim
	else
		echo "Invalid user"
	endif

	source $VIMRUNTIME/vimrc_example.vim
	source $VIMRUNTIME/mswin.vim
	behave mswin
	"exe 'source ' .expand(pathColor)
	exe 'set rtp+=' .expand(pathRTP)

	"Zoom Functions
	exe 'so ' .expand(pathZoom)
	exe 'set undodir=' .expand(pathWork)
"}}} Sources

"{{{ Initial Setting - need to be at start
	let mapleader=","	"leader is comma
	let g:mapleader = ","

	if has('mouse')		"Enable Mouse
		set mouse=a
	endif
"}}}

"{{{ Language and Encoding
	"set langmenu=en_US
	set langmenu=de_DE
	let $LANG = 'en_US'
	source $VIMRUNTIME/delmenu.vim
	source $VIMRUNTIME/menu.vim
	set encoding=utf-8
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
		exe 'set rtp+=' .expand(path)

		"pass a path where Vundle should install plugins
		call vundle#begin(pathInstall)

		"let Vundle manage Vundle, required
			Plugin 'gmarik/Vundle.vim'

			"The following are examples of different formats supported. Keep Plugin commands between vundle#begin/end.

			"plugin on GitHub repo
			"Plugin 'tpope/vim-fugitive'

			"plugin from http://vim-scripts.org/vim/scripts.html
			Plugin 'L9'

			"Git plugin not hosted on GitHub
			"Plugin 'git://git.wincent.com/command-t.git'
			Plugin 'https://github.com/scrooloose/nerdtree.git'
			""Plugin 'https://github.com/amix/vimrc.git'
			""Plugin 'https://github.com/tpope/vim-pathogen.git'
			Plugin 'https://github.com/vim-scripts/peaksea.git'
			Plugin 'https://github.com/sjl/badwolf.git'
			Plugin 'https://github.com/sjl/gundo.vim.git'
			"Plugin 'https://github.com/ggreer/the_silver_searcher.git'
			Plugin 'https://github.com/rking/ag.vim.git'
			Plugin 'https://github.com/kien/ctrlp.vim.git'
			"Plugin 'https://github.com/kchmck/vim-coffee-script.git'
			"Plugin 'https://github.com/scrooloose/syntastic.git'
			"Plugin 'https://github.com/tpope/vim-commentary.git'
			Plugin 'https://github.com/scrooloose/nerdcommenter.git'
			Plugin 'https://github.com/jlanzarotta/bufexplorer.git'
			Plugin 'https://github.com/jeffkreeftmeijer/vim-numbertoggle.git'
			Plugin 'https://github.com/nathanaelkane/vim-indent-guides.git'
			Plugin 'https://github.com/tpope/vim-abolish.git'
			"Plugin 'https://github.com/mkitt/tabline.vim.git'
			"Plugin 'https://github.com/msanders/snipmate.vim.git'
			Plugin 'https://github.com/MattesGroeger/vim-bookmarks.git'
			"Plugin 'https://github.com/SirVer/ultisnips.git'
			Plugin 'https://github.com/bling/vim-airline.git'
			"Plugin 'https://github.com/Valloric/YouCompleteMe.git'
			Plugin 'https://github.com/yegappan/grep.git'
			"Plugin 'https://github.com/vim-scripts/TabLineSet.vim.git'
			Plugin 'https://github.com/tpope/vim-fugitive.git'

			"git repos on your local machine (i.e. when working on your own plugin)
			"Plugin 'file:///home/gmarik/path/to/plugin'

			"The sparkup vim script is in a subdirectory of this repo called vim.
			"Pass the path to set the runtimepath properly.
			Plugin 'rstacruz/sparkup', {'rtp': 'vim'}

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
	"nnoremap <space> za		"space open/closes folds
	nnoremap <leader>u :GundoToggle<CR>		"toggle gundo
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

	noremap <leader>q :e ~/buffer<cr>			"Quickly open a buffer for scribble
	noremap <leader>x :e ~/buffer.md<cr>		"Quickly open a markdown buffer for scribble
	noremap <leader>pp :setlocal paste!<cr>		"Toggle paste mode on and off
	noremap <silent> <leader><cr> :noh<cr>		"Disable highlight when <leader><cr> is pressed
	"noremap <leader>bd :Bclose<cr>		"Close the current buffer
	"noremap <leader>ba :1,1000 bd!<cr>		"Close all the buffers
	noremap <leader>cd :cd %:p:h<cr>:pwd<cr>		"Switch CWD to the directory of the open buffer

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
		:noremap <F7> :checktime<CR>
		:noremap! <F7> <C-O>:checktime<CR>

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
				set tabstop=4 "number of visual spaces per TAB
				"set softtabstop=4 "number of spaces in tab when editing
				"set smarttab		"Be smart when using tabs ;)
				set shiftwidth=4		"1 tab == 4 spaces
		"}}}
		"{{{Line Numbers
				set number	"show line numbers
				set relativenumber
		"}}}
"}}} GUI OPTIONS

"{{{ Working Directory Setting
	exe 'cd ' . expand(pathWork)
	set autochdir		"Make file director Working
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
			"To make Backups with Date
				":au! BufWrite * execute "w"expand("%") . strftime(".%y%m%d.%H%M%S")
				:au! BufWrite * execute "w!"expand("%") . strftime(".%y%m%d.")
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
	autocmd FileType apdl setlocal foldmarker=!anfang,!ende
	autocmd FileType dosbatch setlocal foldmethod=marker
	autocmd FileType dosbatch setlocal foldmarker=anfang,ende
	autocmd FileType asm setlocal foldmethod=marker
	autocmd FileType asm setlocal foldmarker=!anfang,!ende

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
		autocmd BufWrite *.py :call DeleteTrailingWS()
		autocmd BufWrite *.coffee :call DeleteTrailingWS()

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
			autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
				\:call <SID>StripTrailingWhitespaces()
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
	noremap <leader>run :!%:p<CR>

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
	au BufNewFile,BufRead *.s01	setf apdl
	au BufNewFile,BufRead *.s02	setf apdl
	au BufNewFile,BufRead *.s03	setf apdl
	au BufReadPost *.mac set syntax=apdl
	au BufReadPost *.mac setf apdl
	au BufReadPost *.in setf apdl
	au BufReadPost *.out setf apdl
	au BufReadPost *.inp setf apdl
	au BufReadPost *.s01 setf apdl
	au BufReadPost *.s02 setf apdl
	au BufReadPost *.s03 setf apdl

"}}}

"{{{ Nerd Commentator Settings

let g:NERDCustomDelimiters = {
	\ 'ruby': { 'left': '#', 'leftAlt': 'FOO', 'rightAlt': 'BAR' },
	\ 'grondle': { 'left': '{{', 'right': '}}' },
	\ 'apdl': { 'left': '!', 'right': '' },
	\ 'mac': { 'left': '!', 'right': '' },
	\ 'macro': { 'left': '!', 'right': '' },
	\ 'asm': { 'left': '!', 'right': '' }
\ }

let NERD_apdl_alt_style=1
let NERD_mac_alt_style=1
let NERD_macro_alt_style=1

"}}}

"{{{ Open Important Files
	noremap <leader>vrc :exe 'tabedit ' . expand(pathvrc)<CR>
	noremap <leader>apd :exe 'tabedit ' . expand(pathapdl)<CR>
	noremap <leader>bat :exe 'tabedit ' . expand(pathbat)<CR>
	noremap <leader>baat :exe 'tabedit ' . expand(pathbat2)<CR>
	noremap <leader>cp :exe 'tabedit ' . expand(pathcp)<CR>
	noremap <leader>sm :exe 'tabedit ' . expand(pathsm)<CR>
	noremap <leader>app :exe 'tabedit ' . expand(pathColor)<CR>
	noremap <leader>ab :exe 'tabedit ' . expand(pathAbbr)<CR>
"}}}

"{{{ UltiSnips Settings
	let g:UltiSnipsExpandTrigger="<tab>"
	let g:UltiSnipsJumpForwardTrigger="<tab>"
	let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
	let g:UltiSnipsSnippetDirectories=["UltiSnips","snips"]
	let g:UltiSnipsSnippetsDir=pathSnips
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
		nnoremap K :vimgrep! /<C-R><C-W>/gj *.in<CR>:cw<CR>
	"Search in Dir and sub directories for word under Cursor in ALL FILES
		"map <F4> :execute "vimgrep /". expand("<cword>") . "/gj **"<Bar> cw<CR>

	"same as above but for some extension Only...
		map <F4> :execute "vimgrep /". expand("<cword>") . "/gj *.in"<Bar> cw<CR>

	"Search for word under cursor in same file.... Same as / searching....(* or #)
	"is preferred
		command! GREP :execute 'vimgrep /'.expand('<cword>').'/gj '.expand('%') | copen

	"{{{GREP settings
		let Grep_Path=expand(pathGrep).'\grep.exe'
		let Fgrep_Path=expand(pathGrep).'\fgrep.exe'
		let Egrep_Path=expand(pathGrep).'\egrep.exe'
		let Agrep_Path=expand(pathGrep).'\agrep.exe'
		let Grep_Default_Filelist='*.in *.mac *.out'
		let Grep_Default_Options = '-i' 
		nnoremap <leader>spc :Grep sp.*case *.in *.mac *.out <CR>
	"}}}

"}}}

"{{{ Session Settings
	let SessionLoad=1
	"set ssop=buffers,tabpages,winsize,curdir
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
		nnoremap +-+ <C-w>o
		nnoremap +- <C-w>=
		nnoremap -+ <C-w>c
"}}}

"{{{ IMPORTANT NOTES

	"{{{VIM
		"1. :changes - to view changes
		"2. :gv - reselect last selection
		"3. # - Search words under Cursor backwards
		"4. * - Search words under Cursor forwards
		"5. :%s/pattern//gn - count number of occurences of pattern
		"6. To search and replace in selection
			"press :, selection symbol auto appears then press s/pattern/replacement/gc
		"7. :g; to go to last edit position, mapped to g-
		"8. gi command switches Vim to Insert mode and places cursor in the same position as where Insert mode was stopped last time.
		"9. byw - yank word under cursor
		"10. viw - select word under cursor
		"11. :ve - to see version Information
		"12. :argdo %s/file:\/\/\/.\\/file: /gc - Replace in all buffers.... SEE 19
		"13. :sp filename for a horizontal split
				":vsp filename or :vs filename for a vertical split
				"If no filename give same file opens
		"14. :%s/.\{80}/&\r/g - New line after 80 charachters
		"							- &\r means Match and New Line
		"15. zj - move down to top of next fold
						"zk	- move up to bottom of previous fold
		"16. :vimgrep patter **/*.ext - to search recursively in folder
		"18. to open all *.in Files
				":args *.in
				":tab all
		"19. to search and replace in all open buffers/args	, e means ignore error - match not found
				":bufdo %s/cmd/command/ge
				":add | update to save files automatically
				":arg *.cpp	All *.cpp files in current directory.
				":argadd *.h	And all *.h files.
				":arg	Optional: Display the current arglist.
				":argdo %s/pattern/replace/ge | update	Search and replace in all files in arglist. - | update to save the files

					":%s#\($\n\s*\)\+\%$##
					"Note that this removes all trailing lines that contain only whitespace. To remove only truly "empty"lines, remove the \s* from the above command.
						"Explanation:
						"\( ..... Start a match group
						"$\n ... Match a new line (end-of-line character followed by a carriage return).
						"\s* ... Allow any amount of whitespace on this new line
						"\) ..... End the match group
						"\+ ..... Allow any number of occurrences of this group (one or more).
						"\%$ ... Match the end of the file

					"SEARCH AND REPLACE
						":%s/foo/bar/g
							"Find each occurrence of 'foo' (in all lines), and replace it with 'bar'.
							"g means global: all occurence in a line.... when not used. only first occurence
						":s/foo/bar/g
							"Find each occurrence of 'foo' (in the current line only), and replace it with 'bar'.
						":%s/foo/bar/gc
							"Change each 'foo' to 'bar', but ask for confirmation first.
						":%s/\<foo\>/bar/gc
							"Change only whole words exactly matching 'foo' to 'bar'; ask for confirmation.
						":%s/foo/bar/gci
							"Change each 'foo' (case insensitive) to 'bar'; ask for confirmation.
							"This may be wanted after using :set noignorecase to make searches case sensitive (the default).
						":%s/foo/bar/gcI
						"Change each 'foo' (case sensitive) to 'bar'; ask for confirmation.
						"This may be wanted after using :set ignorecase to make searches case insensitive.

		"20. :mksession ~/mysession.vim		OR :mks
					":so{urce} ~/mysession.vim 

		"21. To close all TABS
				"Shortest/simplest/fastest way would be:
					":qa
				"To save work in all tabs and quit:
					":wqa

		"22. :ls   for list of open buffers
				":bp previous buffer
				":bn next buffer
				":bn (n a number) move to n'th buffer
				":b <filename-part>
				":b fileName : to switch to file
				":b# go to last visited file.... so switching easy

		"23	:scriptnames  -shows all loaded scripts
		 
		"24. Ctrl-W s and Ctrl-W v to split the current window horizontally and vertically. You can also use :split and :vertical split (:sp and :vs)

	"}}}

	"{{{OTHERS

		"17. Autocad Command: IMAGEFRAME

		"1. To use macros.xla: In excel: start-add-ins and add macros.xla

		"2. Replace with ^p to replace with new line. NOTEPAD++??

		"3. ren ???????????.jpg	????????1??.jpg :::replaces anything to 1 and third last position.

		"4. forfiles /m *.jpg /c "cmd /c ren @file prefix@file" 		:: adding prefix to file Name
				
				"Recursively rename file extensions
				"forfiles /S /M *.ext1 /C "cmd /c rename @file @fname.ext2"

				"Remove file extensions
				"forfiles /S /M *.ext /C "cmd /c rename @file @fname"

				"Add prefix to file names
				"forfiles /S /M *.jpg /C "cmd /c rename @file photo@file"

				"Handling names with white spaces
				"forfiles /M *.jpg /C "cmd /c rename @file \"@fname - pic.jpg\""

		"5. IMAGEFRAME command in AUTOCAD

		"6. Add suffix to File Name
				"for %a in (*.txt) do ren "%~a" "%~naThingsToAdd%~xa"




	"}}}

"}}}

"{{{ Still TO MANAGE

"Update VIMRC
noremap <leader>sv :exe 'source ' .expand(pathvrc)<CR>

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

nnoremap <leader>llt $
nnoremap <leader>lls ^

"REFRESH file : reload + go to end
nnoremap <F5> :e!<CR>G

noremap <leader>ntr :NERDTreeFind<cr>
noremap <leader>gm `

set guitablabel=\[%N\]\ %t\ %M
"Use [Num]gt to go to tab Number

"Map g- as an alias for g;
nnoremap g- g;

set nowrap		"don't wrap lines
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

nnoremap <F6> :GundoToggle<CR>

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

"execute current file in cmd
nnoremap ,run :!start %:p<CR>

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

"set splitbelow
"set splitright
set nohidden

"Set up the gui cursor to look nice
"set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

let g:bufExplorerSortBy='name'       " Sort by the buffer's name.
"autocmd BufEnter * :syntax sync fromstart

nnoremap <leader>fa [z
nnoremap <leader>fe ]z

"autocmd BufWinLeave *.* mkview!
"autocmd BufWinEnter *.* silent loadview

let username=$USERNAME
noremap <leader>desk :exe 'cd C:\Users\'.expand(username).'\Desktop'<CR>









"}}}

