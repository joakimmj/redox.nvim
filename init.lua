local M = {}

local redox = {
  bg = "#2E3434",
  bg_alt = "#343A3A",
  surface = "#3A4141",
  overlay = "#414949",
  fg = "#DCE8E5",
  muted = "#AFC3BE",
  subtle = "#919D9B",
  rust = "#CD8B64",
  orange = "#E3A36F",
  teal = "#7EC1AE",
  sea = "#9FD8C4",
  cyan = "#8FC7B7",
  amber = "#D6C38A",
  red = "#CD8980",
  warn = "#E3B86F",
  info = "#8EC6C4",
  hint = "#98C3B1",
  cursor = "#FFD7A0",
  selection = "#3F4A4A",
  terminal = {
    black = "#2E3434",
    red = "#C26E63",
    green = "#7FB8A4",
    yellow = "#D6C38A",
    blue = "#6FAFBD",
    magenta = "#B28FA3",
    cyan = "#8FC7B7",
    white = "#DCE8E5",
    black_bright = "#4A5353",
    red_bright = "#E08A7F",
    green_bright = "#A9D6C6",
    yellow_bright = "#EBD9A8",
    blue_bright = "#92CAD4",
    magenta_bright = "#D3ABC0",
    cyan_bright = "#B6E3D5",
    white_bright = "#F1F6F4",
  }
}

local color_scheme = {
  redox = redox,
}

local options = {
  transparent = false,
  style = "redox",
  terminal_colors = false,
}

local function set_transparency()
  local colors = color_scheme[options.style]
  if options.transparent then
    vim.api.nvim_set_hl(0, "Normal", { fg = colors.fg, bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { fg = colors.fg, bg = "none" })
    vim.api.nvim_set_hl(0, "FloatBorder", { fg = colors.overlay, bg = "none" })
    vim.api.nvim_set_hl(0, "SignColumn", { fg = colors.muted, bg = "none" })
  else
    vim.api.nvim_set_hl(0, "Normal", { fg = colors.fg, bg = colors.bg })
    vim.api.nvim_set_hl(0, "NormalFloat", { fg = colors.fg, bg = colors.bg_alt })
    vim.api.nvim_set_hl(0, "FloatBorder", { fg = colors.overlay, bg = colors.bg_alt })
    vim.api.nvim_set_hl(0, "SignColumn", { fg = colors.muted, bg = colors.bg })
  end
end

local function set_colors()
  local colors = color_scheme[options.style]
  vim.api.nvim_set_hl(0, "LineNr", { fg = colors.subtle, bg = "NONE" })
  vim.api.nvim_set_hl(0, "CursorLine", { bg = "#323838" })
  vim.api.nvim_set_hl(0, "CursorColumn", { link = "CursorLine" })
  vim.api.nvim_set_hl(0, "ColorColumn", { link = "CursorLine" })
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.orange, bold = true })
  vim.api.nvim_set_hl(0, "StatusLine", { fg = colors.bg, bg = colors.orange, bold = true })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = colors.muted, bg = colors.surface })
  vim.api.nvim_set_hl(0, "TabLine", { link = "StatusLineNC" })
  vim.api.nvim_set_hl(0, "TabLineSel", { link = "StatusLine" })
  vim.api.nvim_set_hl(0, "TabLineFill", { link = "Normal" })
  vim.api.nvim_set_hl(0, "VertSplit", { fg = colors.overlay })
  vim.api.nvim_set_hl(0, "WinSeparator", { fg = colors.overlay })
  vim.api.nvim_set_hl(0, "Visual", { bg = colors.selection })
  vim.api.nvim_set_hl(0, "Pmenu", { fg = colors.fg, bg = colors.surface })
  vim.api.nvim_set_hl(0, "PmenuSel", { fg = colors.bg, bg = colors.orange })
  vim.api.nvim_set_hl(0, "PmenuSbar", { bg = colors.surface })
  vim.api.nvim_set_hl(0, "PmenuThumb", { bg = colors.overlay })
  vim.api.nvim_set_hl(0, "Search", { fg = colors.bg, bg = colors.teal })
  vim.api.nvim_set_hl(0, "IncSearch", { fg = colors.bg, bg = colors.rust })
  vim.api.nvim_set_hl(0, "CurSearch", { fg = colors.bg, bg = colors.rust })
  vim.api.nvim_set_hl(0, "MatchParen", { fg = colors.orange, underline = true })
  vim.api.nvim_set_hl(0, "NonText", { fg = colors.subtle })
  vim.api.nvim_set_hl(0, "SpecialKey", { fg = colors.overlay })
  vim.api.nvim_set_hl(0, "Whitespace", { fg = colors.overlay })
  vim.api.nvim_set_hl(0, "Folded", { fg = colors.muted, bg = colors.surface })
  vim.api.nvim_set_hl(0, "FoldColumn", { fg = colors.subtle, bg = colors.bg })
  vim.api.nvim_set_hl(0, "Title", { fg = colors.orange, bold = true, underline = true })
  vim.api.nvim_set_hl(0, "Directory", { fg = colors.teal })
  vim.api.nvim_set_hl(0, "WildMenu", { link = "PmenuSel" })
  vim.api.nvim_set_hl(0, "ModeMsg", { link = "Normal" })
  vim.api.nvim_set_hl(0, "MoreMsg", { fg = colors.teal })
  vim.api.nvim_set_hl(0, "ErrorMsg", { link = "DiagnosticError" })
  vim.api.nvim_set_hl(0, "WarningMsg", { link = "DiagnosticWarn" })
  vim.api.nvim_set_hl(0, "@comment", { fg = colors.subtle, italic = true })
  vim.api.nvim_set_hl(0, "Todo", { bg = colors.hint, fg = colors.bg, bold = true })
  vim.api.nvim_set_hl(0, "@comment.todo", { link = "Todo" })
  vim.api.nvim_set_hl(0, "@keyword", { fg = colors.orange, bold = true })
  vim.api.nvim_set_hl(0, "@conditional", { fg = colors.orange })
  vim.api.nvim_set_hl(0, "@function", { fg = colors.teal })
  vim.api.nvim_set_hl(0, "@method", { link = "@function" })
  vim.api.nvim_set_hl(0, "@type", { fg = colors.amber })
  vim.api.nvim_set_hl(0, "@type.builtin", { fg = colors.amber })
  vim.api.nvim_set_hl(0, "@constant", { fg = colors.amber })
  vim.api.nvim_set_hl(0, "@string", { fg = colors.sea })
  vim.api.nvim_set_hl(0, "@number", { link = "@constant" })
  vim.api.nvim_set_hl(0, "@boolean", { link = "@constant" })
  vim.api.nvim_set_hl(0, "@operator", { fg = "#C9D4D2" })
  vim.api.nvim_set_hl(0, "@field", { fg = "#CFE3DE" })
  vim.api.nvim_set_hl(0, "@property", { link = "@field" })
  vim.api.nvim_set_hl(0, "@variable", { fg = colors.fg })
  vim.api.nvim_set_hl(0, "@variable.builtin", { fg = "#E6D4A3" })
  vim.api.nvim_set_hl(0, "@variable.member", { link = "@type.builtin" })
  vim.api.nvim_set_hl(0, "@attribute", { link = "@function" })
  vim.api.nvim_set_hl(0, "@markup.heading", { fg = colors.orange, bold = true })
  vim.api.nvim_set_hl(0, "@markup.heading.1", { fg = colors.orange, bold = true, underline = true })
  vim.api.nvim_set_hl(0, "@markup.heading.2", { fg = colors.rust, bold = true })
  vim.api.nvim_set_hl(0, "@markup.heading.3", { fg = colors.teal, bold = true })
  vim.api.nvim_set_hl(0, "@markup.heading.4", { fg = colors.amber, bold = true })
  vim.api.nvim_set_hl(0, "@markup.heading.5", { fg = colors.cyan, bold = true })
  vim.api.nvim_set_hl(0, "@markup.heading.6", { fg = colors.sea, bold = true })
  vim.api.nvim_set_hl(0, "DiagnosticError", { fg = colors.red })
  vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = colors.warn })
  vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = colors.info })
  vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = colors.hint })
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = colors.red, bg = colors.bg_alt })
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = colors.warn, bg = colors.bg_alt })
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { fg = colors.info, bg = colors.bg_alt })
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = colors.hint, bg = colors.bg_alt })
  vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = colors.red })
  vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = colors.warn })
  vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = colors.info })
  vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { undercurl = true, sp = colors.hint })
  vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", { fg = "#4A5353" })
  vim.api.nvim_set_hl(0, "LspInlayHint", { fg = colors.subtle, bg = colors.bg_alt, italic = true })
  vim.api.nvim_set_hl(0, "LspReferenceText", { bg = colors.bg_alt })
  vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = colors.bg_alt })
  vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = colors.bg_alt })
  vim.api.nvim_set_hl(0, "LspSignatureActiveParameter", { bg = colors.selection, bold = true })
  vim.api.nvim_set_hl(0, "LspCodeLens", { fg = colors.subtle })
  vim.api.nvim_set_hl(0, "LspInfoBorder", { fg = colors.overlay, bg = colors.bg_alt })
  vim.api.nvim_set_hl(0, "DiffAdd", { bg = "#33403B" })
  vim.api.nvim_set_hl(0, "DiffChange", { bg = "#403F30" })
  vim.api.nvim_set_hl(0, "DiffDelete", { bg = "#4A3333" })
  vim.api.nvim_set_hl(0, "DiffText", { bg = colors.orange })
  vim.api.nvim_set_hl(0, "diffAdded", { bg = "#33403B", fg = "#449dab" })
  vim.api.nvim_set_hl(0, "diffRemoved", { bg = "#4A3333", fg = "#914c54" })
  vim.api.nvim_set_hl(0, "diffChanged", { bg = "#403F30", fg = "#6183bb" })
  vim.api.nvim_set_hl(0, "diffOldFile", { fg = colors.orange, bg = "#4A3333" })
  vim.api.nvim_set_hl(0, "diffNewFile", { fg = colors.orange, bg = "#33403B" })
  vim.api.nvim_set_hl(0, "diffFile", { fg = colors.teal })
  vim.api.nvim_set_hl(0, "diffLine", { fg = colors.subtle })
  vim.api.nvim_set_hl(0, "diffIndexLine", { fg = colors.cyan })
  vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = colors.teal })
  vim.api.nvim_set_hl(0, "GitSignsChange", { fg = colors.amber })
  vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = colors.red })
  vim.api.nvim_set_hl(0, "QFFileName", { fg = colors.teal })
  vim.api.nvim_set_hl(0, "QuickFixLine", { fg = colors.bg, bg = colors.orange })
  vim.api.nvim_set_hl(0, "@lsp.type.class", { link = "@type" })
  vim.api.nvim_set_hl(0, "@lsp.type.struct", { link = "@type" })
  vim.api.nvim_set_hl(0, "@lsp.type.interface", { link = "@function" })
  vim.api.nvim_set_hl(0, "@lsp.type.enum", { link = "@type" })
  vim.api.nvim_set_hl(0, "@lsp.type.enumMember", { link = "@constant" })
  vim.api.nvim_set_hl(0, "@lsp.type.type", { link = "@type" })
  vim.api.nvim_set_hl(0, "@lsp.type.typeParameter", { link = "@type" })
  vim.api.nvim_set_hl(0, "@lsp.type.union", { link = "@type" })
  vim.api.nvim_set_hl(0, "@lsp.type.function", { link = "@function" })
  vim.api.nvim_set_hl(0, "@lsp.type.method", { link = "@method" })
  vim.api.nvim_set_hl(0, "@lsp.type.macro", { link = "@function" })
  vim.api.nvim_set_hl(0, "@lsp.type.constructor", { link = "@function" })
  vim.api.nvim_set_hl(0, "@lsp.type.variable", { link = "@variable" })
  vim.api.nvim_set_hl(0, "@lsp.type.parameter", { link = "@variable" })
  vim.api.nvim_set_hl(0, "@lsp.type.property", { link = "@type.builtin" })
  vim.api.nvim_set_hl(0, "@lsp.type.field", { link = "@field" })
  vim.api.nvim_set_hl(0, "@lsp.type.namespace", { link = "@variable" })
  vim.api.nvim_set_hl(0, "@lsp.type.package", { link = "@type" })
  vim.api.nvim_set_hl(0, "@lsp.type.number", { link = "@constant" })
  vim.api.nvim_set_hl(0, "@lsp.type.boolean", { link = "@constant" })
  vim.api.nvim_set_hl(0, "@lsp.type.string", { link = "@string" })
  vim.api.nvim_set_hl(0, "@lsp.type.escapeSequence", { link = "@string" })
  vim.api.nvim_set_hl(0, "@lsp.type.formatSpecifier", { link = "@string" })
  vim.api.nvim_set_hl(0, "@lsp.type.operator", { link = "@operator" })
  vim.api.nvim_set_hl(0, "@lsp.type.keyword", { link = "@keyword" })
  vim.api.nvim_set_hl(0, "@lsp.type.modifier", { link = "@keyword" })
  vim.api.nvim_set_hl(0, "@lsp.type.comment", { link = "@comment" })
  vim.api.nvim_set_hl(0, "@lsp.type.regexp", { link = "@string" })
  vim.api.nvim_set_hl(0, "@lsp.type.decorator", { fg = "#E6D4A3", italic = true })
  vim.api.nvim_set_hl(0, "@lsp.type.builtinType", { link = "@type.builtin" })
  vim.api.nvim_set_hl(0, "@lsp.type.selfKeyword", { link = "@variable.builtin" })
  vim.api.nvim_set_hl(0, "@lsp.type.null", { link = "@constant" })
  vim.api.nvim_set_hl(0, "@lsp.mod.deprecated", { strikethrough = true })
  vim.api.nvim_set_hl(0, "@lsp.mod.readonly", { underline = true, sp = "#4A5353" })
  vim.api.nvim_set_hl(0, "@lsp.mod.static", { italic = true })
  vim.api.nvim_set_hl(0, "@lsp.mod.abstract", { italic = true })
  vim.api.nvim_set_hl(0, "@lsp.mod.unused", { fg = "#4A5353" })
  vim.api.nvim_set_hl(0, "@lsp.typemod.variable.defaultLibrary", { link = "@variable.builtin" })
end

local function set_terminal_colors()
  local colors = color_scheme[options.style]

  -- dark
  vim.g.terminal_color_0 = colors.terminal.black
  vim.g.terminal_color_8 = colors.terminal.black_bright

  -- light
  vim.g.terminal_color_7 = colors.terminal.white
  vim.g.terminal_color_15 = colors.terminal.white_bright

  -- colors
  vim.g.terminal_color_1 = colors.terminal.red
  vim.g.terminal_color_9 = colors.terminal.red_bright

  vim.g.terminal_color_2 = colors.terminal.green
  vim.g.terminal_color_10 = colors.terminal.green_bright

  vim.g.terminal_color_3 = colors.terminal.yellow
  vim.g.terminal_color_11 = colors.terminal.yellow_bright

  vim.g.terminal_color_4 = colors.terminal.blue
  vim.g.terminal_color_12 = colors.terminal.blue_bright

  vim.g.terminal_color_5 = colors.terminal.magenta
  vim.g.terminal_color_13 = colors.terminal.magenta_bright

  vim.g.terminal_color_6 = colors.terminal.cyan
  vim.g.terminal_color_14 = colors.terminal.cyan_bright
end

function M.toggle_transparency()
  options.transparent = not options.transparent
  set_transparency()
end

function M.setup(opts)
  if opts.style ~= nil then
    options.style = opts.style
  end
  if opts.transparent ~= nil then
    options.transparent = opts.transparent
  end
  if opts.terminal_colors ~= nil then
    options.terminal_colors = opts.terminal_colors
  end
  if color_scheme[options.style] == nil then
    print("invalid style " .. options.style)
    return
  end

  vim.opt.termguicolors = true
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end
  vim.g.colors_name = options.style

  set_transparency()
  set_colors()

  if options.terminal_colors then
    set_terminal_colors()
  end
end

return M
