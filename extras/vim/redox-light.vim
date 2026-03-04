" redox-light — Vim colorscheme (light)
" Place at ~/.vim/colors/redox-light.vim
" Usage: :colorscheme redox-light

set background=light
hi clear
if exists("syntax_on") | syntax reset | endif
let g:colors_name = "redox-light"

" ── Base ──────────────────────────────────────────────────────────────────────
hi Normal       guifg=#1C2B29 guibg=#E4EDE9 ctermfg=NONE ctermbg=NONE
hi NormalFloat  guifg=#1C2B29 guibg=#D8E4DF
hi EndOfBuffer  guifg=#CAD7D1 guibg=NONE
hi LineNr       guifg=#526C68 guibg=NONE
hi CursorLine   guibg=#DCE8E3 cterm=NONE
hi CursorLineNr guifg=#8A4F18 guibg=NONE    gui=bold
hi CursorColumn guibg=#DCE8E3 cterm=NONE
hi ColorColumn  guibg=#DCE8E3 cterm=NONE
hi SignColumn   guifg=#3A5450 guibg=#E4EDE9
hi VertSplit    guifg=#CAD7D1 guibg=NONE
hi WinSeparator guifg=#CAD7D1 guibg=NONE
hi Folded       guifg=#3A5450 guibg=#CAD7D1
hi FoldColumn   guifg=#526C68 guibg=#E4EDE9

" ── Selection / Visual ────────────────────────────────────────────────────────
hi Visual       guibg=#B2C4BF
hi VisualNOS    guibg=#B2C4BF
hi Search       guifg=#E4EDE9 guibg=#247068
hi IncSearch    guifg=#E4EDE9 guibg=#8B4820
hi CurSearch    guifg=#E4EDE9 guibg=#8B4820
hi MatchParen   guifg=#8A4F18 guibg=NONE    gui=underline

" ── Status / Tab ──────────────────────────────────────────────────────────────
hi StatusLine   guifg=#E4EDE9 guibg=#8A4F18 gui=bold
hi StatusLineNC guifg=#3A5450 guibg=#CAD7D1
hi TabLine      guifg=#3A5450 guibg=#CAD7D1
hi TabLineSel   guifg=#E4EDE9 guibg=#8A4F18 gui=bold
hi TabLineFill  guifg=#1C2B29 guibg=#E4EDE9

" ── Popup / Menu ──────────────────────────────────────────────────────────────
hi Pmenu        guifg=#1C2B29 guibg=#CAD7D1
hi PmenuSel     guifg=#E4EDE9 guibg=#8A4F18
hi PmenuSbar    guibg=#CAD7D1
hi PmenuThumb   guibg=#B4C5BF
hi WildMenu     guifg=#E4EDE9 guibg=#8A4F18

" ── Messages ──────────────────────────────────────────────────────────────────
hi ModeMsg      guifg=#1C2B29 guibg=#E4EDE9
hi MoreMsg      guifg=#247068
hi ErrorMsg     guifg=#8B3530
hi WarningMsg   guifg=#7A5618
hi Question     guifg=#247068

" ── Diff ──────────────────────────────────────────────────────────────────────
hi DiffAdd      guibg=#C8E0D5
hi DiffChange   guibg=#DDD8B0
hi DiffDelete   guibg=#E0C4C0
hi DiffText     guibg=#8A4F18

" ── Misc UI ───────────────────────────────────────────────────────────────────
hi NonText      guifg=#526C68
hi SpecialKey   guifg=#B4C5BF
hi Whitespace   guifg=#B4C5BF
hi Title        guifg=#8A4F18              gui=bold,underline
hi Directory    guifg=#247068
hi Conceal      guifg=#526C68 guibg=NONE
hi SpellBad     guifg=#8B3530              gui=undercurl guisp=#8B3530
hi SpellCap     guifg=#7A5618              gui=undercurl guisp=#7A5618
hi SpellRare    guifg=#246A68              gui=undercurl guisp=#246A68

" ── Syntax ────────────────────────────────────────────────────────────────────
hi Comment      guifg=#526C68              gui=italic
hi Constant     guifg=#7A5E18
hi String       guifg=#226858
hi Character    guifg=#226858
hi Number       guifg=#7A5E18
hi Boolean      guifg=#7A5E18
hi Float        guifg=#7A5E18
hi Identifier   guifg=#1C2B29
hi Function     guifg=#247068
hi Statement    guifg=#8A4F18              gui=bold
hi Conditional  guifg=#8A4F18
hi Repeat       guifg=#8A4F18
hi Label        guifg=#8A4F18
hi Operator     guifg=#2E4540
hi Keyword      guifg=#8A4F18              gui=bold
hi Exception    guifg=#8B3530
hi PreProc      guifg=#246A68
hi Include      guifg=#247068
hi Define       guifg=#247068
hi Macro        guifg=#5C3E10
hi Type         guifg=#7A5E18
hi StorageClass guifg=#7A5E18
hi Structure    guifg=#7A5E18
hi Typedef      guifg=#7A5E18
hi Special      guifg=#247068
hi Delimiter    guifg=#3A5450
hi Todo         guifg=#E4EDE9 guibg=#2E6A58 gui=bold

" ── Diagnostics ───────────────────────────────────────────────────────────────
hi DiagnosticError guifg=#8B3530
hi DiagnosticWarn  guifg=#7A5618
hi DiagnosticInfo  guifg=#246A68
hi DiagnosticHint  guifg=#2E6A58
