" -----------------------------------------------------------------------------
" File: isotope.vim
" Theme: Isotope
" Description: Vim color scheme based on Isotope pallet
" Author: Arden Rasmussen
" Version: 0.0
" Source: https://github.com/Isotope-Theme/vim
" -----------------------------------------------------------------------------

" Supporting Code -------------------------------------------------------------

" Initialisation: {{{

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
" Global Settings: {{{

function! s:sgo(opt, val)
  if !exists("g:" . a:opt)
    let g:{a:opt} = a:val
  endif
endfunction

function! s:set_color(opt, val)
  if a:val == "red"
    let g:{a:opt} = s:ui.red
  elseif a:val == "pink"
    let g:{a:opt} = s:ui.pink
  elseif a:val == "orange"
    let g:{a:opt} = s:ui.orange
  elseif a:val == "yellow"
    let g:{a:opt} = s:ui.yellow
  elseif a:val == "green"
    let g:{a:opt} = s:ui.green
  elseif a:val == "pale_blue"
    let g:{a:opt} = s:ui.pale_blue
  elseif a:val == "cyan"
    let g:{a:opt} = s:ui.cyan
  elseif a:val == "blue"
    let g:{a:opt} = s:ui.blue
  elseif a:val == "purple"
    let g:{a:opt} = s:ui.purple
  elseif a:val == "violet"
    let g:{a:opt} = s:ui.violet
  elseif a:val == "brown"
    let g:{a:opt} = s:ui.brown
  elseif a:val == "grey"
    let g:{a:opt} = s:ui.dark_gray
  elseif a:val == "white"
    let g:{a:opt} = s:ui.white
  endif
endfunction

call s:sgo("material_bold", 1)
call s:sgo("material_italic", 1)
call s:sgo("material_undercurl", 1)
call s:sgo("material_underline", 1)
call s:sgo("material_inverse", 1)
call s:sgo("material_termcolors", 256)
call s:sgo("material_primary", "blue")
call s:sgo("material_secondary", "")

" }}}
" Palette: {{{

let s:ui = {}

let s:ui.light_red         = ['#FF8961', 216]
let s:ui.red               = ['#F44336', 203]
let s:ui.dark_red          = ['#BA000D', 160]
let s:ui.light_pink        = ['#FF6090', 211]
let s:ui.pink              = ['#E91E63', 204]
let s:ui.dark_pink         = ['#B0003A', 125]
let s:ui.light_purple      = ['#D05CE3', 176]
let s:ui.purple            = ['#9C27B0', 133]
let s:ui.dark_purple       = ['#6A0080', 091]
let s:ui.light_deep_purple = ['#9A67EA', 141]
let s:ui.deep_purple       = ['#673AB7', 098]
let s:ui.dark_deep_purple  = ['#320B86', 055]
let s:ui.light_indigo      = ['#757DE8', 105]
let s:ui.indigo            = ['#3F51B5', 068]
let s:ui.dark_indigo       = ['#002984', 025]
let s:ui.light_blue        = ['#6EC6FF', 117]
let s:ui.blue              = ['#2196F3', 075]
let s:ui.dark_blue         = ['#0069C0', 032]
let s:ui.light_pale_blue   = ['#67DAFF', 117]
let s:ui.pale_blue         = ['#03A9F4', 039]
let s:ui.dark_pale_blue    = ['#007AC1', 032]
let s:ui.light_cyan        = ['#62EFFF', 123]
let s:ui.cyan              = ['#00BCD4', 044]
let s:ui.dark_cyan         = ['#008BA3', 037]
let s:ui.light_teal        = ['#52C7B8', 116]
let s:ui.teal              = ['#009688', 037]
let s:ui.dark_teal         = ['#00675B', 030]
let s:ui.light_green       = ['#80E27E', 150]
let s:ui.green             = ['#4CAF50', 072]
let s:ui.dark_green        = ['#087F23', 029]
let s:ui.light_pale_green  = ['#BEF67A', 192]
let s:ui.pale_green        = ['#8BC34A', 149]
let s:ui.dark_pale_green   = ['#5A9216', 106]
let s:ui.light_lime        = ['#FFFF6E', 228]
let s:ui.lime              = ['#CDDC39', 185]
let s:ui.dark_lime         = ['#99AA00', 142]
let s:ui.light_yellow      = ['#FFFF72', 228]
let s:ui.yellow            = ['#FFEB3B', 227]
let s:ui.dark_yellow       = ['#C8B900', 184]
let s:ui.light_amber       = ['#FFF350', 228]
let s:ui.amber             = ['#FFC107', 220]
let s:ui.dark_amber        = ['#C79100', 178]
let s:ui.light_orange      = ['#FFc947', 221]
let s:ui.orange            = ['#FF9800', 214]
let s:ui.dark_orange       = ['#C66900', 172]
let s:ui.light_deep_orange = ['#FF8A50', 216]
let s:ui.deep_orange       = ['#FF5722', 209]
let s:ui.dark_deep_orange  = ['#C41C00', 166]
let s:ui.light_brown       = ['#A98274', 144]
let s:ui.brown             = ['#795548', 101]
let s:ui.dark_brown        = ['#4B2C20', 059]

let s:ui.grey0 = ['#ECEFF1', 231]
let s:ui.grey1 = ['#CFD8DC', 188]
let s:ui.grey2 = ['#B0BEC5', 152]
let s:ui.grey3 = ['#90A4AE', 145]
let s:ui.grey4 = ['#78909C', 109]
let s:ui.grey5 = ['#607D8B', 103]
let s:ui.grey6 = ['#546E7A', 102]
let s:ui.grey7 = ['#455A64', 066]
let s:ui.grey8 = ['#37474F', 060]
let s:ui.grey9 = ['#263238', 059]

let s:ui.white = ['#FFFFFF', 255]
let s:ui.black = ['#000000', 016]
" }}}
" Setup Emphasis: {{{

let s:bold = 'bold,'
if g:material_bold == 0
  let s:bold = ''
endif

let s:italic = 'italic,'
if g:material_italic == 0
  let s:italic = ''
endif

let s:underline = 'underline,'
if g:material_underline == 0
  let s:underline = ''
endif

let s:undercurl = 'undercurl,'
if g:material_undercurl == 0
  let s:undercurl = ''
endif

let s:inverse = 'inverse,'
if g:material_inverse == 0
  let s:inverse = ''
endif

" }}}
" Setup Colors: {{{

let s:vim_bg = ['bg',   'bg'  ]
let s:vim_fg = ['fg',   'fg'  ]
let s:none   = ['NONE', 'NONE']

let s:background = &background

if s:background=="light"
  let s:base0  = s:ui.grey9
  let s:base1  = s:ui.grey8
  let s:base2  = s:ui.grey7
  let s:base3  = s:ui.grey6
  let s:base4  = s:ui.grey5
  let s:base00 = s:ui.grey0
  let s:base01 = s:ui.grey1
  let s:base02 = s:ui.grey2
  let s:base03 = s:ui.grey3
  let s:base04 = s:ui.grey4
elseif s:background=="dark"
  let s:base0  = s:ui.grey0
  let s:base1  = s:ui.grey1
  let s:base2  = s:ui.grey2
  let s:base3  = s:ui.grey3
  let s:base4  = s:ui.grey4
  let s:base00 = s:ui.grey9
  let s:base01 = s:ui.grey8
  let s:base02 = s:ui.grey7
  let s:base03 = s:ui.grey6
  let s:base04 = s:ui.grey5
endif

call s:set_color("primary", g:material_primary)
call s:set_color("secondary", g:material_secondary)

if !exists("s:secondary")
  if g:material_primary == "red"
    let s:secondary = s:ui.cyan
  elseif g:material_primary == "pink"
    let s:secondary = s:ui.cyan
  elseif g:material_primary == "orange"
    let s:secondary = s:ui.dark_orange
  elseif g:material_primary == "yellow"
    let s:secondary = s:ui.dark_yellow
  elseif g:material_primary == "green"
    let s:secondary = s:ui.dark_green
  elseif g:material_primary == "pale_blue"
    let s:secondary = s:ui.white
  elseif g:material_primary == "cyan"
    let s:secondary = s:ui.dark_cyan
  elseif g:material_primary == "blue"
    let s:secondary = s:ui.white
  elseif g:material_primary == "purple"
    let s:secondary = s:ui.green
  elseif g:material_primary == "violet"
    let s:secondary = s:ui.white
  elseif g:material_primary == "brown"
    let s:secondary = s:ui.white
  elseif g:material_primary == "grey"
    let s:secondary = s:ui.white
  elseif g:material_primary == "white"
    let s:secondary = s:ui.blue
  endif
endif

if g:material_termcolors == 16
  let s:ui.grey0[1] = 15
  let s:ui.grey1[1] = 15
  let s:ui.grey2[1] = 07
  let s:ui.grey3[1] = 07
  let s:ui.grey4[1] = 07
  let s:ui.grey5[1] = 08
  let s:ui.grey6[1] = 08
  let s:ui.grey7[1] = 08
  let s:ui.grey8[1] = 00
  let s:ui.grey9[1] = 00

  let s:ui.red[1]             = 01
  let s:ui.dark_red[1]        = 09
  let s:ui.pink[1]            = 01
  let s:ui.dark_pink[1]       = 09
  let s:ui.orange[1]          = 03
  let s:ui.dark_orange[1]     = 11
  let s:ui.yellow[1]          = 03
  let s:ui.dark_yellow[1]     = 11
  let s:ui.green[1]           = 02
  let s:ui.dark_green[1]      = 10
  let s:ui.pale_blue[1]       = 04
  let s:ui.dark_pale_blue[1]  = 12
  let s:ui.cyan[1]            = 06
  let s:ui.dark_cyan[1]       = 14
  let s:ui.blue[1]            = 06
  let s:ui.dark_blue[1]       = 14
  let s:ui.purple[1]          = 05
  let s:ui.dark_purple[1]     = 13
  let s:ui.violet[1]          = 05
  let s:ui.dark_violet[1]     = 13
  let s:ui.brown[1]           = 07
  let s:ui.dark_brown[1]      = 08
endif

" }}}
" Setup Terminal Colors For Neovim: {{{

if has('nvim')
  let g:terminal_color_background = s:base00
  let g:terminal_color_foreground = s:base1

  let g:terminal_color_0  = s:ui.grey8[0]
  let g:terminal_color_1  = s:ui.red[0]
  let g:terminal_color_2  = s:ui.green[0]
  let g:terminal_color_3  = s:ui.yellow[0]
  let g:terminal_color_4  = s:ui.blue[0]
  let g:terminal_color_5  = s:ui.purple[0]
  let g:terminal_color_6  = s:ui.cyan[0]
  let g:terminal_color_7  = s:ui.grey3[0]
  let g:terminal_color_8  = s:ui.grey6[0]
  let g:terminal_color_9  = s:ui.dark_red[0]
  let g:terminal_color_10 = s:ui.dark_green[0]
  let g:terminal_color_11 = s:ui.dark_yellow[0]
  let g:terminal_color_12 = s:ui.dark_blue[0]
  let g:terminal_color_13 = s:ui.dark_purple[0]
  let g:terminal_color_14 = s:ui.dark_cyan[0]
  let g:terminal_color_15 = s:ui.grey1[0]
endif

" }}}
" Overload Setting: {{{

" let s:hls_cursor = s:yellow1
" let s:number_column = s:none
" let s:sign_column = s:bg1
" let s:color_column = s:bg1
" let s:vert_split = s:bg1
" let s:invert_selection = s:inverse
" let s:italicize_comments = s:italic
" let s:italicize_strings  = s:italic

" }}}
" Highlighting Function: {{{

function! s:HL(group, fg, ...)
  " Arguments: group, guifg, guibg, gui, guisp

  " foreground
  let fg = a:fg

  " background
  if a:0 >= 1
    let bg = a:1
  else
    let bg = s:none
  endif

  "emphasis
  if a:0 >= 2 && strlen(a:2)
    let emstr = a:2
  else
    let emstr = 'NONE,'
  endif

  " special fallback
  if a:0 >= 3
    let fg = a:3
  endif

  let histring = [ 'hi', a:group,
        \ 'guifg=' . fg[0], 'ctermfg=' . fg[1],
        \ 'guibg=' . bg[0], 'ctermbg=' . bg[1],
        \ 'gui=' .emstr[:-2], 'cterm=' . emstr[:-2]
        \ ]

  if a:0 >= 3
    call add(histring, 'guisp=' . a:3[0])
  endif

  execute join(histring, ' ')
endfunction

" }}}

" Vanilla Colorscheme ---------------------------------------------------------
" General UI: {{{

call s:HL('Normal', s:base2, s:base00)

if version >= 700
  call s:HL('CursorLine', s:none, s:base01)
  call s:HL('CursorColumn', s:none, s:base01)
  call s:HL('TabLine', s:base03, s:base01)
  call s:HL('TabLineFill', s:base03, s:base01)
  call s:HL('TabLineSel', g:primary, s:base01)
  call s:HL('MatchParen', g:primary, s:base03)
endif

if version >= 703
  call s:HL('ColorColumn', s:none, s:base01)
  call s:HL('Conceal', g:primary, s:base00)
  call s:HL('CursorLineNr', g:primary, s:base01, s:bold)
endif

call s:HL('NonText', s:base03, s:none, s:bold)
call s:HL('SpecialKey', s:base03, s:none, s:bold)

call s:HL('Visual', s:none, s:base02, s:bold)
call s:HL('VisualNOS', g:primary, s:none, s:bold)

call s:HL('Search', s:base03, s:ui.yellow)
call s:HL('IncSearch', s:base01, s:ui.orange)

call s:HL('Underlined', s:ui.pale_blue, s:none, s:underline)
call s:HL('Bold', s:none, s:none, s:bold)
call s:HL('Italic', s:none, s:none, s:italic)

call s:HL('StatusLine', s:base3, s:base02, s:bold)
call s:HL('StatusLineNC', s:base03, s:base01, s:bold)

call s:HL('VertSplit', s:base02, s:base02)

call s:HL('QuickFixLine', s:none, s:base01)

call s:HL('WildMenu', s:ui.red, s:ui.yellow)

call s:HL('Directory', s:ui.blue, s:none)

call s:HL('Title', s:ui.green, s:none, s:bold)

call s:HL('ErrorMsg', s:ui.red, s:base00)
call s:HL('MoreMsg', s:ui.green, s:none, s:bold)
call s:HL('ModeMsg', s:ui.green, s:none, s:bold)
call s:HL('Question', s:ui.blue, s:none, s:bold)
call s:HL('WarningMsg', s:ui.orange, s:none)
call s:HL('TooLong', s:ui.red)
call s:HL('Debug', s:ui.red)

" }}}
" Gutter: {{{

call s:HL('LineNr', s:base03, s:base01)
" call s:HL('EndOfBuffer', s:background, s:background)

call s:HL('SignColumn', s:base03, s:base01)

call s:HL('Folded', g:primary, s:base01, s:italic . s:underline)
call s:HL('FoldColumn', g:primary, s:base01, s:italic . s:underline)

" }}}
" Cursor: {{{

call s:HL('Cursor', g:primary, s:base2, s:inverse)

" }}}
" Syntax Highlighting: {{{

call s:HL('Special', s:ui.cyan)

call s:HL('Comment', s:base03, s:none, s:italic)
call s:HL('Todo', s:ui.yellow, s:base01, s:bold)
call s:HL('Error', s:base00, s:ui.red, s:bold)

" Generic Statement:
call s:HL('Statement', s:ui.red)
call s:HL('Conditional', s:ui.purple)
call s:HL('Repeat', s:ui.yellow)
call s:HL('Label', s:ui.yellow)
call s:HL('Exception', s:ui.red)
call s:HL('Operator', s:base2)
call s:HL('Keyword', s:ui.purple)
call s:HL('Delimiter', s:ui.brown)

" Variable Name
call s:HL('Identifier', s:ui.red)
call s:HL('Function', s:ui.blue)

" Generic PreProcessor
call s:HL('PreProc', s:ui.yellow)
call s:HL('Include', s:ui.blue)
call s:HL('Define', s:ui.purple)
call s:HL('Macro', s:ui.red)
call s:HL('PreCondit', s:ui.purple)

" Generic Constant
call s:HL('Constant', s:ui.orange)
call s:HL('Character', s:ui.red)
call s:HL('SpecialChar', s:ui.orange)
call s:HL('String', s:ui.green)
call s:HL('Boolean', s:ui.orange)
call s:HL('Number', s:ui.orange)
call s:HL('Float', s:ui.orange)

" Type
call s:HL('Type', s:ui.yellow)
call s:HL('Tag', s:ui.yellow)
call s:HL('StorageClass', s:ui.yellow)
call s:HL('Structure', s:ui.purple)
call s:HL('Typedef', s:ui.yellow)

" }}}
" Completion Menu: {{{

if version >= 700
  call s:HL('Pmenu', s:base2, s:base02)
  call s:HL('PmenuSel', s:base02, g:primary, s:bold)
  call s:HL('PmenuSbar', s:none, s:base01)
  call s:HL('PmenuThumb', s:none, s:base2)
endif

" }}}
" Diffs: {{{

call s:HL('DiffAdd', s:ui.green, s:base01)
call s:HL('DiffChange', s:ui.yellow, s:base01)
call s:HL('DiffDelete', s:ui.red, s:base01)
call s:HL('DiffText', s:ui.blue, s:base01)
call s:HL('DiffAdded', s:ui.green, s:base00)
call s:HL('DiffFile', s:ui.red, s:base00)
call s:HL('DiffNewFile', s:ui.green, s:base00)
call s:HL('DiffLine', s:ui.blue, s:base00)
call s:HL('DiffRemoved', s:ui.red, s:base00)

" }}}
" Spelling: {{{

if has("spell")
  call s:HL('SpellCap', s:none, s:none, s:italic . s:undercurl, s:ui.blue)
  call s:HL('SpellBad', s:none, s:none, s:italic . s:undercurl, s:ui.red)
  call s:HL('SpellLocal', s:none, s:none, s:undercurl, s:ui.cyan)
  call s:HL('SpellRare', s:none, s:none, s:undercurl, s:ui.purple)
endif

" }}}

" Filetype Specific -----------------------------------------------------------
" Bash: {{{

call s:HL('bashStatement', s:none, s:none, s:bold)

" }}}
" C: {{{

call s:HL('cOperator', s:ui.cyan)
call s:HL('cPreCondit', s:ui.purple)

" }}}
" CMake: {{{

call s:HL('cmakeStatement', s:ui.red)
call s:HL('cmakeArguments', s:base2)
call s:HL('cmakeVariableValue', s:ui.blue)
call s:HL('cmakeOperator', s:ui.red)

" }}}
" CPP: {{{

call s:HL('cppSTLnamespace', g:primary)

" }}}
" CS: {{{

call s:HL('csClass', s:ui.yellow)
call s:HL('csAttribute', s:ui.yellow)
call s:HL('csModifier', s:ui.purple)
call s:HL('csType', s:ui.red)
call s:HL('csUnspecifiedStatement', s:ui.blue)
call s:HL('csContextualStatement', s:ui.purple)
call s:HL('csNewDecleration', s:ui.red)

" }}}
" CSS: {{{

call s:HL('cssBraces', s:base2)
call s:HL('cssClassName', s:ui.purple)
call s:HL('cssColor', s:ui.cyan)

" }}}
" Git: {{{

call s:HL('gitcommitOverflow', s:ui.red)
call s:HL('gitcommitSummary', s:ui.green)
call s:HL('gitcommitContent', s:base03)
call s:HL('gitcommitUntracked', s:base03)
call s:HL('gitcommitDiscarded', s:base03)
call s:HL('gitcommitSelected', s:base03)
call s:HL('gitcommitHeader', s:ui.purple)
call s:HL('gitcommitSelectedType', s:ui.blue)
call s:HL('gitcommitUmergedType', s:ui.blue)
call s:HL('gitcommitDiscardedType', s:ui.blue)
call s:HL('gitcommitBranch', s:ui.orange, s:none, s:bold)
call s:HL('gitcommitUntrackedFile', s:ui.yellow)
call s:HL('gitcommitUnmergedFile', s:ui.red, s:none, s:bold)
call s:HL('gitcommitDiscardedFile', s:ui.red, s:none, s:bold)
call s:HL('gitcommitSelectedFile', s:ui.green, s:none, s:bold)

" }}}
" GitGutter: {{{

call s:HL('GitGutterAdd', s:ui.green, s:base01)
call s:HL('GitGutterChange', s:ui.yellow, s:base01)
call s:HL('GitGutterDelete', s:ui.red, s:base01)
call s:HL('GitGutterChangeDelete', s:ui.orange, s:base01)

" }}}
" Fish: {{{

call s:HL('fishStatement', s:ui.blue, s:none, s:bold)
call s:HL('fishString', s:ui.green)
call s:HL('fishConditional', s:ui.purple)
call s:HL('fishRepeat', s:ui.purple, s:none, s:bold)

" }}}
" HTML: {{{

call s:HL('htmlTitle', s:ui.green, s:none, s:bold)
call s:HL('htmlH1', s:ui.green, s:none, s:bold)
call s:HL('htmlH2', s:ui.blue, s:none, s:bold)
call s:HL('htmlH3', s:ui.purple, s:none, s:bold)
call s:HL('htmlH4', s:ui.amber, s:none, s:bold)
call s:HL('htmlH5', s:ui.dark_green, s:none, s:bold)
call s:HL('htmlH6', s:ui.dark_blue, s:none, s:bold)
call s:HL('htmlH7', s:ui.dark_purple, s:none, s:bold)
call s:HL('htmlH8', s:ui.dark_yellow, s:none, s:bold)
call s:HL('htmlTag', s:base2)
call s:HL('htmlTagName', s:ui.cyan, s:none, s:bold)
call s:HL('htmlArg', s:base3)
call s:HL('htmlEndTag', s:base2)
call s:HL('htmlBold', s:none, s:none, s:bold)
call s:HL('htmlItalic', s:none, s:none, s:italic)

" }}}
" Mail: {{{

call s:HL('mailHeaderKey', s:ui.blue)
call s:HL('mailHeaderEmail', s:ui.purple)
call s:HL('mailSubject', s:ui.red)
call s:HL('mailHeader', s:base1)
call s:HL('mailURL', s:ui.cyan)
call s:HL('mailEmail', s:ui.purple)
call s:HL('mailQuoted1', s:ui.yellow)
call s:HL('mailQuoted2', s:ui.green)
call s:HL('mailQuoted3', s:ui.purple)
call s:HL('mailQuoted4', s:ui.cyan)
call s:HL('mailQuoted5', s:ui.blue)
call s:HL('mailQuoted6', s:ui.dark_yellow)

" }}}
" Makefile: {{{

call s:HL('makeDefine', s:ui.yellow)
call s:HL('makeIdent', s:base2)
call s:HL('makeSpecTarget', s:ui.green)
call s:HL('makeTarget', s:ui.red)
call s:HL('makeStatememt', s:ui.purple, s:none, s:bold)
call s:HL('makeCommands', s:ui.blue)
call s:HL('makeSpecial', s:ui.yellow, s:none, s:bold)

" }}}
" Markdown: {{{

call s:HL('mkdHeadingRule', s:ui.green, s:none, s:bold)
call s:HL('mkdH1', s:ui.green, s:none, s:bold)
call s:HL('mkdH2', s:ui.blue, s:none, s:bold)

call s:HL('mkdBlockquote', s:none, s:base02)
call s:HL('mkdCode', s:ui.green)
call s:HL('mkdCodeStart', s:ui.red)
call s:HL('mkdCodeEnd', s:ui.red)
call s:HL('mkdLink', s:ui.blue, s:none, s:underline)
call s:HL('mkdUrl', s:ui.purple)
call s:HL('mkdDelimiter', s:ui.yellow)
call s:HL('mkdRule', s:ui.purple)

" }}}
" Python: {{{

call s:HL('pythonOperator', s:ui.purple)
call s:HL('pythonRepeat', s:ui.purple)
call s:HL('pythonInclude', s:ui.purple)
call s:HL('pythonStatement', s:ui.purple)

" }}}
" ReStructuredText: {{{

call s:HL('rstSections', s:ui.blue, s:none, s:bold)
call s:HL('rstDirective', s:ui.blue)
call s:HL('rstHyperlinkTarget', s:ui.green)
call s:HL('rstInlineLiteral', s:ui.dark_green)
call s:HL('rstInterpretedTextOrHyperLinkReference', s:ui.blue)

" }}}
" Shell: {{{

call s:HL('shDerefVar', s:ui.cyan, s:none, s:bold)
call s:HL('shDerefSimple', s:ui.cyan)
call s:HL('shFunction', s:ui.orange, s:none, s:bold)
call s:HL('shStatement', s:none)
call s:HL('shLoop', s:ui.purple, s:none, s:bold)
call s:HL('shQuote', s:ui.green)
call s:HL('shCaseEsac', s:ui.cyan, s:none, s:bold)
call s:HL('shSnglCase', s:ui.purple)
call s:HL('shFunctionOne', s:ui.blue)
call s:HL('shCase', s:ui.blue)
call s:HL('shSetList', s:ui.pink)
call s:HL('shOperator', s:ui.cyan)
call s:HL('shOption', s:ui.dark_green)
call s:HL('shLine', s:none)
call s:HL('shWrapLineOperator', s:ui.dark_red)

" }}}
" Tex: {{{

call s:HL('texStatement', s:ui.green)
call s:HL('texMathZoneX', s:ui.blue)
call s:HL('texMathZoneX', s:ui.blue)
call s:HL('texMathMatcher', s:ui.blue)
call s:HL('texRefLabel', s:ui.orange)
call s:HL('texBoldStyle', s:none, s:none, s:bold)
call s:HL('texItalStyle', s:none, s:none, s:italic)

" }}}
" Vim: {{{

call s:HL('vimCommentTitle', s:ui.dark_purple, s:none, s:bold . s:italic)
call s:HL('vimCommentString', s:ui.dark_purple)
call s:HL('vimCommand', s:ui.yellow)
call s:HL('vimCmdSep', s:ui.blue, s:none, s:bold)
call s:HL('vimIsCommand', s:base2)
call s:HL('vimSynMtchOpt', s:ui.yellow)
call s:HL('vimSynType', s:ui.cyan)
call s:HL('vimHiLink', s:ui.blue)
call s:HL('vimHiGroup', s:ui.blue)
call s:HL('vimGroup', s:ui.blue, s:none, s:bold)

" }}}
" Vim Help: {{{

call s:HL('helpExample', s:base1)
call s:HL('helpOption', s:ui.cyan)
call s:HL('helpNote', s:ui.orange)
call s:HL('helpVim', s:ui.yellow)
call s:HL('helpHyperTextJump', s:ui.blue)
call s:HL('helpHyperTextEntry', s:ui.green)

" }}}
" Yaml: {{{

call s:HL('yamlBlockMappingKey', s:ui.blue)
call s:HL('yamlKeyValueDelimiter', s:ui.yellow)
call s:HL('yamlBlockCollectionItemStart', s:ui.yellow)

" }}}

" Plugin Specific: -------------------------------------------------------------
" NERDTree: {{{

call s:HL('NERDTreeExecFile', s:ui.purple, s:none, s:bold)

" }}}

unlet s:ui
