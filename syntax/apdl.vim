" Vim syntax file
" Language:		APDL
" Maintainer:	Manfred Spraul <manfred@colorfullife.com>
" Last Change:	2003 Jan 24
" Version: 0.02
"
" Note: The support for abreviated commands is intentionally missing.
" 	Typical file names are *.ans and *.mac.
"
" TODO: 
" * Further parameter tests for bad params
" * line continuations for multiline commands: *msg, *vwrite, etc.
" * test with ansys:
"     whitespaces + labels
"     $ + labels
"     $ + comment
"     $ + multiline commands

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Common part for all syntax files:

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

syn match apdlAnything "^.*$" contained

"{{{ Numbers, allowing signs (both -, and +)

" Integer number.
syn match  apdlNumber		display "[+-]\=\<\d\+\>"

" Floating point number.
syn match  apdlFloat		display "[+-]\=\<\d\+\.\d+\>"

" Floating point number, starting with a dot.
syn match  apdlFloat		display "[+-]\=\<.\d+\>"

syn case ignore

"floating point number, with dot, optional exponent
syn match  apdlFloat	display "\<\d\+\.\d*\(e[-+]\=\d\+\)\=\>"

"floating point number, starting with a dot, optional exponent
syn match  apdlFloat	display "\.\d\+\(e[-+]\=\d\+\)\=\>"

"floating point number, without dot, with exponent
syn match  apdlFloat	display "\<\d\+e[-+]\=\d\+\>"

syn case match
"}}}

"{{{For Braces and Operators

	syn match Braces display '[{}()\[\]]'
	hi Braces guifg=red

	syntax match potionComment "\v#.*$"
	highlight link potionComment Comment

	syntax match potionOperator "\v/"
	syntax match potionOperator "\v\+"
	syntax match potionOperator "\v-"
	syntax match potionOperator "\v\?"
	syntax match potionOperator "\v\*\="
	syntax match potionOperator "\v/\="
	syntax match potionOperator "\v\+\="
	syntax match potionOperator "\v\="
	syntax match potionOperator "\v\%"

	highlight link potionOperator Operator
"}}}

" APDL specific part:
syn case ignore

"{{{ normal apdl commands

syn match apdlFunction display "a\>" contained
syn match apdlFunction display "aadd\>" contained
syn match apdlFunction display "aatt\>" contained
syn match apdlFunction display "\*abbr\>" contained
syn match apdlFunction display "abbres\>" contained
syn match apdlFunction display "abbsav\>" contained
syn match apdlFunction display "abs\>" contained
syn match apdlFunction display "accat\>" contained
syn match apdlFunction display "acel\>" contained
syn match apdlFunction display "aclear\>" contained
syn match apdlFunction display "adapt\>" contained
syn match apdlFunction display "add\>" contained
syn match apdlFunction display "addam\>" contained
syn match apdlFunction display "adele\>" contained
syn match apdlFunction display "adgl\>" contained
syn match apdlFunction display "adrag\>" contained
syn match apdlFunction display "aesize\>" contained
syn match apdlFunction display "afillt\>" contained
syn match apdlFunction display "aflist\>" contained
syn match apdlFunction display "afsurf\>" contained
syn match apdlFunction display "\*afun\>" contained
syn match apdlFunction display "agen\>" contained
syn match apdlFunction display "aglue\>" contained
syn match apdlFunction display "aina\>" contained
syn match apdlFunction display "ainp\>" contained
syn match apdlFunction display "ainv\>" contained
syn match apdlFunction display "al\>" contained
syn match apdlFunction display "alist\>" contained
syn match apdlFunction display "allsel\>" contained
syn match apdlFunction display "alpfill\>" contained
syn match apdlFunction display "alphad\>" contained
syn match apdlFunction display "amap\>" contained
syn match apdlFunction display "amesh\>" contained
syn match apdlFunction display "/an3d\>" contained
syn match apdlFunction display "ancntr\>" contained
syn match apdlFunction display "ancut\>" contained
syn match apdlFunction display "andata\>" contained
syn match apdlFunction display "andscl\>" contained
syn match apdlFunction display "andyna\>" contained
syn match apdlFunction display "/anfile\>" contained
syn match apdlFunction display "anflow\>" contained
syn match apdlFunction display "/angle\>" contained
syn match apdlFunction display "anharm\>" contained
syn match apdlFunction display "anim\>" contained
syn match apdlFunction display "anisos\>" contained
syn match apdlFunction display "anmode\>" contained
syn match apdlFunction display "/annot\>" contained
syn match apdlFunction display "anorm\>" contained
syn match apdlFunction display "antime\>" contained
syn match apdlFunction display "antype\>" contained
syn match apdlFunction display "/anum\>" contained
syn match apdlFunction display "aoffst\>" contained
syn match apdlFunction display "aovlap\>" contained
syn match apdlFunction display "aplot\>" contained
syn match apdlFunction display "append\>" contained
syn match apdlFunction display "aptn\>" contained
syn match apdlFunction display "arclen\>" contained
syn match apdlFunction display "arcollapse\>" contained
syn match apdlFunction display "arctrm\>" contained
syn match apdlFunction display "ardetach\>" contained
syn match apdlFunction display "areas\>" contained
syn match apdlFunction display "arefine\>" contained
syn match apdlFunction display "areverse\>" contained
syn match apdlFunction display "arfill\>" contained
syn match apdlFunction display "armerge\>" contained
syn match apdlFunction display "arotat\>" contained
syn match apdlFunction display "arscale\>" contained
syn match apdlFunction display "arsplit\>" contained
syn match apdlFunction display "arsym\>" contained
syn match apdlFunction display "asba\>" contained
syn match apdlFunction display "asbl\>" contained
syn match apdlFunction display "asbv\>" contained
syn match apdlFunction display "asbw\>" contained
syn match apdlFunction display "\*ask\>" contained
syn match apdlFunction display "askin\>" contained
syn match apdlFunction display "asll\>" contained
syn match apdlFunction display "aslv\>" contained
syn match apdlFunction display "/assign\>" contained
syn match apdlFunction display "asub\>" contained
syn match apdlFunction display "asum\>" contained
syn match apdlFunction display "atan\>" contained
syn match apdlFunction display "atran\>" contained
syn match apdlFunction display "atype\>" contained
syn match apdlFunction display "/auto\>" contained
syn match apdlFunction display "autots\>" contained
syn match apdlFunction display "/aux3\>" contained
syn match apdlFunction display "avprin\>" contained
syn match apdlFunction display "avres\>" contained
syn match apdlFunction display "/axlab\>" contained
syn match apdlFunction display "/batch\>" contained
syn match apdlFunction display "beam188\>" contained
syn match apdlFunction display "beam189\>" contained
syn match apdlFunction display "bellow\>" contained
syn match apdlFunction display "bend\>" contained
syn match apdlFunction display "betad\>" contained
syn match apdlFunction display "bf\>" contained
syn match apdlFunction display "bfa\>" contained
syn match apdlFunction display "bfadele\>" contained
syn match apdlFunction display "bfalist\>" contained
syn match apdlFunction display "bfcum\>" contained
syn match apdlFunction display "bfdele\>" contained
syn match apdlFunction display "bfe\>" contained
syn match apdlFunction display "bfecum\>" contained
syn match apdlFunction display "bfedele\>" contained
syn match apdlFunction display "bfelist\>" contained
syn match apdlFunction display "bfescal\>" contained
syn match apdlFunction display "bfint\>" contained
syn match apdlFunction display "bfk\>" contained
syn match apdlFunction display "bfkdele\>" contained
syn match apdlFunction display "bfklist\>" contained
syn match apdlFunction display "bfl\>" contained
syn match apdlFunction display "bfldele\>" contained
syn match apdlFunction display "bflist\>" contained
syn match apdlFunction display "bfllist\>" contained
syn match apdlFunction display "bfscale\>" contained
syn match apdlFunction display "bftran\>" contained
syn match apdlFunction display "bfunif\>" contained
syn match apdlFunction display "bfv\>" contained
syn match apdlFunction display "bfvdele\>" contained
syn match apdlFunction display "bfvlist\>" contained
syn match apdlFunction display "bioopt\>" contained
syn match apdlFunction display "biot\>" contained
syn match apdlFunction display "blc4\>" contained
syn match apdlFunction display "blc5\>" contained
syn match apdlFunction display "block\>" contained
syn match apdlFunction display "bool\>" contained
syn match apdlFunction display "boptn\>" contained
syn match apdlFunction display "branch\>" contained
syn match apdlFunction display "bsplin\>" contained
syn match apdlFunction display "btol\>" contained
syn match apdlFunction display "bucopt\>" contained
syn match apdlFunction display "c\*\*\*\>" contained
syn match apdlFunction display "calc\>" contained
syn match apdlFunction display "cbdof\>" contained
syn match apdlFunction display "cdread\>" contained
syn match apdlFunction display "cdwrite\>" contained
syn match apdlFunction display "ce\>" contained
syn match apdlFunction display "cecmod\>" contained
syn match apdlFunction display "cecyc\>" contained
syn match apdlFunction display "cedele\>" contained
syn match apdlFunction display "ceintf\>" contained
syn match apdlFunction display "celist\>" contained
syn match apdlFunction display "center\>" contained
syn match apdlFunction display "ceqn\>" contained
syn match apdlFunction display "cerig\>" contained
syn match apdlFunction display "cesgen\>" contained
syn match apdlFunction display "cfact\>" contained
syn match apdlFunction display "\*cfclos\>" contained
syn match apdlFunction display "\*cfopen\>" contained
syn match apdlFunction display "\*cfwrite\>" contained
syn match apdlFunction display "cgloc\>" contained
syn match apdlFunction display "cgomga\>" contained
syn match apdlFunction display "check\>" contained
syn match apdlFunction display "chkmsh\>" contained
syn match apdlFunction display "circle\>" contained
syn match apdlFunction display "/clabel\>" contained
syn match apdlFunction display "/clear\>" contained
syn match apdlFunction display "clocal\>" contained
syn match apdlFunction display "/clog\>" contained
syn match apdlFunction display "clog\>" contained
syn match apdlFunction display "clrmshln\>" contained
syn match apdlFunction display "cm\>" contained
syn match apdlFunction display "/cmap\>" contained
syn match apdlFunction display "cmatrix\>" contained
syn match apdlFunction display "cmdele\>" contained
syn match apdlFunction display "cmedit\>" contained
syn match apdlFunction display "cmgrp\>" contained
syn match apdlFunction display "cmlist\>" contained
syn match apdlFunction display "cmplot\>" contained
syn match apdlFunction display "cnvtol\>" contained
syn match apdlFunction display "/color\>" contained
syn match apdlFunction display "/com\>" contained
syn match apdlFunction display "compress\>" contained
syn match apdlFunction display "con4\>" contained
syn match apdlFunction display "cone\>" contained
syn match apdlFunction display "/config\>" contained
syn match apdlFunction display "conjug\>" contained
syn match apdlFunction display "/contour\>" contained
syn match apdlFunction display "/copy\>" contained
syn match apdlFunction display "couple\>" contained
syn match apdlFunction display "coval\>" contained
syn match apdlFunction display "cp\>" contained
syn match apdlFunction display "cpcyc\>" contained
syn match apdlFunction display "cpdele\>" contained
syn match apdlFunction display "cpintf\>" contained
syn match apdlFunction display "/cplane\>" contained
syn match apdlFunction display "cplgen\>" contained
syn match apdlFunction display "cplist\>" contained
syn match apdlFunction display "cpngen\>" contained
syn match apdlFunction display "cpsgen\>" contained
syn match apdlFunction display "cqc\>" contained
syn match apdlFunction display "crplim\>" contained
syn match apdlFunction display "cs\>" contained
syn match apdlFunction display "cscir\>" contained
syn match apdlFunction display "csdele\>" contained
syn match apdlFunction display "cskp\>" contained
syn match apdlFunction display "cslist\>" contained
syn match apdlFunction display "cswpla\>" contained
syn match apdlFunction display "csys\>" contained
syn match apdlFunction display "/ctype\>" contained
syn match apdlFunction display "curr2d\>" contained
syn match apdlFunction display "cutcontrol\>" contained
syn match apdlFunction display "/cval\>" contained
syn match apdlFunction display "cvar\>" contained
syn match apdlFunction display "cycgen\>" contained
syn match apdlFunction display "cycphase\>" contained
syn match apdlFunction display "cycsol\>" contained
syn match apdlFunction display "cyl4\>" contained
syn match apdlFunction display "cyl5\>" contained
syn match apdlFunction display "cylind\>" contained
syn match apdlFunction display "d\>" contained
syn match apdlFunction display "da\>" contained
syn match apdlFunction display "dadele\>" contained
syn match apdlFunction display "dalist\>" contained
syn match apdlFunction display "damorph\>" contained
syn match apdlFunction display "data\>" contained
syn match apdlFunction display "datadef\>" contained
syn match apdlFunction display "dcgomg\>" contained
syn match apdlFunction display "dcum\>" contained
syn match apdlFunction display "ddele\>" contained
syn match apdlFunction display "ddsopt\>" contained
syn match apdlFunction display "deact\>" contained
syn match apdlFunction display "define\>" contained
syn match apdlFunction display "\*del\>" contained
syn match apdlFunction display "/delete\>" contained
syn match apdlFunction display "delete\>" contained
syn match apdlFunction display "deltim\>" contained
syn match apdlFunction display "demorph\>" contained
syn match apdlFunction display "deriv\>" contained
syn match apdlFunction display "desize\>" contained
syn match apdlFunction display "desol\>" contained
syn match apdlFunction display "detab\>" contained
syn match apdlFunction display "/devdisp\>" contained
syn match apdlFunction display "/device\>" contained
syn match apdlFunction display "dig\>" contained
syn match apdlFunction display "digit\>" contained
syn match apdlFunction display "\*dim\>" contained
syn match apdlFunction display "display\>" contained
syn match apdlFunction display "/dist\>" contained
syn match apdlFunction display "dk\>" contained
syn match apdlFunction display "dkdele\>" contained
syn match apdlFunction display "dklist\>" contained
syn match apdlFunction display "dl\>" contained
syn match apdlFunction display "dldele\>" contained
syn match apdlFunction display "dlist\>" contained
syn match apdlFunction display "dllist\>" contained
syn match apdlFunction display "dmove\>" contained
syn match apdlFunction display "dmprat\>" contained
syn match apdlFunction display "dnsol\>" contained
syn match apdlFunction display "dof\>" contained
syn match apdlFunction display "dofsel\>" contained
syn match apdlFunction display "domega\>" contained
syn match apdlFunction display "/dscale\>" contained
syn match apdlFunction display "dscale\>" contained
syn match apdlFunction display "dset\>" contained
syn match apdlFunction display "dsum\>" contained
syn match apdlFunction display "dsurf\>" contained
syn match apdlFunction display "dsym\>" contained
syn match apdlFunction display "dsys\>" contained
syn match apdlFunction display "dtran\>" contained
syn match apdlFunction display "dump\>" contained
syn match apdlFunction display "/dv3d\>" contained
syn match apdlFunction display "dvmorph\>" contained
syn match apdlFunction display "dynopt\>" contained
syn match apdlFunction display "e\>" contained
syn match apdlFunction display "ealive\>" contained
syn match apdlFunction display "edadapt\>" contained
syn match apdlFunction display "edasmp\>" contained
syn match apdlFunction display "edbound\>" contained
syn match apdlFunction display "edbvis\>" contained
syn match apdlFunction display "edbx\>" contained
syn match apdlFunction display "edcadapt\>" contained
syn match apdlFunction display "edcgen\>" contained
syn match apdlFunction display "edclist\>" contained
syn match apdlFunction display "edcontact\>" contained
syn match apdlFunction display "edcpu\>" contained
syn match apdlFunction display "edcrb\>" contained
syn match apdlFunction display "edcsc\>" contained
syn match apdlFunction display "edcts\>" contained
syn match apdlFunction display "edcurve\>" contained
syn match apdlFunction display "eddamp\>" contained
syn match apdlFunction display "eddc\>" contained
syn match apdlFunction display "eddrelax\>" contained
syn match apdlFunction display "eddump\>" contained
syn match apdlFunction display "edele\>" contained
syn match apdlFunction display "edenergy\>" contained
syn match apdlFunction display "edfplot\>" contained
syn match apdlFunction display "/edge\>" contained
syn match apdlFunction display "edhgls\>" contained
syn match apdlFunction display "edhist\>" contained
syn match apdlFunction display "edhtime\>" contained
syn match apdlFunction display "edint\>" contained
syn match apdlFunction display "edipart\>" contained
syn match apdlFunction display "edlcs\>" contained
syn match apdlFunction display "edload\>" contained
syn match apdlFunction display "edmp\>" contained
syn match apdlFunction display "ednb\>" contained
syn match apdlFunction display "edndtsd\>" contained
syn match apdlFunction display "ednrot\>" contained
syn match apdlFunction display "edopt\>" contained
syn match apdlFunction display "edout\>" contained
syn match apdlFunction display "edpart\>" contained
syn match apdlFunction display "edpc\>" contained
syn match apdlFunction display "edpl\>" contained
syn match apdlFunction display "edrc\>" contained
syn match apdlFunction display "edrd\>" contained
syn match apdlFunction display "edread\>" contained
syn match apdlFunction display "edri\>" contained
syn match apdlFunction display "edrst\>" contained
syn match apdlFunction display "edrun\>" contained
syn match apdlFunction display "edshell\>" contained
syn match apdlFunction display "edsolv\>" contained
syn match apdlFunction display "edsp\>" contained
syn match apdlFunction display "edstart\>" contained
syn match apdlFunction display "edterm\>" contained
syn match apdlFunction display "edtp\>" contained
syn match apdlFunction display "edvel\>" contained
syn match apdlFunction display "edweld\>" contained
syn match apdlFunction display "edwrite\>" contained
syn match apdlFunction display "/efacet\>" contained
syn match apdlFunction display "egen\>" contained
syn match apdlFunction display "eintf\>" contained
syn match apdlFunction display "ekill\>" contained
syn match apdlFunction display "elem\>" contained
syn match apdlFunction display "elist\>" contained
syn match apdlFunction display "emagerr\>" contained
syn match apdlFunction display "emf\>" contained
syn match apdlFunction display "emid\>" contained
syn match apdlFunction display "emis\>" contained
syn match apdlFunction display "emodif\>" contained
syn match apdlFunction display "emore\>" contained
syn match apdlFunction display "emsym\>" contained
syn match apdlFunction display "emtgen\>" contained
syn match apdlFunction display "emunit\>" contained
syn match apdlFunction display "en\>" contained
syn match apdlFunction display "engen\>" contained
syn match apdlFunction display "enorm\>" contained
syn match apdlFunction display "ensym\>" contained
syn match apdlFunction display "eorient\>" contained
syn match apdlFunction display "eplot\>" contained
syn match apdlFunction display "eqslv\>" contained
syn match apdlFunction display "/erase\>" contained
syn match apdlFunction display "erase\>" contained
syn match apdlFunction display "eread\>" contained
syn match apdlFunction display "erefine\>" contained
syn match apdlFunction display "eresx\>" contained
syn match apdlFunction display "ernorm\>" contained
syn match apdlFunction display "errang\>" contained
syn match apdlFunction display "/eshape\>" contained
syn match apdlFunction display "esize\>" contained
syn match apdlFunction display "esla\>" contained
syn match apdlFunction display "esll\>" contained
syn match apdlFunction display "esln\>" contained
syn match apdlFunction display "eslv\>" contained
syn match apdlFunction display "esol\>" contained
syn match apdlFunction display "esort\>" contained
syn match apdlFunction display "essolv\>" contained
syn match apdlFunction display "estif\>" contained
syn match apdlFunction display "esurf\>" contained
syn match apdlFunction display "esym\>" contained
syn match apdlFunction display "esys\>" contained
syn match apdlFunction display "et\>" contained
syn match apdlFunction display "etable\>" contained
syn match apdlFunction display "etchg\>" contained
syn match apdlFunction display "etdele\>" contained
syn match apdlFunction display "etlist\>" contained
syn match apdlFunction display "etype\>" contained
syn match apdlFunction display "eusort\>" contained
syn match apdlFunction display "\*eval\>" contained
syn match apdlFunction display "ewrite\>" contained
syn match apdlFunction display "exp\>" contained
syn match apdlFunction display "/expand\>" contained
syn match apdlFunction display "expand\>" contained
syn match apdlFunction display "expass\>" contained
syn match apdlFunction display "expsol\>" contained
syn match apdlFunction display "extopt\>" contained
syn match apdlFunction display "extrem\>" contained
syn match apdlFunction display "f\>" contained
syn match apdlFunction display "/facet\>" contained
syn match apdlFunction display "fatigue\>" contained
syn match apdlFunction display "fcum\>" contained
syn match apdlFunction display "/fdele\>" contained
syn match apdlFunction display "fdele\>" contained
syn match apdlFunction display "fe\>" contained
syn match apdlFunction display "febody\>" contained
syn match apdlFunction display "fecons\>" contained
syn match apdlFunction display "fefor\>" contained
syn match apdlFunction display "felist\>" contained
syn match apdlFunction display "fesurf\>" contained
syn match apdlFunction display "file\>" contained
syn match apdlFunction display "fileaux2\>" contained
syn match apdlFunction display "fileaux3\>" contained
syn match apdlFunction display "filedisp\>" contained
syn match apdlFunction display "fill\>" contained
syn match apdlFunction display "filldata\>" contained
syn match apdlFunction display "/filname\>" contained
syn match apdlFunction display "fitem\>" contained
syn match apdlFunction display "fk\>" contained
syn match apdlFunction display "fkdele\>" contained
syn match apdlFunction display "fklist\>" contained
syn match apdlFunction display "fl\>" contained
syn match apdlFunction display "flange\>" contained
syn match apdlFunction display "fldata\>" contained
syn match apdlFunction display "fldata1\>" contained
syn match apdlFunction display "fldata10\>" contained
syn match apdlFunction display "fldata11\>" contained
syn match apdlFunction display "fldata12\>" contained
syn match apdlFunction display "fldata13\>" contained
syn match apdlFunction display "fldata14\>" contained
syn match apdlFunction display "fldata15\>" contained
syn match apdlFunction display "fldata16\>" contained
syn match apdlFunction display "fldata17\>" contained
syn match apdlFunction display "fldata18\>" contained
syn match apdlFunction display "fldata19\>" contained
syn match apdlFunction display "fldata2\>" contained
syn match apdlFunction display "fldata20\>" contained
syn match apdlFunction display "fldata20a\>" contained
syn match apdlFunction display "fldata21\>" contained
syn match apdlFunction display "fldata22\>" contained
syn match apdlFunction display "fldata23\>" contained
syn match apdlFunction display "fldata24\>" contained
syn match apdlFunction display "fldata24a\>" contained
syn match apdlFunction display "fldata24b\>" contained
syn match apdlFunction display "fldata24c\>" contained
syn match apdlFunction display "fldata24d\>" contained
syn match apdlFunction display "fldata25\>" contained
syn match apdlFunction display "fldata26\>" contained
syn match apdlFunction display "fldata27\>" contained
syn match apdlFunction display "fldata28\>" contained
syn match apdlFunction display "fldata29\>" contained
syn match apdlFunction display "fldata3\>" contained
syn match apdlFunction display "fldata30\>" contained
syn match apdlFunction display "fldata31\>" contained
syn match apdlFunction display "fldata32\>" contained
syn match apdlFunction display "fldata33\>" contained
syn match apdlFunction display "fldata34\>" contained
syn match apdlFunction display "fldata35\>" contained
syn match apdlFunction display "fldata36\>" contained
syn match apdlFunction display "fldata4\>" contained
syn match apdlFunction display "fldata4a\>" contained
syn match apdlFunction display "fldata5\>" contained
syn match apdlFunction display "fldata6\>" contained
syn match apdlFunction display "fldata7\>" contained
syn match apdlFunction display "fldata8\>" contained
syn match apdlFunction display "fldata9\>" contained
syn match apdlFunction display "flist\>" contained
syn match apdlFunction display "fllist\>" contained
syn match apdlFunction display "flocheck\>" contained
syn match apdlFunction display "flotran\>" contained
syn match apdlFunction display "flread\>" contained
syn match apdlFunction display "flst\>" contained
syn match apdlFunction display "fluxv\>" contained
syn match apdlFunction display "fmagbc\>" contained
syn match apdlFunction display "fmagsum\>" contained
syn match apdlFunction display "/focus\>" contained
syn match apdlFunction display "for2d\>" contained
syn match apdlFunction display "force\>" contained
syn match apdlFunction display "form\>" contained
syn match apdlFunction display "/format\>" contained
syn match apdlFunction display "fp\>" contained
syn match apdlFunction display "fplist\>" contained
syn match apdlFunction display "freq\>" contained
syn match apdlFunction display "fs\>" contained
syn match apdlFunction display "fscale\>" contained
syn match apdlFunction display "fsdele\>" contained
syn match apdlFunction display "fslist\>" contained
syn match apdlFunction display "fsnode\>" contained
syn match apdlFunction display "fsplot\>" contained
syn match apdlFunction display "fssect\>" contained
syn match apdlFunction display "fsum\>" contained
syn match apdlFunction display "ftcalc\>" contained
syn match apdlFunction display "ftran\>" contained
syn match apdlFunction display "ftsize\>" contained
syn match apdlFunction display "ftwrite\>" contained
syn match apdlFunction display "/ftype\>" contained
syn match apdlFunction display "fvmesh\>" contained
syn match apdlFunction display "gap\>" contained
syn match apdlFunction display "gapf\>" contained
syn match apdlFunction display "gapfinish\>" contained
syn match apdlFunction display "gaplist\>" contained
syn match apdlFunction display "gapmerge\>" contained
syn match apdlFunction display "gapopt\>" contained
syn match apdlFunction display "gapplot\>" contained
syn match apdlFunction display "gauge\>" contained
syn match apdlFunction display "gcgen\>" contained
syn match apdlFunction display "/gcmd\>" contained
syn match apdlFunction display "genopt\>" contained
syn match apdlFunction display "geom\>" contained
syn match apdlFunction display "geometry\>" contained
syn match apdlFunction display "\*get\>" contained
syn match apdlFunction display "/gfile\>" contained
syn match apdlFunction display "/gformat\>" contained
syn match apdlFunction display "/gline\>" contained
syn match apdlFunction display "/go\>" contained
syn match apdlFunction display "\*go\>" contained
syn match apdlFunction display "/golist\>" contained
syn match apdlFunction display "/gopr\>" contained
syn match apdlFunction display "gp\>" contained
syn match apdlFunction display "gpdele\>" contained
syn match apdlFunction display "gplist\>" contained
syn match apdlFunction display "gplot\>" contained
syn match apdlFunction display "/graphics\>" contained
syn match apdlFunction display "/gresume\>" contained
syn match apdlFunction display "/grid\>" contained
syn match apdlFunction display "/gropt\>" contained
syn match apdlFunction display "grp\>" contained
syn match apdlFunction display "/grtyp\>" contained
syn match apdlFunction display "/gsave\>" contained
syn match apdlFunction display "/gst\>" contained
syn match apdlFunction display "gsum\>" contained
syn match apdlFunction display "/gthk\>" contained
syn match apdlFunction display "harfrq\>" contained
syn match apdlFunction display "/header\>" contained
syn match apdlFunction display "help\>" contained
syn match apdlFunction display "helpdisp\>" contained
syn match apdlFunction display "hemiopt\>" contained
syn match apdlFunction display "hfeigopt\>" contained
syn match apdlFunction display "hfnear\>" contained
syn match apdlFunction display "hfport\>" contained
syn match apdlFunction display "hfscat\>" contained
syn match apdlFunction display "hfsweep\>" contained
syn match apdlFunction display "hfsym\>" contained
syn match apdlFunction display "hmagsolv\>" contained
syn match apdlFunction display "hpgl\>" contained
syn match apdlFunction display "hptcreate\>" contained
syn match apdlFunction display "hptdelete\>" contained
syn match apdlFunction display "hrexp\>" contained
syn match apdlFunction display "hropt\>" contained
syn match apdlFunction display "hrout\>" contained
syn match apdlFunction display "ic\>" contained
syn match apdlFunction display "icdele\>" contained
syn match apdlFunction display "ice\>" contained
syn match apdlFunction display "icedele\>" contained
syn match apdlFunction display "icelist\>" contained
syn match apdlFunction display "iclist\>" contained
syn match apdlFunction display "/iclwid\>" contained
syn match apdlFunction display "/icscale\>" contained
syn match apdlFunction display "icvfrc\>" contained
syn match apdlFunction display "igesin\>" contained
syn match apdlFunction display "igesout\>" contained
syn match apdlFunction display "imagin\>" contained
syn match apdlFunction display "immed\>" contained
syn match apdlFunction display "impd\>" contained
syn match apdlFunction display "/input\>" contained
syn match apdlFunction display "inres\>" contained
syn match apdlFunction display "inrtia\>" contained
syn match apdlFunction display "int1\>" contained
syn match apdlFunction display "intsrf\>" contained
syn match apdlFunction display "ioptn\>" contained
syn match apdlFunction display "irlf\>" contained
syn match apdlFunction display "irlist\>" contained
syn match apdlFunction display "isfile\>" contained
syn match apdlFunction display "jpeg\>" contained
syn match apdlFunction display "k\>" contained
syn match apdlFunction display "katt\>" contained
syn match apdlFunction display "kbc\>" contained
syn match apdlFunction display "kbetw\>" contained
syn match apdlFunction display "kcalc\>" contained
syn match apdlFunction display "kcenter\>" contained
syn match apdlFunction display "kclear\>" contained
syn match apdlFunction display "kdele\>" contained
syn match apdlFunction display "kdist\>" contained
syn match apdlFunction display "kesize\>" contained
syn match apdlFunction display "keyopt\>" contained
syn match apdlFunction display "keypts\>" contained
syn match apdlFunction display "keyw\>" contained
syn match apdlFunction display "kfill\>" contained
syn match apdlFunction display "kgen\>" contained
syn match apdlFunction display "kl\>" contained
syn match apdlFunction display "klist\>" contained
syn match apdlFunction display "kmesh\>" contained
syn match apdlFunction display "kmodif\>" contained
syn match apdlFunction display "kmove\>" contained
syn match apdlFunction display "knode\>" contained
syn match apdlFunction display "kplot\>" contained
syn match apdlFunction display "kpscale\>" contained
syn match apdlFunction display "krefine\>" contained
syn match apdlFunction display "kscale\>" contained
syn match apdlFunction display "kscon\>" contained
syn match apdlFunction display "ksll\>" contained
syn match apdlFunction display "ksln\>" contained
syn match apdlFunction display "ksum\>" contained
syn match apdlFunction display "ksymm\>" contained
syn match apdlFunction display "ktran\>" contained
syn match apdlFunction display "kuse\>" contained
syn match apdlFunction display "kwpave\>" contained
syn match apdlFunction display "kwplan\>" contained
syn match apdlFunction display "l\>" contained
syn match apdlFunction display "l2ang\>" contained
syn match apdlFunction display "l2tan\>" contained
syn match apdlFunction display "lang\>" contained
syn match apdlFunction display "/larc\>" contained
syn match apdlFunction display "larc\>" contained
syn match apdlFunction display "larea\>" contained
syn match apdlFunction display "large\>" contained
syn match apdlFunction display "latt\>" contained
syn match apdlFunction display "layer\>" contained
syn match apdlFunction display "layerp26\>" contained
syn match apdlFunction display "laylist\>" contained
syn match apdlFunction display "layplot\>" contained
syn match apdlFunction display "lcabs\>" contained
syn match apdlFunction display "lcase\>" contained
syn match apdlFunction display "lccalc\>" contained
syn match apdlFunction display "lccat\>" contained
syn match apdlFunction display "lcdef\>" contained
syn match apdlFunction display "lcfact\>" contained
syn match apdlFunction display "lcfile\>" contained
syn match apdlFunction display "lclear\>" contained
syn match apdlFunction display "lcomb\>" contained
syn match apdlFunction display "lcoper\>" contained
syn match apdlFunction display "lcsel\>" contained
syn match apdlFunction display "lcsl\>" contained
syn match apdlFunction display "lcsum\>" contained
syn match apdlFunction display "lcwrite\>" contained
syn match apdlFunction display "lczero\>" contained
syn match apdlFunction display "ldele\>" contained
syn match apdlFunction display "ldiv\>" contained
syn match apdlFunction display "ldrag\>" contained
syn match apdlFunction display "ldread\>" contained
syn match apdlFunction display "lesize\>" contained
syn match apdlFunction display "lextnd\>" contained
syn match apdlFunction display "lfillt\>" contained
syn match apdlFunction display "lfsurf\>" contained
syn match apdlFunction display "lgen\>" contained
syn match apdlFunction display "lglue\>" contained
syn match apdlFunction display "lgwrite\>" contained
syn match apdlFunction display "/light\>" contained
syn match apdlFunction display "lina\>" contained
syn match apdlFunction display "/line\>" contained
syn match apdlFunction display "line\>" contained
syn match apdlFunction display "lines\>" contained
syn match apdlFunction display "linl\>" contained
syn match apdlFunction display "linp\>" contained
syn match apdlFunction display "linv\>" contained
syn match apdlFunction display "\*list\>" contained
syn match apdlFunction display "list\>" contained
syn match apdlFunction display "llist\>" contained
syn match apdlFunction display "lmatrix\>" contained
syn match apdlFunction display "lmesh\>" contained
syn match apdlFunction display "lncollapse\>" contained
syn match apdlFunction display "lndetach\>" contained
syn match apdlFunction display "lnfill\>" contained
syn match apdlFunction display "lnmerge\>" contained
syn match apdlFunction display "lnsplit\>" contained
syn match apdlFunction display "lnsrch\>" contained
syn match apdlFunction display "local\>" contained
syn match apdlFunction display "lovlap\>" contained
syn match apdlFunction display "lplot\>" contained
syn match apdlFunction display "lptn\>" contained
syn match apdlFunction display "lrefine\>" contained
syn match apdlFunction display "lreverse\>" contained
syn match apdlFunction display "lrotat\>" contained
syn match apdlFunction display "lsba\>" contained
syn match apdlFunction display "lsbl\>" contained
syn match apdlFunction display "lsbv\>" contained
syn match apdlFunction display "lsbw\>" contained
syn match apdlFunction display "lsclear\>" contained
syn match apdlFunction display "lsdele\>" contained
syn match apdlFunction display "lsla\>" contained
syn match apdlFunction display "lslk\>" contained
syn match apdlFunction display "lsoper\>" contained
syn match apdlFunction display "/lspec\>" contained
syn match apdlFunction display "lsread\>" contained
syn match apdlFunction display "lsscale\>" contained
syn match apdlFunction display "lssolve\>" contained
syn match apdlFunction display "lstr\>" contained
syn match apdlFunction display "lsum\>" contained
syn match apdlFunction display "lswrite\>" contained
syn match apdlFunction display "/lsymbol\>" contained
syn match apdlFunction display "lsymm\>" contained
syn match apdlFunction display "ltan\>" contained
syn match apdlFunction display "ltran\>" contained
syn match apdlFunction display "lumpm\>" contained
syn match apdlFunction display "lvscale\>" contained
syn match apdlFunction display "lwplan\>" contained
syn match apdlFunction display "m\>" contained
syn match apdlFunction display "magopt\>" contained
syn match apdlFunction display "magsolv\>" contained
syn match apdlFunction display "master\>" contained
syn match apdlFunction display "mat\>" contained
syn match apdlFunction display "mater\>" contained
syn match apdlFunction display "mcheck\>" contained
syn match apdlFunction display "mdamp\>" contained
syn match apdlFunction display "mdele\>" contained
syn match apdlFunction display "memm\>" contained
syn match apdlFunction display "/menu\>" contained
syn match apdlFunction display "meshing\>" contained
syn match apdlFunction display "\*mfouri\>" contained
syn match apdlFunction display "\*mfun\>" contained
syn match apdlFunction display "mgen\>" contained
syn match apdlFunction display "miter\>" contained
syn match apdlFunction display "mlist\>" contained
syn match apdlFunction display "mmf\>" contained
syn match apdlFunction display "mode\>" contained
syn match apdlFunction display "modmsh\>" contained
syn match apdlFunction display "modopt\>" contained
syn match apdlFunction display "monitor\>" contained
syn match apdlFunction display "\*mooney\>" contained
syn match apdlFunction display "\*moper\>" contained
syn match apdlFunction display "mopt\>" contained
syn match apdlFunction display "move\>" contained
syn match apdlFunction display "mp\>" contained
syn match apdlFunction display "mpamod\>" contained
syn match apdlFunction display "mpchg\>" contained
syn match apdlFunction display "mpcopy\>" contained
syn match apdlFunction display "mpdata\>" contained
syn match apdlFunction display "mpdele\>" contained
syn match apdlFunction display "mpdres\>" contained
syn match apdlFunction display "/mplib\>" contained
syn match apdlFunction display "mplist\>" contained
syn match apdlFunction display "mpmod\>" contained
syn match apdlFunction display "mpplot\>" contained
syn match apdlFunction display "mpread\>" contained
syn match apdlFunction display "mprint\>" contained
syn match apdlFunction display "mptemp\>" contained
syn match apdlFunction display "mptgen\>" contained
syn match apdlFunction display "mptres\>" contained
syn match apdlFunction display "mpundo\>" contained
syn match apdlFunction display "mpwrite\>" contained
syn match apdlFunction display "/mrep\>" contained
syn match apdlFunction display "msadv\>" contained
syn match apdlFunction display "msave\>" contained
syn match apdlFunction display "mscap\>" contained
syn match apdlFunction display "msdata\>" contained
syn match apdlFunction display "mshape\>" contained
syn match apdlFunction display "mshcopy\>" contained
syn match apdlFunction display "mshkey\>" contained
syn match apdlFunction display "mshmid\>" contained
syn match apdlFunction display "mshpattern\>" contained
syn match apdlFunction display "msmeth\>" contained
syn match apdlFunction display "msmir\>" contained
syn match apdlFunction display "msnomf\>" contained
syn match apdlFunction display "msprop\>" contained
syn match apdlFunction display "msquad\>" contained
syn match apdlFunction display "msrelax\>" contained
syn match apdlFunction display "mssolu\>" contained
syn match apdlFunction display "msspec\>" contained
syn match apdlFunction display "/mstart\>" contained
syn match apdlFunction display "msterm\>" contained
syn match apdlFunction display "msvary\>" contained
syn match apdlFunction display "mxpand\>" contained
syn match apdlFunction display "n\>" contained
syn match apdlFunction display "nang\>" contained
syn match apdlFunction display "ncnv\>" contained
syn match apdlFunction display "ndele\>" contained
syn match apdlFunction display "ndist\>" contained
syn match apdlFunction display "ndsurf\>" contained
syn match apdlFunction display "neqit\>" contained
syn match apdlFunction display "/nerr\>" contained
syn match apdlFunction display "nforce\>" contained
syn match apdlFunction display "ngen\>" contained
syn match apdlFunction display "nkpt\>" contained
syn match apdlFunction display "nlgeom\>" contained
syn match apdlFunction display "nlist\>" contained
syn match apdlFunction display "nlog\>" contained
syn match apdlFunction display "nlopt\>" contained
syn match apdlFunction display "nmodif\>" contained
syn match apdlFunction display "nocolor\>" contained
syn match apdlFunction display "nodes\>" contained
syn match apdlFunction display "/noerase\>" contained
syn match apdlFunction display "/nolist\>" contained
syn match apdlFunction display "noorder\>" contained
syn match apdlFunction display "/nopr\>" contained
syn match apdlFunction display "/normal\>" contained
syn match apdlFunction display "nplot\>" contained
syn match apdlFunction display "nprint\>" contained
syn match apdlFunction display "nread\>" contained
syn match apdlFunction display "nrefine\>" contained
syn match apdlFunction display "nrlsum\>" contained
syn match apdlFunction display "nropt\>" contained
syn match apdlFunction display "nrotat\>" contained
syn match apdlFunction display "nrrang\>" contained
syn match apdlFunction display "nscale\>" contained

"syn match apdlFunction display "nsla\>" contained
"syn match apdlFunction display "nsle\>" contained
"syn match apdlFunction display "nslk\>" contained
"syn match apdlFunction display "nsll\>" contained
"syn match apdlFunction display "nslv\>" contained

syn match apdlFunction display "nsl\([aeklv]\)\?\>" contained

syn match apdlFunction display "nsmooth\>" contained
syn match apdlFunction display "nsol\>" contained
syn match apdlFunction display "nsort\>" contained
syn match apdlFunction display "nstore\>" contained
syn match apdlFunction display "nsubst\>" contained
syn match apdlFunction display "nsvr\>" contained
syn match apdlFunction display "nsym\>" contained
syn match apdlFunction display "/number\>" contained
syn match apdlFunction display "numcmp\>" contained
syn match apdlFunction display "numexp\>" contained
syn match apdlFunction display "nummrg\>" contained
syn match apdlFunction display "numoff\>" contained
syn match apdlFunction display "numstr\>" contained
syn match apdlFunction display "numvar\>" contained
syn match apdlFunction display "nusort\>" contained
syn match apdlFunction display "nwpave\>" contained
syn match apdlFunction display "nwplan\>" contained
syn match apdlFunction display "nwrite\>" contained
syn match apdlFunction display "omega\>" contained
syn match apdlFunction display "opadd\>" contained
syn match apdlFunction display "opanl\>" contained
syn match apdlFunction display "opclr\>" contained
syn match apdlFunction display "opdata\>" contained
syn match apdlFunction display "opdel\>" contained
syn match apdlFunction display "opeqn\>" contained
syn match apdlFunction display "operate\>" contained
syn match apdlFunction display "opexe\>" contained
syn match apdlFunction display "opfact\>" contained
syn match apdlFunction display "opfrst\>" contained
syn match apdlFunction display "opgrad\>" contained
syn match apdlFunction display "opkeep\>" contained
syn match apdlFunction display "oplfa\>" contained
syn match apdlFunction display "oplgr\>" contained
syn match apdlFunction display "oplist\>" contained
syn match apdlFunction display "oploop\>" contained
syn match apdlFunction display "oplsw\>" contained
syn match apdlFunction display "opmake\>" contained
syn match apdlFunction display "opncontrol\>" contained
syn match apdlFunction display "opprnt\>" contained
syn match apdlFunction display "oprand\>" contained
syn match apdlFunction display "opresu\>" contained
syn match apdlFunction display "oprfa\>" contained
syn match apdlFunction display "oprgr\>" contained
syn match apdlFunction display "oprsw\>" contained
syn match apdlFunction display "opsave\>" contained
syn match apdlFunction display "opsel\>" contained
syn match apdlFunction display "opsubp\>" contained
syn match apdlFunction display "opsweep\>" contained
syn match apdlFunction display "optype\>" contained
syn match apdlFunction display "opuser\>" contained
syn match apdlFunction display "opvar\>" contained
syn match apdlFunction display "outopt\>" contained
syn match apdlFunction display "outpr\>" contained
syn match apdlFunction display "/output\>" contained
syn match apdlFunction display "outres\>" contained
syn match apdlFunction display "padele\>" contained
syn match apdlFunction display "/page\>" contained
syn match apdlFunction display "paget\>" contained
syn match apdlFunction display "paput\>" contained
syn match apdlFunction display "parres\>" contained
syn match apdlFunction display "parsav\>" contained
syn match apdlFunction display "partsel\>" contained
syn match apdlFunction display "path\>" contained
syn match apdlFunction display "/pbc\>" contained
syn match apdlFunction display "/pbf\>" contained
syn match apdlFunction display "pcalc\>" contained
syn match apdlFunction display "pcirc\>" contained
syn match apdlFunction display "/pcircle\>" contained
syn match apdlFunction display "pconv\>" contained
syn match apdlFunction display "/pcopy\>" contained
syn match apdlFunction display "pcorro\>" contained
syn match apdlFunction display "pcross\>" contained
syn match apdlFunction display "pdanl\>" contained
syn match apdlFunction display "pdbbm\>" contained
syn match apdlFunction display "pdccd\>" contained
syn match apdlFunction display "pdcdf\>" contained
syn match apdlFunction display "pdclr\>" contained
syn match apdlFunction display "pdcmat\>" contained
syn match apdlFunction display "pdcorr\>" contained
syn match apdlFunction display "pddmcs\>" contained
syn match apdlFunction display "pdef\>" contained
syn match apdlFunction display "pdexe\>" contained
syn match apdlFunction display "pdhist\>" contained
syn match apdlFunction display "pdinqr\>" contained
syn match apdlFunction display "pdmeth\>" contained
syn match apdlFunction display "pdot\>" contained
syn match apdlFunction display "pdpinv\>" contained
syn match apdlFunction display "pdplot\>" contained
syn match apdlFunction display "pdprob\>" contained
syn match apdlFunction display "pdrag\>" contained
syn match apdlFunction display "pdresu\>" contained
syn match apdlFunction display "pdropt\>" contained
syn match apdlFunction display "/pds\>" contained
syn match apdlFunction display "pdsave\>" contained
syn match apdlFunction display "pdscat\>" contained
syn match apdlFunction display "pdsens\>" contained
syn match apdlFunction display "pdshis\>" contained
syn match apdlFunction display "pduser\>" contained
syn match apdlFunction display "pdvar\>" contained
syn match apdlFunction display "pdwrite\>" contained
syn match apdlFunction display "pemopts\>" contained
syn match apdlFunction display "perbc2d\>" contained
syn match apdlFunction display "pexclude\>" contained
syn match apdlFunction display "pfact\>" contained
syn match apdlFunction display "pfluid\>" contained
syn match apdlFunction display "pgap\>" contained
syn match apdlFunction display "physics\>" contained
syn match apdlFunction display "/pice\>" contained
syn match apdlFunction display "pinclude\>" contained
syn match apdlFunction display "pinsul\>" contained
syn match apdlFunction display "pipe\>" contained
syn match apdlFunction display "plconv\>" contained
syn match apdlFunction display "plcplx\>" contained
syn match apdlFunction display "plcrack\>" contained
syn match apdlFunction display "pldisp\>" contained
syn match apdlFunction display "plesol\>" contained
syn match apdlFunction display "pletab\>" contained
syn match apdlFunction display "plf2d\>" contained
syn match apdlFunction display "plhffar\>" contained
syn match apdlFunction display "plls\>" contained
syn match apdlFunction display "plnsol\>" contained
syn match apdlFunction display "/plopts\>" contained
syn match apdlFunction display "plot\>" contained
syn match apdlFunction display "plotting\>" contained
syn match apdlFunction display "plpagm\>" contained
syn match apdlFunction display "plpath\>" contained
syn match apdlFunction display "plsect\>" contained
syn match apdlFunction display "pltime\>" contained
syn match apdlFunction display "pltrac\>" contained
syn match apdlFunction display "plvar\>" contained
syn match apdlFunction display "plvaropt\>" contained
syn match apdlFunction display "plvect\>" contained
syn match apdlFunction display "plvfrc\>" contained
syn match apdlFunction display "plwave\>" contained
syn match apdlFunction display "/pmacro\>" contained
syn match apdlFunction display "pmap\>" contained
syn match apdlFunction display "/pmeth\>" contained
syn match apdlFunction display "pmeth\>" contained
syn match apdlFunction display "pmgtran\>" contained
syn match apdlFunction display "pmlopt\>" contained
syn match apdlFunction display "pmopts\>" contained
syn match apdlFunction display "/pmore\>" contained
syn match apdlFunction display "/pnum\>" contained
syn match apdlFunction display "point\>" contained
syn match apdlFunction display "poly\>" contained
syn match apdlFunction display "/polygon\>" contained
syn match apdlFunction display "popt\>" contained
syn match apdlFunction display "powerh\>" contained
syn match apdlFunction display "ppath\>" contained
syn match apdlFunction display "pplot\>" contained
syn match apdlFunction display "pprange\>" contained
syn match apdlFunction display "ppres\>" contained
syn match apdlFunction display "prange\>" contained
syn match apdlFunction display "prconv\>" contained
syn match apdlFunction display "prcplx\>" contained
syn match apdlFunction display "precision\>" contained
syn match apdlFunction display "pred\>" contained
syn match apdlFunction display "prerr\>" contained
syn match apdlFunction display "presol\>" contained
syn match apdlFunction display "pretab\>" contained
syn match apdlFunction display "prets179\>" contained
syn match apdlFunction display "prhffar\>" contained
syn match apdlFunction display "pri2\>" contained
syn match apdlFunction display "prim\>" contained
syn match apdlFunction display "print\>" contained
syn match apdlFunction display "prism\>" contained
syn match apdlFunction display "priter\>" contained
syn match apdlFunction display "prnld\>" contained
syn match apdlFunction display "prnsol\>" contained
syn match apdlFunction display "prod\>" contained
syn match apdlFunction display "prpath\>" contained
syn match apdlFunction display "prrsol\>" contained
syn match apdlFunction display "prsect\>" contained
syn match apdlFunction display "prtime\>" contained
syn match apdlFunction display "prvar\>" contained
syn match apdlFunction display "prvaropt\>" contained
syn match apdlFunction display "prvect\>" contained
syn match apdlFunction display "pscr\>" contained
syn match apdlFunction display "psdcom\>" contained
syn match apdlFunction display "psdfrq\>" contained
syn match apdlFunction display "psdgraph\>" contained
syn match apdlFunction display "psdres\>" contained
syn match apdlFunction display "psdspl\>" contained
syn match apdlFunction display "psdunit\>" contained
syn match apdlFunction display "psdval\>" contained
syn match apdlFunction display "psdwav\>" contained
syn match apdlFunction display "/psearch\>" contained
syn match apdlFunction display "/psf\>" contained
syn match apdlFunction display "psmesh\>" contained
syn match apdlFunction display "psolve\>" contained
syn match apdlFunction display "/pspec\>" contained
syn match apdlFunction display "pspec\>" contained
syn match apdlFunction display "psprng\>" contained
syn match apdlFunction display "/pstatus\>" contained
syn match apdlFunction display "pstres\>" contained
syn match apdlFunction display "/psymb\>" contained
syn match apdlFunction display "ptemp\>" contained
syn match apdlFunction display "ptxy\>" contained
syn match apdlFunction display "punit\>" contained
syn match apdlFunction display "pvect\>" contained
syn match apdlFunction display "/pwedge\>" contained
syn match apdlFunction display "qdval\>" contained
syn match apdlFunction display "qfact\>" contained
syn match apdlFunction display "qsopt\>" contained
syn match apdlFunction display "quad\>" contained
syn match apdlFunction display "quot\>" contained
syn match apdlFunction display "r\>" contained
syn match apdlFunction display "race\>" contained
syn match apdlFunction display "radopt\>" contained
syn match apdlFunction display "rall\>" contained
syn match apdlFunction display "rappnd\>" contained
syn match apdlFunction display "rate\>" contained
syn match apdlFunction display "/ratio\>" contained
syn match apdlFunction display "rbe3\>" contained
syn match apdlFunction display "rcon\>" contained
syn match apdlFunction display "rdele\>" contained
syn match apdlFunction display "real\>" contained
syn match apdlFunction display "realvar\>" contained
syn match apdlFunction display "rectng\>" contained
syn match apdlFunction display "reduce\>" contained
syn match apdlFunction display "reflcoef\>" contained
syn match apdlFunction display "/rename\>" contained
syn match apdlFunction display "reorder\>" contained
syn match apdlFunction display "/replot\>" contained
syn match apdlFunction display "rescontrol\>" contained
syn match apdlFunction display "/reset\>" contained
syn match apdlFunction display "reset\>" contained
syn match apdlFunction display "resp\>" contained
syn match apdlFunction display "resume\>" contained
syn match apdlFunction display "rexport\>" contained
syn match apdlFunction display "rfilsz\>" contained
syn match apdlFunction display "rforce\>" contained
syn match apdlFunction display "/rgb\>" contained
syn match apdlFunction display "rigid\>" contained
syn match apdlFunction display "rimport\>" contained
syn match apdlFunction display "riter\>" contained
syn match apdlFunction display "rlist\>" contained
syn match apdlFunction display "rmemry\>" contained
syn match apdlFunction display "rmodif\>" contained
syn match apdlFunction display "rmore\>" contained
syn match apdlFunction display "rock\>" contained
syn match apdlFunction display "rpoly\>" contained
syn match apdlFunction display "rpr4\>" contained
syn match apdlFunction display "rprism\>" contained
syn match apdlFunction display "rpsd\>" contained
syn match apdlFunction display "rsfit\>" contained
syn match apdlFunction display "rspeed\>" contained
syn match apdlFunction display "rsplot\>" contained
syn match apdlFunction display "rsprnt\>" contained
syn match apdlFunction display "rssims\>" contained
syn match apdlFunction display "rstat\>" contained
syn match apdlFunction display "rsys\>" contained
syn match apdlFunction display "rthick\>" contained
syn match apdlFunction display "rtimst\>" contained
syn match apdlFunction display "run\>" contained
syn match apdlFunction display "rwfrnt\>" contained
syn match apdlFunction display "sabs\>" contained
syn match apdlFunction display "sadd\>" contained
syn match apdlFunction display "sallow\>" contained
syn match apdlFunction display "sarplot\>" contained
syn match apdlFunction display "save\>" contained
syn match apdlFunction display "sbclist\>" contained
syn match apdlFunction display "sbctran\>" contained
syn match apdlFunction display "sdelete\>" contained
syn match apdlFunction display "se\>" contained
syn match apdlFunction display "secdata\>" contained
syn match apdlFunction display "secnum\>" contained
syn match apdlFunction display "secoffset\>" contained
syn match apdlFunction display "secplot\>" contained
syn match apdlFunction display "secread\>" contained
syn match apdlFunction display "sectype\>" contained
syn match apdlFunction display "secwrite\>" contained
syn match apdlFunction display "sed\>" contained
syn match apdlFunction display "sedlist\>" contained
syn match apdlFunction display "seexp\>" contained
syn match apdlFunction display "/seg\>" contained
syn match apdlFunction display "selist\>" contained
syn match apdlFunction display "selm\>" contained
syn match apdlFunction display "senergy\>" contained
syn match apdlFunction display "seopt\>" contained
syn match apdlFunction display "sesymm\>" contained
syn match apdlFunction display "\*set\>" contained
syn match apdlFunction display "set\>" contained
syn match apdlFunction display "setran\>" contained
syn match apdlFunction display "sexp\>" contained
syn match apdlFunction display "sf\>" contained
syn match apdlFunction display "sfa\>" contained
syn match apdlFunction display "sfact\>" contained
syn match apdlFunction display "sfadele\>" contained
syn match apdlFunction display "sfalist\>" contained
syn match apdlFunction display "sfbeam\>" contained
syn match apdlFunction display "sfcalc\>" contained
syn match apdlFunction display "sfcum\>" contained
syn match apdlFunction display "sfdele\>" contained
syn match apdlFunction display "sfe\>" contained
syn match apdlFunction display "sfedele\>" contained
syn match apdlFunction display "sfelist\>" contained
syn match apdlFunction display "sffun\>" contained
syn match apdlFunction display "sfgrad\>" contained
syn match apdlFunction display "sfl\>" contained
syn match apdlFunction display "sfldele\>" contained
syn match apdlFunction display "sflist\>" contained
syn match apdlFunction display "sfllist\>" contained
syn match apdlFunction display "sfscale\>" contained
syn match apdlFunction display "sftran\>" contained
syn match apdlFunction display "/shade\>" contained
syn match apdlFunction display "shell\>" contained
syn match apdlFunction display "/showdisp\>" contained
syn match apdlFunction display "/shrink\>" contained
syn match apdlFunction display "slist\>" contained
syn match apdlFunction display "slpplot\>" contained
syn match apdlFunction display "slsplot\>" contained
syn match apdlFunction display "small\>" contained
syn match apdlFunction display "smax\>" contained
syn match apdlFunction display "smbody\>" contained
syn match apdlFunction display "smcons\>" contained
syn match apdlFunction display "smfor\>" contained
syn match apdlFunction display "smin\>" contained
syn match apdlFunction display "smooth\>" contained
syn match apdlFunction display "smrtsize\>" contained
syn match apdlFunction display "smsurf\>" contained
syn match apdlFunction display "smult\>" contained
syn match apdlFunction display "solcontrol\>" contained
syn match apdlFunction display "solu\>" contained
syn match apdlFunction display "soluopt\>" contained
syn match apdlFunction display "solve\>" contained
syn match apdlFunction display "sort\>" contained
syn match apdlFunction display "source\>" contained
syn match apdlFunction display "space\>" contained
syn match apdlFunction display "sparm\>" contained
syn match apdlFunction display "spcnod\>" contained
syn match apdlFunction display "spctemp\>" contained
syn match apdlFunction display "spec\>" contained
syn match apdlFunction display "sph4\>" contained
syn match apdlFunction display "sph5\>" contained
syn match apdlFunction display "sphere\>" contained
syn match apdlFunction display "spline\>" contained
syn match apdlFunction display "spoint\>" contained
syn match apdlFunction display "spopt\>" contained
syn match apdlFunction display "spread\>" contained
syn match apdlFunction display "sptopt\>" contained
syn match apdlFunction display "sqrt\>" contained
syn match apdlFunction display "srss\>" contained
syn match apdlFunction display "/sscale\>" contained
syn match apdlFunction display "ssln\>" contained
syn match apdlFunction display "sstif\>" contained
syn match apdlFunction display "ssum\>" contained
syn match apdlFunction display "stat\>" contained
syn match apdlFunction display "/status\>" contained
syn match apdlFunction display "\*status\>" contained
syn match apdlFunction display "stef\>" contained
syn match apdlFunction display "/stitle\>" contained
syn match apdlFunction display "store\>" contained
syn match apdlFunction display "subopt\>" contained
syn match apdlFunction display "subset\>" contained
syn match apdlFunction display "sumtype\>" contained
syn match apdlFunction display "sv\>" contained
syn match apdlFunction display "svtyp\>" contained
syn match apdlFunction display "/syp\>" contained
syn match apdlFunction display "/sys\>" contained
syn match apdlFunction display "tallow\>" contained
syn match apdlFunction display "tb\>" contained
syn match apdlFunction display "tbcopy\>" contained
syn match apdlFunction display "tbdata\>" contained
syn match apdlFunction display "tbdele\>" contained
syn match apdlFunction display "tble\>" contained
syn match apdlFunction display "tblist\>" contained
syn match apdlFunction display "tbmodif\>" contained
syn match apdlFunction display "tbplot\>" contained
syn match apdlFunction display "tbpt\>" contained
syn match apdlFunction display "tbtemp\>" contained
syn match apdlFunction display "tchg\>" contained
syn match apdlFunction display "/tee\>" contained
syn match apdlFunction display "tee\>" contained
syn match apdlFunction display "term\>" contained
syn match apdlFunction display "tiff\>" contained
syn match apdlFunction display "time\>" contained
syn match apdlFunction display "timerange\>" contained
syn match apdlFunction display "timint\>" contained
syn match apdlFunction display "timp\>" contained
syn match apdlFunction display "tintp\>" contained
syn match apdlFunction display "/title\>" contained
syn match apdlFunction display "/tlabel\>" contained
syn match apdlFunction display "tocomp\>" contained
syn match apdlFunction display "todef\>" contained
syn match apdlFunction display "toexe\>" contained
syn match apdlFunction display "toffst\>" contained
syn match apdlFunction display "tofreq\>" contained
syn match apdlFunction display "tograph\>" contained
syn match apdlFunction display "tolist\>" contained
syn match apdlFunction display "toloop\>" contained
syn match apdlFunction display "\*toper\>" contained
syn match apdlFunction display "toplot\>" contained
syn match apdlFunction display "toprint\>" contained
syn match apdlFunction display "torq2d\>" contained
syn match apdlFunction display "torqc2d\>" contained
syn match apdlFunction display "torqsum\>" contained
syn match apdlFunction display "torus\>" contained
syn match apdlFunction display "tostat\>" contained
syn match apdlFunction display "total\>" contained
syn match apdlFunction display "totype\>" contained
syn match apdlFunction display "tovar\>" contained
syn match apdlFunction display "trans\>" contained
syn match apdlFunction display "transfer\>" contained
syn match apdlFunction display "\*tread\>" contained
syn match apdlFunction display "tref\>" contained
syn match apdlFunction display "/triad\>" contained
syn match apdlFunction display "/trlcy\>" contained
syn match apdlFunction display "trnopt\>" contained
syn match apdlFunction display "trpdel\>" contained
syn match apdlFunction display "trplis\>" contained
syn match apdlFunction display "trpoin\>" contained
syn match apdlFunction display "trtime\>" contained
syn match apdlFunction display "tshap\>" contained
syn match apdlFunction display "/tspec\>" contained
syn match apdlFunction display "tsres\>" contained
syn match apdlFunction display "tunif\>" contained
syn match apdlFunction display "tvar\>" contained
syn match apdlFunction display "/txtre\>" contained
syn match apdlFunction display "/type\>" contained
syn match apdlFunction display "type\>" contained
syn match apdlFunction display "tzamesh\>" contained
syn match apdlFunction display "tzdele\>" contained
syn match apdlFunction display "tzegen\>" contained
syn match apdlFunction display "/ucmd\>" contained
syn match apdlFunction display "/ui\>" contained
syn match apdlFunction display "uimp\>" contained
syn match apdlFunction display "/uis\>" contained
syn match apdlFunction display "\*ulib\>" contained
syn match apdlFunction display "undelete\>" contained
syn match apdlFunction display "undo\>" contained
syn match apdlFunction display "/units\>" contained
syn match apdlFunction display "upcoord\>" contained
syn match apdlFunction display "upgeom\>" contained
syn match apdlFunction display "\*use\>" contained
syn match apdlFunction display "usrcal\>" contained
syn match apdlFunction display "v\>" contained
syn match apdlFunction display "v2dopt\>" contained
syn match apdlFunction display "va\>" contained
syn match apdlFunction display "\*vabs\>" contained
syn match apdlFunction display "vadd\>" contained
syn match apdlFunction display "valve\>" contained
syn match apdlFunction display "vardel\>" contained
syn match apdlFunction display "varnam\>" contained
syn match apdlFunction display "vatt\>" contained
syn match apdlFunction display "vclear\>" contained
syn match apdlFunction display "\*vcol\>" contained
syn match apdlFunction display "/vcone\>" contained
syn match apdlFunction display "vcross\>" contained
syn match apdlFunction display "\*vcum\>" contained
syn match apdlFunction display "vcvfill\>" contained
syn match apdlFunction display "vddam\>" contained
syn match apdlFunction display "vdele\>" contained
syn match apdlFunction display "vdgl\>" contained
syn match apdlFunction display "vdot\>" contained
syn match apdlFunction display "vdrag\>" contained
syn match apdlFunction display "\*vedit\>" contained
syn match apdlFunction display "vext\>" contained
syn match apdlFunction display "\*vfact\>" contained
syn match apdlFunction display "vfcalc\>" contained
syn match apdlFunction display "\*vfill\>" contained
syn match apdlFunction display "vfopt\>" contained
syn match apdlFunction display "vfquery\>" contained
syn match apdlFunction display "\*vfun\>" contained
syn match apdlFunction display "vgen\>" contained
syn match apdlFunction display "\*vget\>" contained
syn match apdlFunction display "vget\>" contained
syn match apdlFunction display "vglue\>" contained
syn match apdlFunction display "/view\>" contained
syn match apdlFunction display "vimp\>" contained
syn match apdlFunction display "vinp\>" contained
syn match apdlFunction display "vinv\>" contained
syn match apdlFunction display "\*vitrp\>" contained
syn match apdlFunction display "\*vlen\>" contained
syn match apdlFunction display "vlist\>" contained
syn match apdlFunction display "vlscale\>" contained
syn match apdlFunction display "\*vmask\>" contained
syn match apdlFunction display "vmesh\>" contained
syn match apdlFunction display "voffst\>" contained
syn match apdlFunction display "volumes\>" contained
syn match apdlFunction display "\*voper\>" contained
syn match apdlFunction display "vovlap\>" contained
syn match apdlFunction display "\*vplot\>" contained
syn match apdlFunction display "vplot\>" contained
syn match apdlFunction display "vptn\>" contained
syn match apdlFunction display "\*vput\>" contained
syn match apdlFunction display "vput\>" contained
syn match apdlFunction display "vrotat\>" contained
syn match apdlFunction display "vsba\>" contained
syn match apdlFunction display "vsbv\>" contained
syn match apdlFunction display "vsbw\>" contained
syn match apdlFunction display "/vscale\>" contained
syn match apdlFunction display "\*vscfun\>" contained
syn match apdlFunction display "vsla\>" contained
syn match apdlFunction display "\*vstat\>" contained
syn match apdlFunction display "vsum\>" contained
syn match apdlFunction display "vsweep\>" contained
syn match apdlFunction display "vsymm\>" contained
syn match apdlFunction display "vtran\>" contained
syn match apdlFunction display "vtype\>" contained
syn match apdlFunction display "/vup\>" contained
syn match apdlFunction display "/wait\>" contained
syn match apdlFunction display "waves\>" contained
syn match apdlFunction display "werase\>" contained
syn match apdlFunction display "wfront\>" contained
syn match apdlFunction display "/window\>" contained
syn match apdlFunction display "wmore\>" contained
syn match apdlFunction display "wpave\>" contained
syn match apdlFunction display "wpcsys\>" contained
syn match apdlFunction display "wplane\>" contained
syn match apdlFunction display "wpoffs\>" contained
syn match apdlFunction display "wprota\>" contained
syn match apdlFunction display "wpstyl\>" contained
syn match apdlFunction display "write\>" contained
syn match apdlFunction display "wsort\>" contained
syn match apdlFunction display "wstart\>" contained
syn match apdlFunction display "/xfrm\>" contained
syn match apdlFunction display "/xrange\>" contained
syn match apdlFunction display "xvar\>" contained
syn match apdlFunction display "xvaropt\>" contained
syn match apdlFunction display "/yrange\>" contained
syn match apdlFunction display "/zoom\>" contained
"}}}

"{{{ MACROS
syn match apdlFunction display "aaa\>" contained
syn match apdlFunction display "aa\>" contained
syn match apdlFunction display "ABGE\>" contained
syn match apdlFunction display "ABHA\>" contained
syn match apdlFunction display "ABWA\>" contained
syn match apdlFunction display "AEXT\>" contained
syn match apdlFunction display "AEXT1\>" contained
syn match apdlFunction display "AEXT2\>" contained
syn match apdlFunction display "ALAST\>" contained
syn match apdlFunction display "AN0\>" contained
syn match apdlFunction display "an3d\>" contained
syn match apdlFunction display "an3d2\>" contained
syn match apdlFunction display "AN3D3\>" contained
syn match apdlFunction display "Anno4\>" contained
syn match apdlFunction display "Anno5\>" contained
syn match apdlFunction display "Anno5_ALT\>" contained
syn match apdlFunction display "Anno6\>" contained
syn match apdlFunction display "Anno7\>" contained
syn match apdlFunction display "Anno7ALT\>" contained
syn match apdlFunction display "Anno7ALT2\>" contained
syn match apdlFunction display "Anno7ALT3\>" contained
syn match apdlFunction display "Anno8\>" contained
syn match apdlFunction display "ANX\>" contained
syn match apdlFunction display "ANX7\>" contained
syn match apdlFunction display "ANX71\>" contained
syn match apdlFunction display "anx77\>" contained
syn match apdlFunction display "ANX7t\>" contained
syn match apdlFunction display "ANX7_ALT\>" contained
syn match apdlFunction display "4anx8\>" contained
syn match apdlFunction display "0ANXalt\>" contained
syn match apdlFunction display "3ANY\>" contained
syn match apdlFunction display "ANY7\>" contained
syn match apdlFunction display "any77\>" contained
syn match apdlFunction display "ANY7t\>" contained
syn match apdlFunction display "ANY7_ALT\>" contained
syn match apdlFunction display "any8\>" contained
syn match apdlFunction display "ANYalt\>" contained
syn match apdlFunction display "APX\>" contained
syn match apdlFunction display "APY\>" contained
syn match apdlFunction display "APY2\>" contained
syn match apdlFunction display "APZ\>" contained
syn match apdlFunction display "ARVN\>" contained
syn match apdlFunction display "ASA\>" contained
syn match apdlFunction display "ASLE-alt\>" contained
syn match apdlFunction display "ASM\>" contained
syn match apdlFunction display "ASN\>" contained
syn match apdlFunction display "4ASPS\>" contained
syn match apdlFunction display "ASR\>" contained
syn match apdlFunction display "ASS\>" contained
syn match apdlFunction display "ASU\>" contained
syn match apdlFunction display "5atx7\>" contained
syn match apdlFunction display "AVATT\>" contained
syn match apdlFunction display "bea188\>" contained
syn match apdlFunction display "bea4\>" contained
syn match apdlFunction display "7BEM1\>" contained
syn match apdlFunction display "Beul_UR_Mod\>" contained
syn match apdlFunction display "7BLAST\>" contained
syn match apdlFunction display "bnod\>" contained
syn match apdlFunction display "bnod2\>" contained
syn match apdlFunction display "bnod3\>" contained
syn match apdlFunction display "cms\>" contained
syn match apdlFunction display "COMBIN40\>" contained
syn match apdlFunction display "cosym\>" contained
syn match apdlFunction display "cosym2\>" contained
syn match apdlFunction display "CPLO\>" contained
syn match apdlFunction display "CSA\>" contained
syn match apdlFunction display "CSS\>" contained
syn match apdlFunction display "CSU\>" contained
syn match apdlFunction display "CSYM\>" contained
syn match apdlFunction display "CSYM2\>" contained
syn match apdlFunction display "cv\>" contained
syn match apdlFunction display "cvep\>" contained
syn match apdlFunction display "dfy73-v1\>" contained
syn match apdlFunction display "dfy73\>" contained
syn match apdlFunction display "dfy74-v1\>" contained
syn match apdlFunction display "dfy74\>" contained
syn match apdlFunction display "dfy77\>" contained
syn match apdlFunction display "di\>" contained
syn match apdlFunction display "DI71\>" contained
syn match apdlFunction display "di72\>" contained
syn match apdlFunction display "DI73-H\>" contained
syn match apdlFunction display "di73\>" contained
syn match apdlFunction display "di74-0\>" contained
syn match apdlFunction display "di74-1\>" contained
syn match apdlFunction display "di74\>" contained
syn match apdlFunction display "DI75\>" contained
syn match apdlFunction display "DI76\>" contained
syn match apdlFunction display "di77\>" contained
syn match apdlFunction display "DI78\>" contained
syn match apdlFunction display "di9-H\>" contained
syn match apdlFunction display "IST\>" contained
syn match apdlFunction display "dmat\>" contained
syn match apdlFunction display "dsv\>" contained
syn match apdlFunction display "dur\>" contained
syn match apdlFunction display "e171\>" contained
syn match apdlFunction display "e188\>" contained
syn match apdlFunction display "eact\>" contained
syn match apdlFunction display "EAD\>" contained
syn match apdlFunction display "EAM\>" contained
syn match apdlFunction display "ec175\>" contained
syn match apdlFunction display "5ECR\>" contained
syn match apdlFunction display "EDNS\>" contained
syn match apdlFunction display "edreh\>" contained
syn match apdlFunction display "eg\>" contained
syn match apdlFunction display "EINFO\>" contained
syn match apdlFunction display "elemp\>" contained
syn match apdlFunction display "emma\>" contained
syn match apdlFunction display "emmr\>" contained
syn match apdlFunction display "emms\>" contained
syn match apdlFunction display "emmu\>" contained
syn match apdlFunction display "en10025-2\>" contained
syn match apdlFunction display "en10025-P355\>" contained
syn match apdlFunction display "en10025-s235\>" contained
syn match apdlFunction display "en10025\>" contained
syn match apdlFunction display "en10025china\>" contained
syn match apdlFunction display "ep77-1\>" contained
syn match apdlFunction display "ep77\>" contained
syn match apdlFunction display "epelem\>" contained
syn match apdlFunction display "eplo77\>" contained
syn match apdlFunction display "epps\>" contained
syn match apdlFunction display "ERDLAST\>" contained
syn match apdlFunction display "ERDLAST1\>" contained
syn match apdlFunction display "7ERDU\>" contained
syn match apdlFunction display "ERM\>" contained
syn match apdlFunction display "ESA\>" contained
syn match apdlFunction display "ESbt\>" contained
syn match apdlFunction display "esc\>" contained
syn match apdlFunction display "esc170\>" contained
syn match apdlFunction display "ESCR\>" contained
syn match apdlFunction display "esd\>" contained
syn match apdlFunction display "ESE\>" contained
syn match apdlFunction display "esen\>" contained
syn match apdlFunction display "ESFE\>" contained
syn match apdlFunction display "ESM\>" contained
syn match apdlFunction display "ESMA\>" contained
syn match apdlFunction display "ESMU\>" contained
syn match apdlFunction display "ESN\>" contained
syn match apdlFunction display "ESna\>" contained
syn match apdlFunction display "ESR\>" contained
syn match apdlFunction display "ESS\>" contained
syn match apdlFunction display "essh\>" contained
syn match apdlFunction display "EST\>" contained
syn match apdlFunction display "ESU\>" contained
syn match apdlFunction display "ESUC\>" contained
syn match apdlFunction display "1ESUM\>" contained
syn match apdlFunction display "esvo\>" contained
syn match apdlFunction display "eush\>" contained
syn match apdlFunction display "euvo\>" contained
syn match apdlFunction display "FD\>" contained
syn match apdlFunction display "FIC\>" contained
syn match apdlFunction display "fil4\>" contained
syn match apdlFunction display "fil4_alt\>" contained
syn match apdlFunction display "FNEG\>" contained
syn match apdlFunction display "FNEG2\>" contained
syn match apdlFunction display "8fnl\>" contained
syn match apdlFunction display "FPOS\>" contained
syn match apdlFunction display "FPOS2\>" contained
syn match apdlFunction display "FRES\>" contained
syn match apdlFunction display "FW\>" contained
syn match apdlFunction display "FW0\>" contained
syn match apdlFunction display "FWSUM\>" contained
syn match apdlFunction display "1FWzul\>" contained
syn match apdlFunction display "4fy18800\>" contained
syn match apdlFunction display "gam\>" contained
syn match apdlFunction display "gamd\>" contained
syn match apdlFunction display "gem\>" contained
syn match apdlFunction display "gemd\>" contained
syn match apdlFunction display "GEOLIS\>" contained
syn match apdlFunction display "gkm\>" contained
syn match apdlFunction display "gkmd\>" contained
syn match apdlFunction display "glm-Kopie\>" contained
syn match apdlFunction display "glm\>" contained
syn match apdlFunction display "glmd\>" contained
syn match apdlFunction display "gnm\>" contained
syn match apdlFunction display "gnmd\>" contained
syn match apdlFunction display "gsmd\>" contained
syn match apdlFunction display "HKA\>" contained
syn match apdlFunction display "JOB1\>" contained
syn match apdlFunction display "JOB2\>" contained
syn match apdlFunction display "job3\>" contained
syn match apdlFunction display "job33\>" contained
syn match apdlFunction display "JOB4\>" contained
syn match apdlFunction display "job5\>" contained
syn match apdlFunction display "jplot\>" contained
syn match apdlFunction display "KoCheck\>" contained
syn match apdlFunction display "KOOFS\>" contained
syn match apdlFunction display "KOS\>" contained
syn match apdlFunction display "KOS2\>" contained
syn match apdlFunction display "KOS3\>" contained
syn match apdlFunction display "3KOS4\>" contained
syn match apdlFunction display "KOS5\>" contained
syn match apdlFunction display "KOSC\>" contained
syn match apdlFunction display "ksl\>" contained
syn match apdlFunction display "KSX\>" contained
syn match apdlFunction display "KSY\>" contained
syn match apdlFunction display "KSZ\>" contained
syn match apdlFunction display "kszz\>" contained
syn match apdlFunction display "KWEG\>" contained
syn match apdlFunction display "LIWI\>" contained
syn match apdlFunction display "llfi\>" contained
syn match apdlFunction display "log\>" contained
syn match apdlFunction display "logx\>" contained
syn match apdlFunction display "LOKO\>" contained
syn match apdlFunction display "LOW\>" contained
syn match apdlFunction display "1LRU-1\>" contained
syn match apdlFunction display "lru\>" contained
syn match apdlFunction display "lru2\>" contained
syn match apdlFunction display "ls1-v1\>" contained
syn match apdlFunction display "ls1\>" contained
syn match apdlFunction display "ls2\>" contained
syn match apdlFunction display "ls2_ALT\>" contained
syn match apdlFunction display "ls3\>" contained
syn match apdlFunction display "lsu\>" contained
syn match apdlFunction display "LSU1\>" contained
syn match apdlFunction display "LSU4\>" contained
syn match apdlFunction display "LSU5\>" contained
syn match apdlFunction display "LSUx\>" contained
syn match apdlFunction display "LSUy\>" contained
syn match apdlFunction display "lsuz\>" contained
syn match apdlFunction display "lx\>" contained
syn match apdlFunction display "ly\>" contained
syn match apdlFunction display "lz\>" contained
syn match apdlFunction display "Mat_Aus\>" contained
syn match apdlFunction display "MEIGS\>" contained
syn match apdlFunction display "MXX\>" contained
syn match apdlFunction display "MXX181\>" contained
syn match apdlFunction display "MXX188\>" contained
syn match apdlFunction display "MXX43\>" contained
syn match apdlFunction display "MXX63\>" contained
syn match apdlFunction display "NINFO\>" contained
syn match apdlFunction display "nlschraub\>" contained
syn match apdlFunction display "NLSort\>" contained
syn match apdlFunction display "NLSort2\>" contained
syn match apdlFunction display "NLSort3\>" contained
syn match apdlFunction display "NLSort4\>" contained
syn match apdlFunction display "NLSort_x\>" contained
syn match apdlFunction display "NLSort_y\>" contained
syn match apdlFunction display "NLSort_z\>" contained
"syn match apdlFunction display "nsl\>" contained
syn match apdlFunction display "NUMPLO\>" contained
syn match apdlFunction display "nver\>" contained
syn match apdlFunction display "pb\>" contained
syn match apdlFunction display "pcds\>" contained
syn match apdlFunction display "0PHV\>" contained
syn match apdlFunction display "PHV2\>" contained
syn match apdlFunction display "PHV2R\>" contained
syn match apdlFunction display "PHVD\>" contained
syn match apdlFunction display "PHVDxx\>" contained
syn match apdlFunction display "PHVDZ\>" contained
syn match apdlFunction display "PHVDZZ\>" contained
syn match apdlFunction display "PHVKO\>" contained
syn match apdlFunction display "PHVT\>" contained
syn match apdlFunction display "PHVT2\>" contained
syn match apdlFunction display "phvts\>" contained
syn match apdlFunction display "phvts2\>" contained
syn match apdlFunction display "pl7-v7\>" contained
syn match apdlFunction display "pl7-v8\>" contained
syn match apdlFunction display "pl7\>" contained
syn match apdlFunction display "PL7A\>" contained
syn match apdlFunction display "pl7text\>" contained
syn match apdlFunction display "pl7_ep\>" contained
syn match apdlFunction display "PL7_V1\>" contained
syn match apdlFunction display "PL7_V2\>" contained
syn match apdlFunction display "PL7_V3\>" contained
syn match apdlFunction display "PL7_V4\>" contained
syn match apdlFunction display "PL7_V5\>" contained
syn match apdlFunction display "PL7_v6\>" contained
syn match apdlFunction display "pl7_v7\>" contained
syn match apdlFunction display "plmat\>" contained
syn match apdlFunction display "plmat1\>" contained
syn match apdlFunction display "plreal\>" contained
syn match apdlFunction display "plsige\>" contained
syn match apdlFunction display "plsige2\>" contained
syn match apdlFunction display "plsige3\>" contained
syn match apdlFunction display "plsige4\>" contained
syn match apdlFunction display "pltype\>" contained
syn match apdlFunction display "plvolu\>" contained
syn match apdlFunction display "pl_sw1\>" contained
syn match apdlFunction display "pl_sw1_ALT\>" contained
syn match apdlFunction display "pl_sw1_ALT2\>" contained
syn match apdlFunction display "pl_sw1_DIN\>" contained
syn match apdlFunction display "prsigi\>" contained
syn match apdlFunction display "prsu\>" contained
syn match apdlFunction display "pscl\>" contained
syn match apdlFunction display "psy\>" contained
syn match apdlFunction display "QRES\>" contained
syn match apdlFunction display "QRES2\>" contained
syn match apdlFunction display "real_Aus\>" contained
syn match apdlFunction display "Replo\>" contained
syn match apdlFunction display "RPLO\>" contained
syn match apdlFunction display "RR\>" contained
syn match apdlFunction display "rsac\>" contained
syn match apdlFunction display "rv\>" contained
syn match apdlFunction display "S0\>" contained
syn match apdlFunction display "schraub\>" contained
syn match apdlFunction display "Sec_Vec\>" contained
syn match apdlFunction display "SEQVS\>" contained
syn match apdlFunction display "sfln\>" contained
syn match apdlFunction display "sfn\>" contained
syn match apdlFunction display "sg77\>" contained
syn match apdlFunction display "sk\>" contained
syn match apdlFunction display "spp\>" contained
syn match apdlFunction display "spp_alt\>" contained
syn match apdlFunction display "SSA\>" contained
syn match apdlFunction display "6ssenks\>" contained
syn match apdlFunction display "SSR\>" contained
syn match apdlFunction display "SSS\>" contained
syn match apdlFunction display "SSU\>" contained
syn match apdlFunction display "st\>" contained
syn match apdlFunction display "STAB\>" contained
syn match apdlFunction display "6STAB188_neu\>" contained
syn match apdlFunction display "sta_aus\>" contained
syn match apdlFunction display "sumur\>" contained
syn match apdlFunction display "SW2_WA2\>" contained
syn match apdlFunction display "SW41\>" contained
syn match apdlFunction display "SW41A\>" contained
syn match apdlFunction display "SW41B\>" contained
syn match apdlFunction display "sw41c\>" contained
syn match apdlFunction display "SW42\>" contained
syn match apdlFunction display "3SW43-EC\>" contained
syn match apdlFunction display "SW43\>" contained
syn match apdlFunction display "SW43a\>" contained
syn match apdlFunction display "SW43B\>" contained
syn match apdlFunction display "sw43c\>" contained
syn match apdlFunction display "SW43e\>" contained
syn match apdlFunction display "SW43F\>" contained
syn match apdlFunction display "SW43X\>" contained
syn match apdlFunction display "SW44\>" contained
syn match apdlFunction display "SW45-EC\>" contained
syn match apdlFunction display "SW45\>" contained
syn match apdlFunction display "sw45c\>" contained
syn match apdlFunction display "SW45e\>" contained
syn match apdlFunction display "SW45I\>" contained
syn match apdlFunction display "sw46\>" contained
syn match apdlFunction display "SW46A\>" contained
syn match apdlFunction display "SW46b\>" contained
syn match apdlFunction display "sw46c\>" contained
syn match apdlFunction display "SW47\>" contained
syn match apdlFunction display "sw47c\>" contained
syn match apdlFunction display "SW48\>" contained
syn match apdlFunction display "sw48c\>" contained
syn match apdlFunction display "SW49-EC\>" contained
syn match apdlFunction display "SW49\>" contained
syn match apdlFunction display "SW49e\>" contained
syn match apdlFunction display "SW50\>" contained
syn match apdlFunction display "sw53\>" contained
syn match apdlFunction display "sw81\>" contained
syn match apdlFunction display "sw82\>" contained
syn match apdlFunction display "sw88\>" contained
syn match apdlFunction display "sw89\>" contained
syn match apdlFunction display "SWP\>" contained
syn match apdlFunction display "SW_WA\>" contained
syn match apdlFunction display "SW_WA2\>" contained
syn match apdlFunction display "SW_WA2_Sicher\>" contained
syn match apdlFunction display "SW_WA3\>" contained
syn match apdlFunction display "SW_WA3_Sicher\>" contained
syn match apdlFunction display "SW_WA4\>" contained
syn match apdlFunction display "SW_WA5\>" contained
syn match apdlFunction display "SW_WA5_ALT\>" contained
syn match apdlFunction display "SW_WA5_DIN\>" contained
syn match apdlFunction display "SW_WA5_Sicher\>" contained
syn match apdlFunction display "SW_WA5_Sicher2\>" contained
syn match apdlFunction display "taueb-dy\>" contained
syn match apdlFunction display "taueb-unten\>" contained
syn match apdlFunction display "TAUEB\>" contained
syn match apdlFunction display "TAUEB_LIN\>" contained
syn match apdlFunction display "test\>" contained
syn match apdlFunction display "test.zip\>" contained
syn match apdlFunction display "test_p\>" contained
syn match apdlFunction display "test_s\>" contained
syn match apdlFunction display "test_ss\>" contained
syn match apdlFunction display "tparas\>" contained
syn match apdlFunction display "tplot-k\>" contained
syn match apdlFunction display "tplot\>" contained
syn match apdlFunction display "tsenks\>" contained
syn match apdlFunction display "vam\>" contained
syn match apdlFunction display "vamd\>" contained
syn match apdlFunction display "viiplusy\>" contained
syn match apdlFunction display "viiz\>" contained
syn match apdlFunction display "viiz2\>" contained
syn match apdlFunction display "VSA\>" contained
syn match apdlFunction display "7VSKT\>" contained
syn match apdlFunction display "5VSKT_ALT\>" contained
syn match apdlFunction display "VSN\>" contained
syn match apdlFunction display "VSR\>" contained
syn match apdlFunction display "VSS\>" contained
syn match apdlFunction display "VSU\>" contained
syn match apdlFunction display "VV\>" contained
syn match apdlFunction display "wax\>" contained
syn match apdlFunction display "way\>" contained
syn match apdlFunction display "waz\>" contained
syn match apdlFunction display "WPON\>" contained
syn match apdlFunction display "XX\>" contained
syn match apdlFunction display "xxx\>" contained
syn match apdlFunction display "XYZ\>" contained
syn match apdlFunction display "zur\>" contained
"}}}


" magic condition for Error display, must be first.
syn match apdlError display ".*$" contained

" Commands that are missing in autoextracted file:
syn match apdlFunction display "/cwd\>" contained
syn match apdlFunction display "/show\>" contained

" multiline commands
syn match apdlStringLine ".*$" contained
syn match apdlBeforeLine ".*\n" contained "nextgroup=apdlStringLine
syn match apdlFunction "\*msg\>" contained "nextgroup=apdlBeforeLine
syn match apdlFunction "\*mwrite\>" contained "nextgroup=apdlBeforeLine
syn match apdlFunction "\*vread\>" contained "nextgroup=apdlBeforeLine
syn match apdlFunction "\*vwrite\>" contained "nextgroup=apdlBeforeLine

" Commands with parameter checking:
" cm
syn match apdlFunction display "cm\s*,"me=e-1 contained nextgroup=apdlError,apdlCm1Ok
syn match apdlCm1Ok display ",\s*[a-zA-Z_][a-zA-Z0-9_]*\s*," contained transparent nextgroup=apdlError,apdlCm2Ok
syn match apdlCm2Ok display "\s*\(volu\|area\|line\|kp\|elem\|node\)\>" contained transparent

" Xsel
syn match apdlFunction display "ksel\s*,"me=e-1 contained nextgroup=apdlError,apdlXsel1aOk,apdlXsel1bOk
syn match apdlFunction display "lsel\s*,"me=e-1 contained nextgroup=apdlError,apdlXsel1aOk,apdlXsel1bOk
syn match apdlFunction display "asel\s*,"me=e-1 contained nextgroup=apdlError,apdlXsel1aOk,apdlXsel1bOk
syn match apdlFunction display "vsel\s*,"me=e-1 contained nextgroup=apdlError,apdlXsel1aOk,apdlXsel1bOk
syn match apdlFunction display "esel\s*,"me=e-1 contained nextgroup=apdlError,apdlXsel1aOk,apdlXsel1bOk
syn match apdlFunction display "nsel\s*,"me=e-1 contained nextgroup=apdlError,apdlXsel1aOk,apdlXsel1bOk
syn match apdlFunction display "cmsel\s*,"me=e-1 contained nextgroup=apdlError,apdlXsel1aOk,apdlXsel1bOk
syn match apdlXsel1aOk display ",\s*\(s\|r\|a\|u\|inve\)\=\s*," contained transparent
syn match apdlXsel1bOk display ",\s*\(all\|none\|stat\)" contained transparent

" special apdl commands that should be highlighted seperately:
syn match	apdlConditional	display	"\*if\>" contained
syn match	apdlConditional	display	"\*elseif\>" contained
syn match	apdlConditional	display	"\*else\>" contained
syn match	apdlConditional	display	"\*endif\>" contained
syn match	apdlRepeat	display "\*do\>" contained
syn match	apdlRepeat	display "\*cycle\>" contained
syn match	apdlRepeat	display "\*exit\>" contained
syn match	apdlRepeat	display "\*enddo\>" contained
syn match	apdlRepeat	display "\*repeat\>" contained
syn match	apdlRepeat	display "\*go\>" contained

" exceptional commands:
syn match	apdlSpecial	display "/eof\>" contained
syn match	apdlSpecial	display "/show\>" contained
syn match	apdlSpecial	display "/exit\>" contained
syn match	apdlSpecial	display "/quit\>" contained
syn match	apdlSpecial	display "debug\>" contained

" labels
syn match	apdlLabel	display ":\s*[a-zA-Z_][a-zA-Z0-9_]*" contained 

" apdl command groups
syn match	apdlSpecial	display "/prep7\>" contained
syn match	apdlSpecial	display "/solu\>" contained
syn match	apdlSpecial	display "/post1\>" contained
syn match	apdlSpecial	display "/post26\>" contained
syn match	apdlSpecial	display "/opt\>" contained
syn match	apdlSpecial	display "/runst\>" contained
syn match	apdlSpecial	display "/aux2\>" contained
syn match	apdlSpecial	display "/aux12\>" contained
syn match	apdlSpecial	display "/aux15\>" contained
syn match	apdlSpecial	display "fini\(sh\)\?\>" contained
syn match	apdlSpecial	display "\*create\>" contained
syn match	apdlSpecial	display "\*end\>" contained

"Added Later
syn keyword	apdlWarning	contained edited 
syn keyword	apdlWarning	contained *do *enddo *if *elseif *endif 
syn match   apdlSpecial2    display "<--.*-->" contained
"syn match   apdlUnused    display "/eof.*\$" contained
syn match apdlFunction display "/inp\>" contained
"syn match apdlFunction display "let\([ae]\)\?" contained
syn match apdlSpecial3 display "!anfang" contained
syn match apdlSpecial3 display "!ende" contained

" commands must be the first entry in a line or behind an $
syn cluster	apdlToken contains=apdlSpecial,apdlRepeat,apdlConditional,apdlFunction,apdlLabel

syn match	apdlStart1	"\$" nextgroup=@apdlToken skipwhite transparent
syn match	apdlStart2	"^" nextgroup=@apdlToken skipwhite transparent

" comment must be the last match, it has priority over apdlStart2
syn keyword	apdlTodo	contained TODO FIXME XXX
syn match	apdlComment	"!.*$" contains=apdlTodo,apdlWarning,apdlSpecial2,apdlSpecial3

syn case match

"{{{anfang Syntax Folding
 
" define groups that cannot contain the start of a fold
syn cluster vimNoFold contains=apdlComment,apdlLineComment
syn cluster vimEmbeddedScript contains=vimMyFold
syn cluster vimIn contains=potionOperator,apdlString,apdlStringLine,apdlBeforeLine,apdlAnything

				"My own FOLD marker
				syn region vimMyFold
					\ start="\<anf\%[ang]\>"
					\ end="\<end\%[e]\>"
					\ fold contains=ALL
					\ keepend extend
					\ containedin=apdlComment,apdlLineComment
					\ skip=+"\%(\\"\|[^"]\)\{-}\%("\|$\)\|'[^']\{-}'+ "comment to fix highlight on wiki'

				""EOF FOLD marker
				"syn region vimEofFold
					"\ start="\<eof\%[f]\>"
					"\ end="\<endeof\%[f]\>"
					"\ fold transparent contains=apdlComment
					"\ keepend extend 
					"\ containedin=ALLBUT,apdlComment,apdlLineComment
					"\ skip=+"\%(\\"\|[^"]\)\{-}\%("\|$\)\|'[^']\{-}'+ "comment to fix highlight on wiki'

" fold do loops
syn region vimFoldDoLoop
      \ start="\<d\%[o]\>"
      \ end="\<end\%[do]\>"
      \ fold
      \ keepend extend
      \ containedin=ALLBUT,@vimNoFold
	  \ contains=TOP,@vimIn
      \ skip=+"\%(\\"\|[^"]\)\{-}\%("\|$\)\|'[^']\{-}'+ "comment to fix highlight on wiki'
 
" fold if...else...endif constructs
"
" note that 'endif' has a shorthand which can also match many other end patterns
" if we did not include the word boundary \> pattern, and also it may match
" syntax end=/pattern/ elements, so we must explicitly exclude these
syn region vimFoldIfContainer
      \ start="\<if\>"
	  \ end="\<end\%[if]\>=\@!"
      \ keepend extend
      \ containedin=ALLBUT,@vimNoFold
      \ contains=NONE
      \ skip=+"\%(\\"\|[^"]\)\{-}\%("\|$\)\|'[^']\{-}'+ "comment to fix highlight on wiki'
syn region vimFoldIf
      \ start="\<if\>"
      \ end="^\s*\\\?\s*\*else\%[if]\>"ms=s-1,me=s-1
      \ fold 
      \ keepend
      \ contained containedin=vimFoldIfContainer
      \ nextgroup=vimFoldElseIf,vimFoldElse
      \ contains=TOP,@vimIn
      \ skip=+"\%(\\"\|[^"]\)\{-}\%("\|$\)\|'[^']\{-}'+ "comment to fix highlight on wiki'
syn region vimFoldElseIf
      \ start="\<else\%[if]\>"
      \ end="^\s*\\\?\s*\*else\%[if]\>"ms=s-1,me=s-1
      \ fold
      \ keepend
      \ contained containedin=vimFoldIfContainer
      \ nextgroup=vimFoldElseIf,vimFoldElse
      \ contains=TOP,@vimIn
      \ skip=+"\%(\\"\|[^"]\)\{-}\%("\|$\)\|'[^']\{-}'+ "comment to fix highlight on wiki'
syn region vimFoldElse
      \ start="\<el\%[se]\>"
	  \ end="\<end\%[if]\>=\@!"
      \ fold
      \ keepend
      \ contained containedin=vimFoldIfContainer
      \ contains=TOP,@vimIn
      \ skip=+"\%(\\"\|[^"]\)\{-}\%("\|$\)\|'[^']\{-}'+ "comment to fix highlight on wiki'
"}}}ende Syntax Folding

syn match apdlStringLine ".*$" contained

"{{{ Linking with Highlighter

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_apdl_syntax_inits")
	
	if version < 508
		let did_apdl_syntax_inits = 1
		command -nargs=+ HiLink hi link <args>
	else
		command -nargs=+ HiLink hi def link <args>
	endif

	HiLink apdlComment	ApdlComment
	HiLink apdlNumber	Number
	HiLink apdlFloat	Float
	HiLink apdlConditional	Conditional
	HiLink apdlRepeat	Repeat
	HiLink apdlTodo		Todo
	HiLink apdlFunction	Function
	HiLink apdlLabel	PreProc
	HiLink apdlSpecial	PreProc
	
	HiLink apdlError	Error
	HiLink apdlWarning	Todo
	HiLink apdlStringLine	Normal
	HiLink apdlBeforeLine	Normal
	HiLink apdlString	Normal
	HiLink apdlSpecial2	Question
	HiLink apdlSpecial3	Type
	HiLink apdlUnused	Unused
	"HiLink vimFoldIfContainer Conditional	
	"HiLink vimFoldIf Conditional	
	"HiLink vimFoldElseIf Conditional	
	"HiLink vimFoldElse Conditional	
	"HiLink vimFoldDoLoop Repeat	
	HiLink vimEofFold Unused	

	HiLink apdlAnything Normal	

	delcommand HiLink
	
endif
"}}}

"{{{Defining Comment Prefix
    :set comments=f:\!
"}}}

"{{{ Defining Language
    let b:current_syntax = "apdl"
"}}}
