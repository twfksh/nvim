" Predawn colorscheme for Vim/Neovim
" Based on the original Predawn theme

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "predawn"

" Color definitions
let s:predawn = "#F18260"
let s:pale_yellow = "#F5F5AE"
let s:yellow = "#EDE480"
let s:orange = "#F49D62"
let s:red = "#CF5340"
let s:dark_red = "#893121"
let s:maroon = "#55201B"
let s:pale_blue = "#BDDCDC"
let s:blue = "#92BFBF"
let s:slate = "#5F777E"
let s:green = "#B4D388"
let s:pale_green = "#D0EDA7"
let s:dark_green = "#809161"
let s:white = "#F1F1F1"
let s:grey1 = "#999999"
let s:grey2 = "#777777"
let s:grey3 = "#4C4C4C"
let s:grey4 = "#3C3C3C"
let s:grey5 = "#282828"
let s:grey7 = "#232323"
let s:black = "#151515"

" Helper function
function! s:HL(group, fg, bg, attr)
  let l:attr = a:attr
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" . a:fg
  endif
  if !empty(a:bg)  
    exec "hi " . a:group . " guibg=" . a:bg
  endif
  if !empty(a:attr)
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfunction

" Editor colors
call s:HL("Normal", s:white, s:grey5, "")
call s:HL("NormalFloat", s:white, s:grey4, "")
call s:HL("NormalNC", s:white, s:grey5, "")

" Cursor and selection
call s:HL("Cursor", s:grey5, s:predawn, "")
call s:HL("CursorLine", "", s:grey7, "")
call s:HL("CursorColumn", "", s:grey7, "")
call s:HL("ColorColumn", "", s:grey7, "")

" Line numbers
call s:HL("LineNr", s:grey3, "", "")
call s:HL("CursorLineNr", s:predawn, "", "bold")
call s:HL("SignColumn", s:grey3, s:grey5, "")

" Visual selection
call s:HL("Visual", "", s:grey3, "")
call s:HL("VisualNOS", "", s:grey4, "")

" Search
call s:HL("Search", s:black, s:predawn, "")
call s:HL("IncSearch", s:black, s:predawn, "")

" Splits and borders
call s:HL("VertSplit", s:grey3, "", "")
call s:HL("WinSeparator", s:grey3, "", "")

" Status line
call s:HL("StatusLine", s:white, s:grey4, "")
call s:HL("StatusLineNC", s:grey2, s:grey7, "")

" Support for global statusline (laststatus=3)
if has('nvim-0.7')
  " Ensure the global statusline uses the same colors as StatusLine
  call s:HL("WinBar", s:grey2, "", "")
  call s:HL("WinBarNC", s:grey3, "", "")
  
  " Make sure StatusLine is properly defined for global statusline
  call s:HL("StatusLine", s:white, s:grey4, "")
  call s:HL("StatusLineNC", s:white, s:grey4, "")
endif

" Tab line
call s:HL("TabLine", s:grey2, s:grey7, "")
call s:HL("TabLineFill", "", s:grey7, "")
call s:HL("TabLineSel", s:white, s:grey4, "")

" Popup menu
call s:HL("Pmenu", s:white, s:grey4, "")
call s:HL("PmenuSel", s:black, s:predawn, "")
call s:HL("PmenuSbar", "", s:grey3, "")
call s:HL("PmenuThumb", "", s:predawn, "")

" Messages and errors
call s:HL("ErrorMsg", s:red, "", "")
call s:HL("WarningMsg", s:yellow, "", "")
call s:HL("MoreMsg", s:green, "", "")
call s:HL("Question", s:blue, "", "")

" Folding
call s:HL("Folded", s:grey2, s:grey7, "")
call s:HL("FoldColumn", s:grey3, s:grey5, "")

" Diff
call s:HL("DiffAdd", s:green, s:grey7, "")
call s:HL("DiffChange", s:yellow, s:grey7, "")
call s:HL("DiffDelete", s:red, s:grey7, "")
call s:HL("DiffText", s:white, s:grey4, "")

" Spelling
call s:HL("SpellBad", "", "", "undercurl")
call s:HL("SpellCap", "", "", "undercurl")
call s:HL("SpellLocal", "", "", "undercurl")
call s:HL("SpellRare", "", "", "undercurl")

" Syntax highlighting
call s:HL("Comment", s:grey2, "", "italic")

call s:HL("Constant", s:yellow, "", "")
call s:HL("String", s:pale_blue, "", "")
call s:HL("Character", s:pale_blue, "", "")
call s:HL("Number", s:yellow, "", "")
call s:HL("Boolean", s:green, "", "")
call s:HL("Float", s:yellow, "", "")

call s:HL("Identifier", s:white, "", "")
call s:HL("Function", s:blue, "", "")

call s:HL("Statement", s:orange, "", "")
call s:HL("Conditional", s:yellow, "", "italic")
call s:HL("Repeat", s:orange, "", "")
call s:HL("Label", s:orange, "", "")
call s:HL("Operator", s:white, "", "")
call s:HL("Keyword", s:orange, "", "")
call s:HL("Exception", s:orange, "", "")

call s:HL("PreProc", s:blue, "", "")
call s:HL("Include", s:blue, "", "italic")
call s:HL("Define", s:blue, "", "italic")
call s:HL("Macro", s:blue, "", "italic")
call s:HL("PreCondit", s:blue, "", "")

call s:HL("Type", s:blue, "", "italic")
call s:HL("StorageClass", s:yellow, "", "italic")
call s:HL("Structure", s:blue, "", "")
call s:HL("Typedef", s:blue, "", "")

call s:HL("Special", s:green, "", "")
call s:HL("SpecialChar", s:orange, "", "")
call s:HL("Tag", s:blue, "", "")
call s:HL("Delimiter", s:white, "", "")
call s:HL("SpecialComment", s:grey2, "", "italic")
call s:HL("Debug", s:red, "", "")

call s:HL("Underlined", s:blue, "", "underline")
call s:HL("Ignore", s:grey3, "", "")
call s:HL("Error", s:red, "", "italic")
call s:HL("Todo", s:predawn, "", "bold")

" Tree-sitter highlights (Neovim)
if has('nvim-0.8')
  call s:HL("@variable", s:white, "", "")
  call s:HL("@variable.builtin", s:yellow, "", "italic")
  call s:HL("@variable.parameter", s:white, "", "")
  call s:HL("@variable.member", s:white, "", "")
  
  call s:HL("@constant", s:yellow, "", "")
  call s:HL("@constant.builtin", s:green, "", "")
  call s:HL("@constant.macro", s:yellow, "", "")
  
  call s:HL("@string", s:pale_blue, "", "")
  call s:HL("@string.regexp", s:orange, "", "")
  call s:HL("@string.escape", s:orange, "", "")
  
  call s:HL("@character", s:pale_blue, "", "")
  call s:HL("@character.special", s:orange, "", "")
  
  call s:HL("@number", s:yellow, "", "")
  call s:HL("@boolean", s:green, "", "")
  call s:HL("@float", s:yellow, "", "")
  
  call s:HL("@function", s:blue, "", "")
  call s:HL("@function.builtin", s:blue, "", "")
  call s:HL("@function.call", s:blue, "", "")
  call s:HL("@function.macro", s:blue, "", "")
  
  call s:HL("@method", s:blue, "", "")
  call s:HL("@method.call", s:blue, "", "")
  
  call s:HL("@constructor", s:orange, "", "")
  call s:HL("@parameter", s:white, "", "")
  
  call s:HL("@keyword", s:orange, "", "")
  call s:HL("@keyword.function", s:yellow, "", "italic")
  call s:HL("@keyword.operator", s:orange, "", "")
  call s:HL("@keyword.return", s:yellow, "", "italic")
  call s:HL("@keyword.conditional", s:yellow, "", "italic")
  call s:HL("@keyword.repeat", s:orange, "", "")
  call s:HL("@keyword.import", s:yellow, "", "")
  call s:HL("@keyword.exception", s:orange, "", "")
  
  call s:HL("@operator", s:white, "", "")
  
  call s:HL("@punctuation.delimiter", s:white, "", "")
  call s:HL("@punctuation.bracket", s:white, "", "")
  call s:HL("@punctuation.special", s:orange, "", "")
  
  call s:HL("@comment", s:grey2, "", "italic")
  call s:HL("@comment.documentation", s:grey2, "", "italic")
  
  call s:HL("@tag", s:blue, "", "")
  call s:HL("@tag.attribute", s:yellow, "", "italic")
  call s:HL("@tag.delimiter", s:white, "", "")
  
  call s:HL("@type", s:blue, "", "italic")
  call s:HL("@type.builtin", s:blue, "", "italic")
  call s:HL("@type.definition", s:blue, "", "")
  
  call s:HL("@attribute", s:orange, "", "italic")
  call s:HL("@property", s:white, "", "")
  call s:HL("@field", s:white, "", "")
  
  call s:HL("@namespace", s:blue, "", "")
  call s:HL("@symbol", s:orange, "", "")
endif

" LSP highlights (Neovim)
if has('nvim')
  call s:HL("DiagnosticError", s:red, "", "")
  call s:HL("DiagnosticWarn", s:yellow, "", "")
  call s:HL("DiagnosticInfo", s:blue, "", "")
  call s:HL("DiagnosticHint", s:green, "", "")
  
  call s:HL("DiagnosticSignError", s:red, s:grey5, "")
  call s:HL("DiagnosticSignWarn", s:yellow, s:grey5, "")
  call s:HL("DiagnosticSignInfo", s:blue, s:grey5, "")
  call s:HL("DiagnosticSignHint", s:green, s:grey5, "")
  
  call s:HL("DiagnosticUnderlineError", "", "", "undercurl")
  call s:HL("DiagnosticUnderlineWarn", "", "", "undercurl")
  call s:HL("DiagnosticUnderlineInfo", "", "", "undercurl")
  call s:HL("DiagnosticUnderlineHint", "", "", "undercurl")
endif

" Git signs
call s:HL("GitSignsAdd", s:green, "", "")
call s:HL("GitSignsChange", s:yellow, "", "")
call s:HL("GitSignsDelete", s:red, "", "")

" Telescope (Neovim)
call s:HL("TelescopeNormal", s:white, s:grey4, "")
call s:HL("TelescopeBorder", s:grey3, s:grey4, "")
call s:HL("TelescopePromptNormal", s:white, s:grey4, "")
call s:HL("TelescopePromptBorder", s:predawn, s:grey5, "")
call s:HL("TelescopePromptTitle", s:black, s:predawn, "")
call s:HL("TelescopePreviewTitle", s:black, s:green, "")
call s:HL("TelescopeResultsTitle", s:black, s:blue, "")
call s:HL("TelescopeSelection", s:white, s:grey3, "")
call s:HL("TelescopeSelectionCaret", s:predawn, "", "")

" Which-key
call s:HL("WhichKey", s:predawn, "", "")
call s:HL("WhichKeyGroup", s:blue, "", "")
call s:HL("WhichKeyDesc", s:white, "", "")
call s:HL("WhichKeySeperator", s:grey2, "", "")
call s:HL("WhichKeyFloat", "", s:grey4, "")
call s:HL("WhichKeyBorder", s:grey3, "", "")

augroup PreserveLaststatus
  autocmd!
  autocmd ColorScheme * set laststatus=3
augroup END
