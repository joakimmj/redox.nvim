" redox — Vim colorscheme (dark)
" Place at ~/.vim/colors/redox.vim
" Usage: :colorscheme redox

set background=dark
hi clear
if exists("syntax_on") | syntax reset | endif
let g:colors_name = "redox"

" ── Base ──────────────────────────────────────────────────────────────────────
hi Normal       guifg=#DCE8E5 guibg=#2E3434 ctermfg=NONE ctermbg=NONE
hi NormalFloat  guifg=#DCE8E5 guibg=#343A3A
hi EndOfBuffer  guifg=#3A4141 guibg=NONE
hi LineNr       guifg=#919D9B guibg=NONE
hi CursorLine   guibg=#323838 cterm=NONE
hi CursorLineNr guifg=#E3A36F guibg=NONE    gui=bold
hi CursorColumn guibg=#323838 cterm=NONE
hi ColorColumn  guibg=#323838 cterm=NONE
hi SignColumn   guifg=#AFC3BE guibg=#2E3434
hi VertSplit    guifg=#3A4141 guibg=NONE
hi WinSeparator guifg=#3A4141 guibg=NONE
hi Folded       guifg=#AFC3BE guibg=#3A4141
hi FoldColumn   guifg=#919D9B guibg=#2E3434

" ── Selection / Visual ────────────────────────────────────────────────────────
hi Visual       guibg=#3F4A4A
hi VisualNOS    guibg=#3F4A4A
hi Search       guifg=#2E3434 guibg=#7EC1AE
hi IncSearch    guifg=#2E3434 guibg=#CD8B64
hi CurSearch    guifg=#2E3434 guibg=#CD8B64
hi MatchParen   guifg=#E3A36F guibg=NONE    gui=underline

" ── Status / Tab ──────────────────────────────────────────────────────────────
hi StatusLine   guifg=#2E3434 guibg=#E3A36F gui=bold
hi StatusLineNC guifg=#AFC3BE guibg=#3A4141
hi TabLine      guifg=#AFC3BE guibg=#3A4141
hi TabLineSel   guifg=#2E3434 guibg=#E3A36F gui=bold
hi TabLineFill  guifg=#DCE8E5 guibg=#2E3434

" ── Popup / Menu ──────────────────────────────────────────────────────────────
hi Pmenu        guifg=#DCE8E5 guibg=#3A4141
hi PmenuSel     guifg=#2E3434 guibg=#E3A36F
hi PmenuSbar    guibg=#3A4141
hi PmenuThumb   guibg=#414949
hi WildMenu     guifg=#2E3434 guibg=#E3A36F

" ── Messages ──────────────────────────────────────────────────────────────────
hi ModeMsg      guifg=#DCE8E5 guibg=#2E3434
hi MoreMsg      guifg=#7EC1AE
hi ErrorMsg     guifg=#CD8980
hi WarningMsg   guifg=#E3B86F
hi Question     guifg=#7EC1AE

" ── Diff ──────────────────────────────────────────────────────────────────────
hi DiffAdd      guibg=#33403B
hi DiffChange   guibg=#403F30
hi DiffDelete   guibg=#4A3333
hi DiffText     guibg=#E3A36F

" ── Misc UI ───────────────────────────────────────────────────────────────────
hi NonText      guifg=#919D9B
hi SpecialKey   guifg=#414949
hi Whitespace   guifg=#414949
hi Title        guifg=#E3A36F              gui=bold,underline
hi Directory    guifg=#7EC1AE
hi Conceal      guifg=#919D9B guibg=NONE
hi SpellBad     guifg=#CD8980              gui=undercurl guisp=#CD8980
hi SpellCap     guifg=#E3B86F              gui=undercurl guisp=#E3B86F
hi SpellRare    guifg=#8EC6C4              gui=undercurl guisp=#8EC6C4

" ── Syntax ────────────────────────────────────────────────────────────────────
hi Comment      guifg=#919D9B              gui=italic
hi Constant     guifg=#D6C38A
hi String       guifg=#9FD8C4
hi Character    guifg=#9FD8C4
hi Number       guifg=#D6C38A
hi Boolean      guifg=#D6C38A
hi Float        guifg=#D6C38A
hi Identifier   guifg=#DCE8E5
hi Function     guifg=#7EC1AE
hi Statement    guifg=#E3A36F              gui=bold
hi Conditional  guifg=#E3A36F
hi Repeat       guifg=#E3A36F
hi Label        guifg=#E3A36F
hi Operator     guifg=#C9D4D2
hi Keyword      guifg=#E3A36F              gui=bold
hi Exception    guifg=#CD8980
hi PreProc      guifg=#8EC6C4
hi Include      guifg=#7EC1AE
hi Define       guifg=#7EC1AE
hi Macro        guifg=#E6D4A3
hi Type         guifg=#D6C38A
hi StorageClass guifg=#D6C38A
hi Structure    guifg=#D6C38A
hi Typedef      guifg=#D6C38A
hi Special      guifg=#7EC1AE
hi Delimiter    guifg=#AFC3BE
hi Todo         guifg=#2E3434 guibg=#98C3B1 gui=bold

" ── Diagnostics ───────────────────────────────────────────────────────────────
hi DiagnosticError guifg=#CD8980
hi DiagnosticWarn  guifg=#E3B86F
hi DiagnosticInfo  guifg=#8EC6C4
hi DiagnosticHint  guifg=#98C3B1
