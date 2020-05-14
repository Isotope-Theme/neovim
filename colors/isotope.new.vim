" -----------------------------------------------------------------------------
" File: isotope.vim 
" Description: Colorful scheme for Vim
" Author: Arden Rasmussen
" Source: https://github.com/Isotope-Theme/neovim
" -----------------------------------------------------------------------------

" Supporting code -------------------------------------------------------------
" Initalisation: \{\{\{
if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif
let g:colors_name="isotope"
if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif
" }}}
" Global Settings: \{\{\{
if !exists('g:isotope_bold')
  let g:isotope_bold=1
endif
if !exists('g:isotope_italic')
  if has('gui_running') || $TERM_ITALICS == 'true'
    let g:isotope_italic=1
  else
    let g:isotope_italic=0
  endif
endif
if !exists('g:isotope_undercurl')
  let g:isotope_undercurl=1
endif
if !exists('g:isotope_underline')
  let g:isotope_underline=1
endif
if !exists('g:isotope_inverse')
  let g:isotope_inverse=1
endif
if !exists('g:isotope_guisp_fallback') || index(['fg', 'bg'], g:isotope_guisp_fallback) == -1
  let g:isotope_guisp_fallback='NONE'
endif
if !exists('g:isotope_improved_strings')
  let g:isotope_improved_strings=0
endif
if !exists('g:isotope_improved_warnings')
  let g:isotope_improved_warnings=0
endif
if !exists('g:isotope_termcolors')
  let g:isotope_termcolors=256
endif
if !exists('g:isotope_invert_indent_guides')
  let g:isotope_invert_indent_guides=0
endif
if !exists('g:isotope_contrast_dark')
  let g:isotope_contrast_dark='medium'
endif
if !exists('g:isotope_contrast_light')
  let g:isotope_contrast_light='medium'
endif
let s:is_dark=(&background == 'dark')

" }}}
" Palette: \{\{\{
let g:isotope#palette = {}

let g:isotope#palette.dark0       = ['#263238',       59]
let g:isotope#palette.dark1       = ['#313D43',       59]
let g:isotope#palette.dark2       = ['#3D484E',       60]
let g:isotope#palette.dark3       = ['#495459',       66]
let g:isotope#palette.dark4       = ['#555F65',       102]
let g:isotope#palette.dark5       = ['#626B71',       102]
let g:isotope#palette.dark6       = ['#6F787D',       102]
let g:isotope#palette.dark7       = ['#7C8489',       109]

let g:isotope#palette.light0       = ['#899195',       145]
let g:isotope#palette.light1       = ['#979EA2',       145]
let g:isotope#palette.light2       = ['#A4ABAF',       145]
let g:isotope#palette.light3       = ['#B2B8BC',       152]
let g:isotope#palette.light4       = ['#C1C6C9',       188]
let g:isotope#palette.light5       = ['#CFD3D6',       188]
let g:isotope#palette.light6       = ['#DDE1E3',       188]
let g:isotope#palette.light7       = ['#ECEFF1',       231]

let g:isotope#palette.red0        = ['#BA000D',        160]
let g:isotope#palette.red1        = ['#F44336',        203]
let g:isotope#palette.red2        = ['#FF7961',        210]
let g:isotope#palette.pink0       = ['#B0003A',       125]
let g:isotope#palette.pink1       = ['#E91E63',       204]
let g:isotope#palette.pink2       = ['#FF6090',       211]
let g:isotope#palette.purple0     = ['#6A0080',     91]
let g:isotope#palette.purple1     = ['#9C27B0',     133]
let g:isotope#palette.purple2     = ['#D05CE3',     176]
let g:isotope#palette.deepPurple0 = ['#320B86', 55]
let g:isotope#palette.deepPurple1 = ['#673AB7', 98]
let g:isotope#palette.deepPurple2 = ['#9A67EA', 141]
let g:isotope#palette.indigo0     = ['#002984',     25]
let g:isotope#palette.indigo1     = ['#3F51B5',     68]
let g:isotope#palette.indigo2     = ['#757DE8',     105]
let g:isotope#palette.blue0       = ['#0069C0',       32]
let g:isotope#palette.blue1       = ['#2196F3',       75]
let g:isotope#palette.blue2       = ['#6EC6FF',       117]
let g:isotope#palette.lightBlue0  = ['#007AC1',  32]
let g:isotope#palette.lightBlue1  = ['#03A9F4',  39]
let g:isotope#palette.lightBlue2  = ['#67DAFF',  117]
let g:isotope#palette.cyan0       = ['#008BA3',       37]
let g:isotope#palette.cyan1       = ['#00BCD4',       44]
let g:isotope#palette.cyan2       = ['#62EFFF',       123]
let g:isotope#palette.teal0       = ['#00675B',       30]
let g:isotope#palette.teal1       = ['#009688',       37]
let g:isotope#palette.teal2       = ['#52C7B8',       116]
let g:isotope#palette.green0      = ['#087F23',      29]
let g:isotope#palette.green1      = ['#4CAF50',      72]
let g:isotope#palette.green2      = ['#80E27E',      150]
let g:isotope#palette.lightGreen0 = ['#5A9216', 106]
let g:isotope#palette.lightGreen1 = ['#8BC34A', 149]
let g:isotope#palette.lightGreen2 = ['#BEF67A', 192]
let g:isotope#palette.lime0       = ['#99AA00',       142]
let g:isotope#palette.lime1       = ['#CDDC39',       185]
let g:isotope#palette.lime2       = ['#FFFF6E',       228]
let g:isotope#palette.yellow0     = ['#C8B900',     184]
let g:isotope#palette.yellow1     = ['#FFEB3B',     227]
let g:isotope#palette.yellow2     = ['#FFFF72',     228]
let g:isotope#palette.amber0      = ['#C79100',      178]
let g:isotope#palette.amber1      = ['#FFC107',      220]
let g:isotope#palette.amber2      = ['#FFF350',      228]
let g:isotope#palette.orange0     = ['#C66900',     172]
let g:isotope#palette.orange1     = ['#FF9800',     214]
let g:isotope#palette.orange2     = ['#FFC947',     221]
let g:isotope#palette.deepOrange0 = ['#C41C00', 166]
let g:isotope#palette.deepOrange1 = ['#FF5722', 209]
let g:isotope#palette.deepOrange2 = ['#FF8A50', 216]
let g:isotope#palette.brown0      = ['#4B2C20',      59]
let g:isotope#palette.brown1      = ['#795548',      101]
let g:isotope#palette.brown2      = ['#A98274',      144]

" }}}
" Setup Emphasis: \{\{\{
let s:bold = 'bold,'
if g:isotope_bold == 0
  let s:bold = ''
endif
let s:italic= 'italic,'
if g:isotope_italic == 0
  let s:italic = ''
endif
let s:underline= 'underline,'
if g:isotope_underline == 0
  let s:underline = ''
endif
let s:undercurl= 'undercurl,'
if g:isotope_undercurl == 0
  let s:undercurl = ''
endif
let s:inverse= 'inverse,'
if g:isotope_inverse == 0
  let s:inverse = ''
endif
" }}}
" Setup Colors: \{\{\{
let s:vim_bg = ['bg', 'bg']
let s:vim_fg = ['fg', 'fg']
let s:none = ['NONE', 'NONE']

if s:is_dark
  let s:bg0 = g:isotope#palette.dark0
  if g:isotope_contrast_dark == 'soft'
    let s:bg0 = g:isotope#palette.dark0
  elseif g:isotope_contrast_dark == 'hard'
    let s:bg0 = g:isotope#palette.dark0
  endif
  let s:bg1 = g:isotope#palette.dark1
  let s:bg2 = g:isotope#palette.dark2
  let s:bg3 = g:isotope#palette.dark3
  let s:bg4 = g:isotope#palette.dark4

  let s:gray = g:isotope#palette.dark7

  let s:fg0 = g:isotope#palette.light6
  let s:fg1 = g:isotope#palette.light4
  let s:fg2 = g:isotope#palette.light3
  let s:fg3 = g:isotope#palette.light2
  let s:fg4 = g:isotope#palette.light1

  let s:fg5 = g:isotope#palette.light0

  let s:red        = g:isotope#palette.red2
  let s:pink       = g:isotope#palette.pink2
  let s:purple     = g:isotope#palette.purple2
  let s:deepPurple = g:isotope#palette.deepPurple2
  let s:indigo     = g:isotope#palette.indigo2
  let s:blue       = g:isotope#palette.blue2
  let s:lightBlue  = g:isotope#palette.lightBlue2
  let s:cyan       = g:isotope#palette.cyan2
  let s:teal       = g:isotope#palette.teal2
  let s:green      = g:isotope#palette.green2
  let s:lightGreen = g:isotope#palette.lightGreen2
  let s:lime       = g:isotope#palette.lime2
  let s:yellow     = g:isotope#palette.yellow2
  let s:amber      = g:isotope#palette.amber2
  let s:orange     = g:isotope#palette.orange2
  let s:deepOrange = g:isotope#palette.deepOrange2
  let s:brown      = g:isotope#palette.brown2
else
  let s:bg0 = g:isotope#palette.light6
  if g:isotope_contrast_dark == 'soft'
    let s:bg0 = g:isotope#palette.light5
  elseif g:isotope_contrast_dark == 'hard'
    let s:bg0 = g:isotope#palette.light7
  endif
  let s:bg1 = g:isotope#palette.light4
  let s:bg2 = g:isotope#palette.light3
  let s:bg3 = g:isotope#palette.light2
  let s:bg4 = g:isotope#palette.light1

  let s:gray = g:isotope#palette.light0

  let s:fg0 = g:isotope#palette.dark1
  let s:fg1 = g:isotope#palette.dark3
  let s:fg2 = g:isotope#palette.dark4
  let s:fg3 = g:isotope#palette.dark5
  let s:fg4 = g:isotope#palette.dark6

  let s:fg5 = g:isotope#palette.dark7

  let s:red        = g:isotope#palette.red0
  let s:pink       = g:isotope#palette.pink0
  let s:purple     = g:isotope#palette.purple0
  let s:deepPurple = g:isotope#palette.deepPurple0
  let s:indigo     = g:isotope#palette.indigo0
  let s:blue       = g:isotope#palette.blue0
  let s:lightBlue  = g:isotope#palette.lightBlue0
  let s:cyan       = g:isotope#palette.cyan0
  let s:teal       = g:isotope#palette.teal0
  let s:green      = g:isotope#palette.green0
  let s:lightGreen = g:isotope#palette.lightGreen0
  let s:lime       = g:isotope#palette.lime0
  let s:yellow     = g:isotope#palette.yellow0
  let s:amber      = g:isotope#palette.amber0
  let s:orange     = g:isotope#palette.orange0
  let s:deepOrange = g:isotope#palette.deepOrange0
  let s:brown      = g:isotope#palette.brown0
endif

if g:isotope_termcolors == 16
  let s:bg0[1]        = 0
  let s:fg4[1]        = 7
  let s:gray[1]       = 8
  let s:red[1]        = 9
  let s:pink[1]       = 9
  let s:purple[1]     = 13
  let s:deepPurple[1] = 13
  let s:indigo[1]     = 13
  let s:blue[1]       = 12
  let s:lightBlue[1]  = 12
  let s:cyan[1]       = 14
  let s:teal[1]       = 14
  let s:green[1]      = 10
  let s:lightGreen[1] = 10
  let s:lime[1]       = 10
  let s:yellow[1]     = 11
  let s:amber[1]      = 11
  let s:orange[1]     = 11
  let s:deepOrange[1] = 11
  let s:fg1[1]        = 15
endif
let g:isotope#palette.bg0 = s:bg0
let g:isotope#palette.bg1 = s:bg1
let g:isotope#palette.bg2 = s:bg2
let g:isotope#palette.bg3 = s:bg3
let g:isotope#palette.bg4 = s:bg4

let g:isotope#palette.gray = s:gray

let g:isotope#palette.fg0 = s:fg0
let g:isotope#palette.fg1 = s:fg1
let g:isotope#palette.fg2 = s:fg2
let g:isotope#palette.fg3 = s:fg3
let g:isotope#palette.fg4 = s:fg4
let g:isotope#palette.fg5 = s:fg5

let g:isotope#palette.red        = s:red
let g:isotope#palette.pink       = s:pink
let g:isotope#palette.purple     = s:purple
let g:isotope#palette.deepPurple = s:deepPurple
let g:isotope#palette.indigo     = s:indigo
let g:isotope#palette.blue       = s:blue
let g:isotope#palette.lightBlue  = s:lightBlue
let g:isotope#palette.cyan       = s:cyan
let g:isotope#palette.teal       = s:teal
let g:isotope#palette.green      = s:green
let g:isotope#palette.lightGreen = s:lightGreen
let g:isotope#palette.lime       = s:lime
let g:isotope#palette.yellow     = s:yellow
let g:isotope#palette.amber      = s:amber
let g:isotope#palette.orange     = s:orange
let g:isotope#palette.deepOrange = s:deepOrange
let g:isotope#palette.brown      = s:brown
" }}}
" Setup Terminal Colors for Neovim: \{\{\{
if has('nvim')
  let g:terminal_color_0  = g:isotope#palette.bg0[0]
  let g:terminal_color_8  = g:isotope#palette.gray[0]

  let g:terminal_color_1  = g:isotope#palette.red1[0]
  let g:terminal_color_9  = g:isotope#palette.red[0]

  let g:terminal_color_2  = g:isotope#palette.green1[0]
  let g:terminal_color_10 = g:isotope#palette.green[0]

  let g:terminal_color_3  = g:isotope#palette.yellow1[0]
  let g:terminal_color_11 = g:isotope#palette.yellow[0]

  let g:terminal_color_4  = g:isotope#palette.blue1[0]
  let g:terminal_color_12 = g:isotope#palette.blue[0]

  let g:terminal_color_5  = g:isotope#palette.purple1[0]
  let g:terminal_color_13 = g:isotope#palette.purple[0]

  let g:terminal_color_6  = g:isotope#palette.cyan1[0]
  let g:terminal_color_14 = g:isotope#palette.cyan[0]

  let g:terminal_color_7  = g:isotope#palette.fg4[0]
  let g:terminal_color_15 = g:isotope#palette.fg1[0]
endif
" }}}
" Overlaod Settings: \{\{\{
let s:hls_cursor = s:orange
if exists('g:isotope_hls_cursor')
  let s:hls_cursor = g:isotope_hls_cursor
endif
let s:number_column = s:bg1
if exists('g:isotope_number_column')
  let s:number_column = g:isotope_number_column
endif

let s:sign_column = s:bg2
if exists('g:gitgutter_override_sign_column_highligh') && g:gitgutter_override_sign_column_highlight == 1
  let s:sign_column = s:number_column
else
  let g:gitgutter_override_sign_column_highlight = 0
  if exists('g:isotope_sign_column')
    let s:sign_column = g:isotope_sign_column
  endif
endif
let s:color_column = s:bg1
if exists('g:isotope_color_column')
  let s:color_column = g:isotope_color_column
endif
let s:vert_split = s:bg0
if exists('g:isotope_vert_split')
  let s:vert_split = g:isotope_vert_split
endif
let s:invert_signs = ''
if exists('g:isotope_invert_signs')
  if g:isotope_invert_signs == 1
    let s:invert_signs = s:inverse
  endif
endif
let s:invert_selection = ''
if exists('g:isotope_invert_selection')
  if g:isotope_invert_selection == 1
    let s:invert_selection = s:inverse
  endif
endif
let s:invert_tabline = ''
if exists('g:isotope_invert_tabline')
  if g:isotope_invert_tabline == 1
    let s:invert_tabline = s:inverse
  endif
endif
let s:italicize_comments = s:italic
if exists('g:isotope_italicize_comments')
  if g:isotope_italicize_comments == 0
    let s:italicize_comments = ''
  endif
endif
let s:italicize_strings = ''
if exists('g:isotope_italicize_strings')
  if g:isotope_italicize_strings == 1
    let s:italicize_strings = s:italic
  endif
endif

" }}}
" Highlighting Function: \{\{\{
function! s:HL(group, fg, ...)
  " Arguments: group, guifg, guibg, gui, guisp

  let fg = a:fg
  if a:0 >= 1
    let bg = a:1
  else
    let bg = s:none
  endif

  if a:0 >= 2 && strlen(a:2)
    let emstr = a:2
  else
    let emstr = 'NONE,'
  endif

  if a:0 >= 3
    if g:isotope_guisp_fallback != 'NONE'
      let fg = a:3
    endif
    if g:isotope_guisp_fallback == 'bg'
      let emstr .= 'inverse,'
    endif
  endif

  let histring = ['hi', a:group, 'guifg=' . fg[0], 'ctermfg=' . fg[1], 'guibg=' . bg[0], 'ctermbg=' . bg[1], 'gui=' . emstr[:-2], 'cterm=' . emstr[:-2]]

  if a:0 >= 3
    call add(histring, 'guisp=' . a:3[0])
  endif
  execute join(histring, ' ')
endfunction
" }}}
" Isotope HI Groups: \{\{\{
call s:HL('IsotopeFg0',  s:fg0)
call s:HL('IsotopeFg1',  s:fg1)
call s:HL('IsotopeFg2',  s:fg2)
call s:HL('IsotopeFg3',  s:fg3)
call s:HL('IsotopeFg4',  s:fg4)
call s:HL('IsotopeGray', s:gray)
call s:HL('IsotopeBg0',  s:bg0)
call s:HL('IsotopeBg1',  s:bg1)
call s:HL('IsotopeBg2',  s:bg2)
call s:HL('IsotopeBg3',  s:bg3)
call s:HL('IsotopeBg4',  s:bg4)

call s:HL('IsotopeRed',            s:red)
call s:HL('IsotopeRedBold',        s:red,        s:none, s:bold)
call s:HL('IsotopePink',           s:pink)
call s:HL('IsotopePinkBold',       s:pink,       s:none, s:bold)
call s:HL('IsotopePurple',         s:purple)
call s:HL('IsotopePurpleBold',     s:purple,     s:none, s:bold)
call s:HL('IsotopeDeepPurple',     s:deepPurple)
call s:HL('IsotopeDeepPurpleBold', s:deepPurple, s:none, s:bold)
call s:HL('IsotopeIndigo',         s:indigo)
call s:HL('IsotopeIndigoBold',     s:indigo,     s:none, s:bold)
call s:HL('IsotopeBlue',           s:blue)
call s:HL('IsotopeBlueBold',       s:blue,       s:none, s:bold)
call s:HL('IsotopeLightBlue',      s:lightBlue)
call s:HL('IsotopeLightBlueBold',  s:lightBlue,  s:none, s:bold)
call s:HL('IsotopeCyan',           s:cyan)
call s:HL('IsotopeCyanBold',       s:cyan,       s:none, s:bold)
call s:HL('IsotopeTeal',           s:teal)
call s:HL('IsotopeTealBold',       s:teal,       s:none, s:bold)
call s:HL('IsotopeGreen',          s:green)
call s:HL('IsotopeGreenBold',      s:green,      s:none, s:bold)
call s:HL('IsotopeLightGreen',     s:lightGreen)
call s:HL('IsotopeLightGreenBold', s:lightGreen, s:none, s:bold)
call s:HL('IsotopeLime',           s:lime)
call s:HL('IsotopeLimeBold',       s:lime,       s:none, s:bold)
call s:HL('IsotopeYellow',         s:yellow)
call s:HL('IsotopeYellowBold',     s:yellow,     s:none, s:bold)
call s:HL('IsotopeAmber',          s:amber)
call s:HL('IsotopeAmberBold',      s:amber,      s:none, s:bold)
call s:HL('IsotopeOrange',         s:orange)
call s:HL('IsotopeOrangeBold',     s:orange,     s:none, s:bold)
call s:HL('IsotopeDeepOrange',     s:deepOrange)
call s:HL('IsotopeDeepOrangeBold', s:deepOrange, s:none, s:bold)
call s:HL('IsotopeBrown',          s:brown)
call s:HL('IsotopeBrownBold',      s:brown,      s:none, s:bold)

call s:HL('IsotopeRedSign',        s:red,        s:sign_column, s:invert_signs)
call s:HL('IsotopePinkSign',       s:pink,       s:sign_column, s:invert_signs)
call s:HL('IsotopePurpleSign',     s:purple,     s:sign_column, s:invert_signs)
call s:HL('IsotopeDeepPurpleSign', s:deepPurple, s:sign_column, s:invert_signs)
call s:HL('IsotopeIndigoSign',     s:indigo,     s:sign_column, s:invert_signs)
call s:HL('IsotopeBlueSign',       s:blue,       s:sign_column, s:invert_signs)
call s:HL('IsotopeLightBlueSign',  s:lightBlue,  s:sign_column, s:invert_signs)
call s:HL('IsotopeCyanSign',       s:cyan,       s:sign_column, s:invert_signs)
call s:HL('IsotopeTealSign',       s:teal,       s:sign_column, s:invert_signs)
call s:HL('IsotopeGreenSign',      s:green,      s:sign_column, s:invert_signs)
call s:HL('IsotopeLightGreenSign', s:lightGreen, s:sign_column, s:invert_signs)
call s:HL('IsotopeLimeSign',       s:lime,       s:sign_column, s:invert_signs)
call s:HL('IsotopeYellowSign',     s:yellow,     s:sign_column, s:invert_signs)
call s:HL('IsotopeAmberSign',      s:amber,      s:sign_column, s:invert_signs)
call s:HL('IsotopeOrangeSign',     s:orange,     s:sign_column, s:invert_signs)
call s:HL('IsotopeDeepOrangeSign', s:deepOrange, s:sign_column, s:invert_signs)
call s:HL('IsotopeBrownSign',      s:brown,      s:sign_column, s:invert_signs)
" }}} 

" Vanilla colorscheme ---------------------------------------------------------
" General UI: \{\{\{

" Normal text
call s:HL('Inherit', '', '')
call s:HL('Normal', s:fg1, s:bg0)

if s:is_dark
  set background=dark
else
  set background=light
endif

if version >= 700
  " Screen line that the cursor is
  call s:HL('CursorLine',   s:none, s:bg1)
  " Screen column that the cursor is
  hi! link CursorColumn CursorLine

  " Tab pages line filler
  call s:HL('TabLineFill', s:bg4, s:bg1, s:invert_tabline)
  " Active tab page label
  call s:HL('TabLineSel', s:green, s:bg1, s:invert_tabline)
  " Not active tab page label
  hi! link TabLine TabLineFill

  " Match paired bracket under the cursor
  call s:HL('MatchParen', s:none, s:bg3, s:bold)
endif

if version >= 703
  " Highlighted screen columns
  call s:HL('ColorColumn',  s:none, s:color_column)

  " Concealed element: \lambda → λ
  call s:HL('Conceal', s:blue, s:none)

  " Line number of CursorLine
  call s:HL('CursorLineNr', s:blue, s:bg1, s:bold)
endif

hi! link NonText IsotopeBg2
hi! link SpecialKey IsotopeBg2

call s:HL('Visual',    s:none,  s:bg2, s:invert_selection)
hi! link VisualNOS Visual

call s:HL('Search',    s:yellow, s:bg2, s:inverse)
call s:HL('IncSearch', s:hls_cursor, s:bg0, s:inverse)

call s:HL('Underlined', s:lightBlue, s:none, s:underline)

call s:HL('StatusLine',   s:bg2, s:fg1, s:inverse)
call s:HL('StatusLineNC', s:bg1, s:fg4, s:inverse)

" The column separating vertically split windows
call s:HL('VertSplit', s:bg2, s:vert_split)

" Current match in wildmenu completion
call s:HL('WildMenu', s:blue, s:bg2, s:bold)

" Directory names, special names in listing
hi! link Directory IsotopeBlue

" Titles for output from :set all, :autocmd, etc.
hi! link Title IsotopeGreenBold

" Error messages on the command line
call s:HL('ErrorMsg',   s:bg0, s:red, s:bold)
" More prompt: -- More --
hi! link MoreMsg IsotopeAmberBold
" Current mode message: -- INSERT --
hi! link ModeMsg IsotopeAmberBold
" 'Press enter' prompt and yes/no questions
hi! link Question IsotopeOrangeBold
" Warning messages
hi! link WarningMsg IsotopeRedBold

" }}}
" Gutter: \{\{\{

" Line number for :number and :# commands
call s:HL('LineNr', s:bg3, s:number_column)

" Column where signs are displayed
call s:HL('SignColumn', s:bg3, s:sign_column)

" Line used for closed folds
call s:HL('Folded', s:gray, s:bg1, s:italic)
" Column where folds are displayed
call s:HL('FoldColumn', s:gray, s:bg1, s:italic)

" }}}
" Cursor: \{\{\{

" Character under cursor
call s:HL('Cursor', s:none, s:none, s:inverse)
" Visual mode cursor, selection
hi! link vCursor Cursor
" Input moder cursor
hi! link iCursor Cursor
" Language mapping cursor
hi! link lCursor Cursor

" }}}
" Syntax Highlighting: \{\{\{

if g:isotope_improved_strings == 0
  hi! link Special IsotopeCyan
else
  call s:HL('Special', s:cyan, s:bg1, s:italicize_strings)
endif

call s:HL('Comment', s:bg4, s:none, s:italicize_comments)
call s:HL('Todo', s:amber, s:bg1, s:bold . s:italic)
call s:HL('Error', s:red, s:bg1, s:bold . s:inverse)

" Generic statement
hi! link Statement IsotopeRed
" if, then, else, endif, swicth, etc.
hi! link Conditional IsotopePurple
" for, do, while, etc.
hi! link Repeat IsotopeYellow
" case, default, etc.
hi! link Label IsotopeAmber
" try, catch, throw
hi! link Exception IsotopeRed
" sizeof, "+", "*", etc.
hi! link Operator Inherit
" Any other keyword
hi! link Keyword IsotopePurple

" Variable name
hi! link Identifier IsotopeRed
" Function name
hi! link Function IsotopeBlue

" Generic preprocessor
hi! link PreProc IsotopeAmber
" Preprocessor #include
hi! link Include IsotopeBlue
" Preprocessor #define
hi! link Define IsotopePurple
" Same as Define
hi! link Macro IsotopeRed
" Preprocessor #if, #else, #endif, etc.
hi! link PreCondit IsotopePurple

" Generic constant
hi! link Constant IsotopeOrange
" Character constant: 'c', '/n'
hi! link Character IsotopeOrange
" String constant: "this is a string"
if g:isotope_improved_strings == 0
  call s:HL('String',  s:green, '', s:italicize_strings)
else
  call s:HL('String',  s:green, '', s:italicize_strings)
endif
" Boolean constant: TRUE, false
hi! link Boolean IsotopeOrange
" Number constant: 234, 0xff
hi! link Number IsotopeOrange
" Floating point constant: 2.3e10
hi! link Float IsotopeOrange

" Generic type
hi! link Type IsotopeAmber
" static, register, volatile, etc
hi! link StorageClass IsotopeAmber
" struct, union, enum, etc.
hi! link Structure IsotopePurple
" typedef
hi! link Typedef IsotopeYellow

" }}}
" Completion Menu: \{\{\{

if version >= 700
  " Popup menu: normal item
  call s:HL('Pmenu', s:fg1, s:bg2)
  " Popup menu: selected item
  call s:HL('PmenuSel', s:bg2, s:blue, s:bold)
  " Popup menu: scrollbar
  call s:HL('PmenuSbar', s:none, s:bg2)
  " Popup menu: scrollbar thumb
  call s:HL('PmenuThumb', s:none, s:bg4)
endif

" }}}
" Diffs: \{\{\{

call s:HL('DiffDelete', s:red, s:bg0, s:inverse)
call s:HL('DiffAdd',    s:green, s:bg0, s:inverse)
"call s:HL('DiffChange', s:bg0, s:blue)
"call s:HL('DiffText',   s:bg0, s:yellow)

" Alternative setting
call s:HL('DiffChange', s:cyan, s:bg0, s:inverse)
call s:HL('DiffText',   s:yellow, s:bg0, s:inverse)

" }}}
" Spelling: \{\{\{

if has("spell")
  " Not capitalised word, or compile warnings
  if g:isotope_improved_warnings == 0
    call s:HL('SpellCap',   s:none, s:none, s:undercurl, s:red)
  else
    call s:HL('SpellCap',   s:green, s:none, s:bold . s:italic)
  endif
  " Not recognized word
  call s:HL('SpellBad',   s:none, s:none, s:undercurl, s:blue)
  " Wrong spelling for selected region
  call s:HL('SpellLocal', s:none, s:none, s:undercurl, s:cyan)
  " Rare word
  call s:HL('SpellRare',  s:none, s:none, s:undercurl, s:purple)
endif

" }}}

" Plugin specific -------------------------------------------------------------
" EasyMotion: \{\{\{

hi! link EasyMotionTarget Search
hi! link EasyMotionShade Comment

" }}}
" Sneak: \{\{\{

hi! link Sneak Search
hi! link SneakLabel Search

" }}}
" Indent Guides: \{\{\{

if !exists('g:indent_guides_auto_colors')
  let g:indent_guides_auto_colors = 0
endif

if g:indent_guides_auto_colors == 0
  if g:isotope_invert_indent_guides == 0
    call s:HL('IndentGuidesOdd', s:vim_bg, s:bg2)
    call s:HL('IndentGuidesEven', s:vim_bg, s:bg1)
  else
    call s:HL('IndentGuidesOdd', s:vim_bg, s:bg2, s:inverse)
    call s:HL('IndentGuidesEven', s:vim_bg, s:bg3, s:inverse)
  endif
endif

" }}}
" IndentLine: \{\{\{

if !exists('g:indentLine_color_term')
  let g:indentLine_color_term = s:bg2[1]
endif
if !exists('g:indentLine_color_gui')
  let g:indentLine_color_gui = s:bg2[0]
endif

" }}}
" Rainbow Parentheses: \{\{\{

if !exists('g:rbpt_colorpairs')
  let g:rbpt_colorpairs =
    \ [
      \ ['blue', '#458588'], ['magenta', '#b16286'],
      \ ['red',  '#cc241d'], ['166',     '#d65d0e']
    \ ]
endif

let g:rainbow_guifgs = [ '#d65d0e', '#cc241d', '#b16286', '#458588' ]
let g:rainbow_ctermfgs = [ '166', 'red', 'magenta', 'blue' ]

if !exists('g:rainbow_conf')
   let g:rainbow_conf = {}
endif
if !has_key(g:rainbow_conf, 'guifgs')
   let g:rainbow_conf['guifgs'] = g:rainbow_guifgs
endif
if !has_key(g:rainbow_conf, 'ctermfgs')
   let g:rainbow_conf['ctermfgs'] = g:rainbow_ctermfgs
endif

let g:niji_dark_colours = g:rbpt_colorpairs
let g:niji_light_colours = g:rbpt_colorpairs

"}}}
" GitGutter: \{\{\{

hi! link GitGutterAdd IsotopeGreenSign
hi! link GitGutterChange IsotopeCyanSign
hi! link GitGutterDelete IsotopeRedSign
hi! link GitGutterChangeDelete IsotopeCyanSign

" }}}
" GitCommit: "\{\{\{

hi! link gitcommitSelectedFile IsotopeGreen
hi! link gitcommitDiscardedFile IsotopeRed

" }}}
" Signify: \{\{\{

hi! link SignifySignAdd IsotopeGreenSign
hi! link SignifySignChange IsotopeCyanSign
hi! link SignifySignDelete IsotopeRedSign

" }}}
" Syntastic: \{\{\{

call s:HL('SyntasticError', s:none, s:none, s:undercurl, s:red)
call s:HL('SyntasticWarning', s:none, s:none, s:undercurl, s:yellow)

hi! link SyntasticErrorSign IsotopeRedSign
hi! link SyntasticWarningSign IsotopeYellowSign

" }}}
" Signature: \{\{\{
hi! link SignatureMarkText   IsotopeBlueSign
hi! link SignatureMarkerText IsotopePurpleSign

" }}}
" ShowMarks: \{\{\{

hi! link ShowMarksHLl IsotopeBlueSign
hi! link ShowMarksHLu IsotopeBlueSign
hi! link ShowMarksHLo IsotopeBlueSign
hi! link ShowMarksHLm IsotopeBlueSign

" }}}
" CtrlP: \{\{\{

hi! link CtrlPMatch IsotopeYellow
hi! link CtrlPNoEntries IsotopeRed
hi! link CtrlPPrtBase IsotopeBg2
hi! link CtrlPPrtCursor IsotopeBlue
hi! link CtrlPLinePre IsotopeBg2

call s:HL('CtrlPMode1', s:blue, s:bg2, s:bold)
call s:HL('CtrlPMode2', s:bg0, s:blue, s:bold)
call s:HL('CtrlPStats', s:fg4, s:bg2, s:bold)

" }}}
" Startify: \{\{\{

hi! link StartifyBracket IsotopeFg3
hi! link StartifyFile IsotopeFg1
hi! link StartifyNumber IsotopeBlue
hi! link StartifyPath IsotopeGray
hi! link StartifySlash IsotopeGray
hi! link StartifySection IsotopeYellow
hi! link StartifySpecial IsotopeBg2
hi! link StartifyHeader IsotopeOrange
hi! link StartifyFooter IsotopeBg2

" }}}
" Vimshell: \{\{\{

let g:vimshell_escape_colors = [
  \ s:bg4[0], s:red[0], s:green[0], s:yellow[0],
  \ s:blue[0], s:purple[0], s:cyan[0], s:fg4[0],
  \ s:bg0[0], s:red[0], s:green[0], s:orange[0],
  \ s:blue[0], s:purple[0], s:cyan[0], s:fg0[0]
  \ ]

" }}}
" BufTabLine: \{\{\{

call s:HL('BufTabLineCurrent', s:bg0, s:fg4)
call s:HL('BufTabLineActive', s:fg4, s:bg2)
call s:HL('BufTabLineHidden', s:bg4, s:bg1)
call s:HL('BufTabLineFill', s:bg0, s:bg0)

" }}}
" Asynchronous Lint Engine: \{\{\{

call s:HL('ALEError', s:none, s:none, s:undercurl, s:red)
call s:HL('ALEWarning', s:none, s:none, s:undercurl, s:yellow)
call s:HL('ALEInfo', s:none, s:none, s:undercurl, s:blue)

hi! link ALEErrorSign IsotopeRedSign
hi! link ALEWarningSign IsotopeYellowSign
hi! link ALEInfoSign IsotopeBlueSign

" }}}
" Dirvish: \{\{\{

hi! link DirvishPathTail IsotopeCyan
hi! link DirvishArg IsotopeYellow

" }}}
" Netrw: \{\{\{

hi! link netrwDir IsotopeCyan
hi! link netrwClassify IsotopeCyan
hi! link netrwLink IsotopeGray
hi! link netrwSymLink IsotopeFg1
hi! link netrwExe IsotopeYellow
hi! link netrwComment IsotopeGray
hi! link netrwList IsotopeBlue
hi! link netrwHelpCmd IsotopeCyan
hi! link netrwCmdSep IsotopeFg3
hi! link netrwVersion IsotopeGreen

" }}}
" NERDTree: \{\{\{

hi! link NERDTreeDir IsotopeCyan
hi! link NERDTreeDirSlash IsotopeCyan

hi! link NERDTreeOpenable IsotopeOrange
hi! link NERDTreeClosable IsotopeOrange

hi! link NERDTreeFile IsotopeFg1
hi! link NERDTreeExecFile IsotopeYellow

hi! link NERDTreeUp IsotopeGray
hi! link NERDTreeCWD IsotopeGreen
hi! link NERDTreeHelp IsotopeFg1

hi! link NERDTreeToggleOn IsotopeGreen
hi! link NERDTreeToggleOff IsotopeRed

" }}}
" Vim Multiple Cursors: \{\{\{

call s:HL('multiple_cursors_cursor', s:none, s:none, s:inverse)
call s:HL('multiple_cursors_visual', s:none, s:bg2)

" }}}
" coc.nvim: \{\{\{

hi! link CocErrorSign IsotopeRedSign
hi! link CocWarningSign IsotopeOrangeSign
hi! link CocInfoSign IsotopeYellowSign
hi! link CocHintSign IsotopeBlueSign
hi! link CocErrorFloat IsotopeRed
hi! link CocWarningFloat IsotopeOrange
hi! link CocInfoFloat IsotopeYellow
hi! link CocHintFloat IsotopeBlue
hi! link CocDiagnosticsError IsotopeRed
hi! link CocDiagnosticsWarning IsotopeOrange
hi! link CocDiagnosticsInfo IsotopeYellow
hi! link CocDiagnosticsHint IsotopeBlue

hi! link CocSelectedText IsotopeRed
hi! link CocCodeLens IsotopeGray

call s:HL('CocErrorHighlight', s:none, s:none, s:undercurl, s:red)
call s:HL('CocWarningHighlight', s:none, s:none, s:undercurl, s:orange)
call s:HL('CocInfoHighlight', s:none, s:none, s:undercurl, s:yellow)
call s:HL('CocHintHighlight', s:none, s:none, s:undercurl, s:blue)

" }}}

" Filetype specific -----------------------------------------------------------
" Diff: \{\{\{

hi! link diffAdded IsotopeGreen
hi! link diffRemoved IsotopeRed
hi! link diffChanged IsotopeCyan

hi! link diffFile IsotopeOrange
hi! link diffNewFile IsotopeYellow

hi! link diffLine IsotopeBlue

" }}}
" Html: \{\{\{

hi! link htmlTag IsotopeBlue
hi! link htmlEndTag IsotopeBlue

hi! link htmlTagName IsotopeCyanBold
hi! link htmlArg IsotopeCyan

hi! link htmlScriptTag IsotopePurple
hi! link htmlTagN IsotopeFg1
hi! link htmlSpecialTagName IsotopeCyanBold

call s:HL('htmlLink', s:fg4, s:none, s:underline)

hi! link htmlSpecialChar IsotopeOrange

call s:HL('htmlBold', s:vim_fg, s:vim_bg, s:bold)
call s:HL('htmlBoldUnderline', s:vim_fg, s:vim_bg, s:bold . s:underline)
call s:HL('htmlBoldItalic', s:vim_fg, s:vim_bg, s:bold . s:italic)
call s:HL('htmlBoldUnderlineItalic', s:vim_fg, s:vim_bg, s:bold . s:underline . s:italic)

call s:HL('htmlUnderline', s:vim_fg, s:vim_bg, s:underline)
call s:HL('htmlUnderlineItalic', s:vim_fg, s:vim_bg, s:underline . s:italic)
call s:HL('htmlItalic', s:vim_fg, s:vim_bg, s:italic)

" }}}
" Xml: \{\{\{

hi! link xmlTag IsotopeBlue
hi! link xmlEndTag IsotopeBlue
hi! link xmlTagName IsotopeBlue
hi! link xmlEqual IsotopeBlue
hi! link docbkKeyword IsotopeCyanBold

hi! link xmlDocTypeDecl IsotopeGray
hi! link xmlDocTypeKeyword IsotopePurple
hi! link xmlCdataStart IsotopeGray
hi! link xmlCdataCdata IsotopePurple
hi! link dtdFunction IsotopeGray
hi! link dtdTagName IsotopePurple

hi! link xmlAttrib IsotopeCyan
hi! link xmlProcessingDelim IsotopeGray
hi! link dtdParamEntityPunct IsotopeGray
hi! link dtdParamEntityDPunct IsotopeGray
hi! link xmlAttribPunct IsotopeGray

hi! link xmlEntity IsotopeOrange
hi! link xmlEntityPunct IsotopeOrange
" }}}
" Vim: \{\{\{

call s:HL('vimCommentTitle', s:fg5, s:none, s:bold . s:italicize_comments)

hi! link vimNotation IsotopeOrange
hi! link vimBracket IsotopeOrange
hi! link vimMapModKey IsotopeOrange
hi! link vimFuncSID IsotopeFg3
hi! link vimSetSep IsotopeFg3
hi! link vimSep IsotopeFg3
hi! link vimContinue IsotopeFg3

" }}}
" Clojure: \{\{\{

hi! link clojureKeyword IsotopeBlue
hi! link clojureCond IsotopeOrange
hi! link clojureSpecial IsotopeOrange
hi! link clojureDefine IsotopeOrange

hi! link clojureFunc IsotopeYellow
hi! link clojureRepeat IsotopeYellow
hi! link clojureCharacter IsotopeCyan
hi! link clojureStringEscape IsotopeCyan
hi! link clojureException IsotopeRed

hi! link clojureRegexp IsotopeCyan
hi! link clojureRegexpEscape IsotopeCyan
call s:HL('clojureRegexpCharClass', s:fg3, s:none, s:bold)
hi! link clojureRegexpMod clojureRegexpCharClass
hi! link clojureRegexpQuantifier clojureRegexpCharClass

hi! link clojureParen IsotopeFg3
hi! link clojureAnonArg IsotopeYellow
hi! link clojureVariable IsotopeBlue
hi! link clojureMacro IsotopeOrange

hi! link clojureMeta IsotopeYellow
hi! link clojureDeref IsotopeYellow
hi! link clojureQuote IsotopeYellow
hi! link clojureUnquote IsotopeYellow

" }}}
" C: \{\{\{

hi! link cOperator IsotopePurple
hi! link cStructure IsotopeOrange

" }}}
" Python: \{\{\{

hi! link pythonBuiltin IsotopeOrange
hi! link pythonBuiltinObj IsotopeOrange
hi! link pythonBuiltinFunc IsotopeOrange
hi! link pythonFunction IsotopeCyan
hi! link pythonDecorator IsotopeRed
hi! link pythonInclude IsotopeBlue
hi! link pythonImport IsotopeBlue
hi! link pythonRun IsotopeBlue
hi! link pythonCoding IsotopeBlue
hi! link pythonOperator IsotopeRed
hi! link pythonException IsotopeRed
hi! link pythonExceptions IsotopePurple
hi! link pythonBoolean IsotopePurple
hi! link pythonDot IsotopeFg3
hi! link pythonConditional IsotopeRed
hi! link pythonRepeat IsotopeRed
hi! link pythonDottedName IsotopeGreenBold

" }}}
" CSS: \{\{\{

hi! link cssBraces IsotopeBlue
hi! link cssFunctionName IsotopeYellow
hi! link cssIdentifier IsotopeOrange
hi! link cssClassName IsotopeGreen
hi! link cssColor IsotopeBlue
hi! link cssSelectorOp IsotopeBlue
hi! link cssSelectorOp2 IsotopeBlue
hi! link cssImportant IsotopeGreen
hi! link cssVendor IsotopeFg1

hi! link cssTextProp IsotopeCyan
hi! link cssAnimationProp IsotopeCyan
hi! link cssUIProp IsotopeYellow
hi! link cssTransformProp IsotopeCyan
hi! link cssTransitionProp IsotopeCyan
hi! link cssPrintProp IsotopeCyan
hi! link cssPositioningProp IsotopeYellow
hi! link cssBoxProp IsotopeCyan
hi! link cssFontDescriptorProp IsotopeCyan
hi! link cssFlexibleBoxProp IsotopeCyan
hi! link cssBorderOutlineProp IsotopeCyan
hi! link cssBackgroundProp IsotopeCyan
hi! link cssMarginProp IsotopeCyan
hi! link cssListProp IsotopeCyan
hi! link cssTableProp IsotopeCyan
hi! link cssFontProp IsotopeCyan
hi! link cssPaddingProp IsotopeCyan
hi! link cssDimensionProp IsotopeCyan
hi! link cssRenderProp IsotopeCyan
hi! link cssColorProp IsotopeCyan
hi! link cssGeneratedContentProp IsotopeCyan

" }}}
" JavaScript: \{\{\{

hi! link javaScriptBraces IsotopeFg1
hi! link javaScriptFunction IsotopeCyan
hi! link javaScriptIdentifier IsotopeRed
hi! link javaScriptMember IsotopeBlue
hi! link javaScriptNumber IsotopePurple
hi! link javaScriptNull IsotopePurple
hi! link javaScriptParens IsotopeFg3

" }}}
" YAJS: \{\{\{

hi! link javascriptImport IsotopeCyan
hi! link javascriptExport IsotopeCyan
hi! link javascriptClassKeyword IsotopeCyan
hi! link javascriptClassExtends IsotopeCyan
hi! link javascriptDefault IsotopeCyan

hi! link javascriptClassName IsotopeYellow
hi! link javascriptClassSuperName IsotopeYellow
hi! link javascriptGlobal IsotopeYellow

hi! link javascriptEndColons IsotopeFg1
hi! link javascriptFuncArg IsotopeFg1
hi! link javascriptGlobalMethod IsotopeFg1
hi! link javascriptNodeGlobal IsotopeFg1
hi! link javascriptBOMWindowProp IsotopeFg1
hi! link javascriptArrayMethod IsotopeFg1
hi! link javascriptArrayStaticMethod IsotopeFg1
hi! link javascriptCacheMethod IsotopeFg1
hi! link javascriptDateMethod IsotopeFg1
hi! link javascriptMathStaticMethod IsotopeFg1

" hi! link javascriptProp IsotopeFg1
hi! link javascriptURLUtilsProp IsotopeFg1
hi! link javascriptBOMNavigatorProp IsotopeFg1
hi! link javascriptDOMDocMethod IsotopeFg1
hi! link javascriptDOMDocProp IsotopeFg1
hi! link javascriptBOMLocationMethod IsotopeFg1
hi! link javascriptBOMWindowMethod IsotopeFg1
hi! link javascriptStringMethod IsotopeFg1

hi! link javascriptVariable IsotopeOrange
" hi! link javascriptVariable IsotopeRed
" hi! link javascriptIdentifier IsotopeOrange
" hi! link javascriptClassSuper IsotopeOrange
hi! link javascriptIdentifier IsotopeOrange
hi! link javascriptClassSuper IsotopeOrange

" hi! link javascriptFuncKeyword IsotopeOrange
" hi! link javascriptAsyncFunc IsotopeOrange
hi! link javascriptFuncKeyword IsotopeCyan
hi! link javascriptAsyncFunc IsotopeCyan
hi! link javascriptClassStatic IsotopeOrange

hi! link javascriptOperator IsotopeRed
hi! link javascriptForOperator IsotopeRed
hi! link javascriptYield IsotopeRed
hi! link javascriptExceptions IsotopeRed
hi! link javascriptMessage IsotopeRed

hi! link javascriptTemplateSB IsotopeCyan
hi! link javascriptTemplateSubstitution IsotopeFg1

" hi! link javascriptLabel IsotopeBlue
" hi! link javascriptObjectLabel IsotopeBlue
" hi! link javascriptPropertyName IsotopeBlue
hi! link javascriptLabel IsotopeFg1
hi! link javascriptObjectLabel IsotopeFg1
hi! link javascriptPropertyName IsotopeFg1

hi! link javascriptLogicSymbols IsotopeFg1
hi! link javascriptArrowFunc IsotopeYellow

hi! link javascriptDocParamName IsotopeFg4
hi! link javascriptDocTags IsotopeFg4
hi! link javascriptDocNotation IsotopeFg4
hi! link javascriptDocParamType IsotopeFg4
hi! link javascriptDocNamedParamType IsotopeFg4

hi! link javascriptBrackets IsotopeFg1
hi! link javascriptDOMElemAttrs IsotopeFg1
hi! link javascriptDOMEventMethod IsotopeFg1
hi! link javascriptDOMNodeMethod IsotopeFg1
hi! link javascriptDOMStorageMethod IsotopeFg1
hi! link javascriptHeadersMethod IsotopeFg1

hi! link javascriptAsyncFuncKeyword IsotopeRed
hi! link javascriptAwaitFuncKeyword IsotopeRed

" }}}
" PanglossJS: \{\{\{

hi! link jsClassKeyword IsotopeCyan
hi! link jsExtendsKeyword IsotopeCyan
hi! link jsExportDefault IsotopeCyan
hi! link jsTemplateBraces IsotopeCyan
hi! link jsGlobalNodeObjects IsotopeFg1
hi! link jsGlobalObjects IsotopeFg1
hi! link jsFunction IsotopeCyan
hi! link jsFuncParens IsotopeFg3
hi! link jsParens IsotopeFg3
hi! link jsNull IsotopePurple
hi! link jsUndefined IsotopePurple
hi! link jsClassDefinition IsotopeYellow

" }}}
" TypeScript: \{\{\{

hi! link typeScriptReserved IsotopeCyan
hi! link typeScriptLabel IsotopeCyan
hi! link typeScriptFuncKeyword IsotopeCyan
hi! link typeScriptIdentifier IsotopeOrange
hi! link typeScriptBraces IsotopeFg1
hi! link typeScriptEndColons IsotopeFg1
hi! link typeScriptDOMObjects IsotopeFg1
hi! link typeScriptAjaxMethods IsotopeFg1
hi! link typeScriptLogicSymbols IsotopeFg1
hi! link typeScriptDocSeeTag Comment
hi! link typeScriptDocParam Comment
hi! link typeScriptDocTags vimCommentTitle
hi! link typeScriptGlobalObjects IsotopeFg1
hi! link typeScriptParens IsotopeFg3
hi! link typeScriptOpSymbols IsotopeFg3
hi! link typeScriptHtmlElemProperties IsotopeFg1
hi! link typeScriptNull IsotopePurple
hi! link typeScriptInterpolationDelimiter IsotopeCyan

" }}}
" PureScript: \{\{\{

hi! link purescriptModuleKeyword IsotopeCyan
hi! link purescriptModuleName IsotopeFg1
hi! link purescriptWhere IsotopeCyan
hi! link purescriptDelimiter IsotopeFg4
hi! link purescriptType IsotopeFg1
hi! link purescriptImportKeyword IsotopeCyan
hi! link purescriptHidingKeyword IsotopeCyan
hi! link purescriptAsKeyword IsotopeCyan
hi! link purescriptStructure IsotopeCyan
hi! link purescriptOperator IsotopeBlue

hi! link purescriptTypeVar IsotopeFg1
hi! link purescriptConstructor IsotopeFg1
hi! link purescriptFunction IsotopeFg1
hi! link purescriptConditional IsotopeOrange
hi! link purescriptBacktick IsotopeOrange

" }}}
" CoffeeScript: \{\{\{

hi! link coffeeExtendedOp IsotopeFg3
hi! link coffeeSpecialOp IsotopeFg3
hi! link coffeeCurly IsotopeOrange
hi! link coffeeParen IsotopeFg3
hi! link coffeeBracket IsotopeOrange

" }}}
" Ruby: \{\{\{

hi! link rubyStringDelimiter IsotopeGreen
hi! link rubyInterpolationDelimiter IsotopeCyan

" }}}
" ObjectiveC: \{\{\{

hi! link objcTypeModifier IsotopeRed
hi! link objcDirective IsotopeBlue

" }}}
" Go: \{\{\{

hi! link goDirective IsotopeCyan
hi! link goConstants IsotopePurple
hi! link goDeclaration IsotopeRed
hi! link goDeclType IsotopeBlue
hi! link goBuiltins IsotopeOrange

" }}}
" Lua: \{\{\{

hi! link luaIn IsotopeRed
hi! link luaFunction IsotopeCyan
hi! link luaTable IsotopeOrange

" }}}
" MoonScript: \{\{\{

hi! link moonSpecialOp IsotopeFg3
hi! link moonExtendedOp IsotopeFg3
hi! link moonFunction IsotopeFg3
hi! link moonObject IsotopeYellow

" }}}
" Java: \{\{\{

hi! link javaAnnotation IsotopeBlue
hi! link javaDocTags IsotopeCyan
hi! link javaCommentTitle vimCommentTitle
hi! link javaParen IsotopeFg3
hi! link javaParen1 IsotopeFg3
hi! link javaParen2 IsotopeFg3
hi! link javaParen3 IsotopeFg3
hi! link javaParen4 IsotopeFg3
hi! link javaParen5 IsotopeFg3
hi! link javaOperator IsotopeOrange

hi! link javaVarArg IsotopeGreen

" }}}
" Elixir: \{\{\{

hi! link elixirDocString Comment

hi! link elixirStringDelimiter IsotopeGreen
hi! link elixirInterpolationDelimiter IsotopeCyan

hi! link elixirModuleDeclaration IsotopeYellow

" }}}
" Scala: \{\{\{

" NB: scala vim syntax file is kinda horrible
hi! link scalaNameDefinition IsotopeFg1
hi! link scalaCaseFollowing IsotopeFg1
hi! link scalaCapitalWord IsotopeFg1
hi! link scalaTypeExtension IsotopeFg1

hi! link scalaKeyword IsotopeRed
hi! link scalaKeywordModifier IsotopeRed

hi! link scalaSpecial IsotopeCyan
hi! link scalaOperator IsotopeFg1

hi! link scalaTypeDeclaration IsotopeYellow
hi! link scalaTypeTypePostDeclaration IsotopeYellow

hi! link scalaInstanceDeclaration IsotopeFg1
hi! link scalaInterpolation IsotopeCyan

" }}}
" Markdown: \{\{\{

call s:HL('markdownItalic', s:fg3, s:none, s:italic)

hi! link markdownH1 IsotopeGreenBold
hi! link markdownH2 IsotopeGreenBold
hi! link markdownH3 IsotopeYellowBold
hi! link markdownH4 IsotopeYellowBold
hi! link markdownH5 IsotopeYellow
hi! link markdownH6 IsotopeYellow

hi! link markdownCode IsotopeCyan
hi! link markdownCodeBlock IsotopeCyan
hi! link markdownCodeDelimiter IsotopeCyan

hi! link markdownBlockquote IsotopeGray
hi! link markdownListMarker IsotopeGray
hi! link markdownOrderedListMarker IsotopeGray
hi! link markdownRule IsotopeGray
hi! link markdownHeadingRule IsotopeGray

hi! link markdownUrlDelimiter IsotopeFg3
hi! link markdownLinkDelimiter IsotopeFg3
hi! link markdownLinkTextDelimiter IsotopeFg3

hi! link markdownHeadingDelimiter IsotopeOrange
hi! link markdownUrl IsotopePurple
hi! link markdownUrlTitleDelimiter IsotopeGreen

call s:HL('markdownLinkText', s:gray, s:none, s:underline)
hi! link markdownIdDeclaration markdownLinkText

" }}}
" Haskell: \{\{\{

" hi! link haskellType IsotopeYellow
" hi! link haskellOperators IsotopeOrange
" hi! link haskellConditional IsotopeCyan
" hi! link haskellLet IsotopeOrange
"
hi! link haskellType IsotopeFg1
hi! link haskellIdentifier IsotopeFg1
hi! link haskellSeparator IsotopeFg1
hi! link haskellDelimiter IsotopeFg4
hi! link haskellOperators IsotopeBlue
"
hi! link haskellBacktick IsotopeOrange
hi! link haskellStatement IsotopeOrange
hi! link haskellConditional IsotopeOrange

hi! link haskellLet IsotopeCyan
hi! link haskellDefault IsotopeCyan
hi! link haskellWhere IsotopeCyan
hi! link haskellBottom IsotopeCyan
hi! link haskellBlockKeywords IsotopeCyan
hi! link haskellImportKeywords IsotopeCyan
hi! link haskellDeclKeyword IsotopeCyan
hi! link haskellDeriving IsotopeCyan
hi! link haskellAssocType IsotopeCyan

hi! link haskellNumber IsotopePurple
hi! link haskellPragma IsotopePurple

hi! link haskellString IsotopeGreen
hi! link haskellChar IsotopeGreen

" }}}
" Json: \{\{\{

hi! link jsonKeyword IsotopeGreen
hi! link jsonQuote IsotopeGreen
hi! link jsonBraces IsotopeFg1
hi! link jsonString IsotopeFg1

" }}}


" Functions -------------------------------------------------------------------
" Search Highlighting Cursor \{\{\{

function! IsotopeHlsShowCursor()
  call s:HL('Cursor', s:bg0, s:hls_cursor)
endfunction

function! IsotopeHlsHideCursor()
  call s:HL('Cursor', s:none, s:none, s:inverse)
endfunction

" }}}

