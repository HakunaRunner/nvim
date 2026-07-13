vim.cmd("highlight clear")

if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.o.background = "dark"
vim.g.colors_name = "monolith"

local c = {
  bg      = "#0a0a0a",
  bg_alt  = "#101010",
  bg_ui   = "#151515",
  bg_sel  = "#202020",

  fg      = "#e8e8e8",
  fg_soft = "#c2c2c2",
  fg_mid  = "#969696",
  fg_dim  = "#666666",
  fg_dark = "#3f3f3f",

  red     = "#d75f5f",
  red_hi  = "#ff6b6b",
  red_dim = "#8f4444",
  red_dark = "#552e2e",

  none = "NONE",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- ============================================================================
-- Editor
-- ============================================================================

hi("Normal", {
  fg = c.fg_soft,
  bg = c.bg,
})

hi("NormalNC", {
  fg = c.fg_mid,
  bg = c.bg,
})

hi("NormalFloat", {
  fg = c.fg_soft,
  bg = c.bg_alt,
})

hi("FloatBorder", {
  fg = c.fg_dark,
  bg = c.bg_alt,
})

hi("FloatTitle", {
  fg = c.fg,
  bg = c.bg_alt,
  bold = true,
})

hi("Cursor", {
  fg = c.bg,
  bg = c.fg,
})

hi("CursorLine", {
  bg = c.bg_alt,
})

hi("CursorColumn", {
  bg = c.bg_alt,
})

hi("ColorColumn", {
  bg = c.bg_alt,
})

hi("LineNr", {
  fg = c.fg_dark,
})

hi("CursorLineNr", {
  fg = c.fg,
  bold = true,
})

hi("SignColumn", {
  bg = c.bg,
})

hi("FoldColumn", {
  fg = c.fg_dark,
  bg = c.bg,
})

hi("Folded", {
  fg = c.fg_dim,
  bg = c.bg_alt,
})

hi("VertSplit", {
  fg = c.fg_dark,
  bg = c.bg,
})

hi("WinSeparator", {
  fg = c.fg_dark,
  bg = c.bg,
})

hi("Visual", {
  bg = c.bg_sel,
})

hi("VisualNOS", {
  bg = c.bg_sel,
})

hi("Search", {
  fg = c.bg,
  bg = c.red,
  bold = true,
})

hi("IncSearch", {
  fg = c.bg,
  bg = c.red_hi,
  bold = true,
})

hi("CurSearch", {
  fg = c.bg,
  bg = c.red_hi,
  bold = true,
})

hi("MatchParen", {
  fg = c.red_hi,
  bold = true,
  underline = true,
})

hi("NonText", {
  fg = c.fg_dark,
})

hi("Whitespace", {
  fg = c.fg_dark,
})

hi("SpecialKey", {
  fg = c.fg_dark,
})

hi("EndOfBuffer", {
  fg = c.bg,
})

hi("Directory", {
  fg = c.fg,
  bold = true,
})

hi("Title", {
  fg = c.fg,
  bold = true,
})

hi("Question", {
  fg = c.fg,
})

hi("MoreMsg", {
  fg = c.fg_soft,
})

hi("ModeMsg", {
  fg = c.fg,
  bold = true,
})

hi("ErrorMsg", {
  fg = c.red_hi,
  bold = true,
})

hi("WarningMsg", {
  fg = c.red,
})

-- ============================================================================
-- Popup menu
-- ============================================================================

hi("Pmenu", {
  fg = c.fg_mid,
  bg = c.bg_alt,
})

hi("PmenuSel", {
  fg = c.fg,
  bg = c.bg_sel,
  bold = true,
})

hi("PmenuSbar", {
  bg = c.bg_ui,
})

hi("PmenuThumb", {
  bg = c.fg_dark,
})

-- ============================================================================
-- Status / tab line
-- ============================================================================

hi("StatusLine", {
  fg = c.fg_soft,
  bg = c.bg_ui,
})

hi("StatusLineNC", {
  fg = c.fg_dim,
  bg = c.bg_alt,
})

hi("TabLine", {
  fg = c.fg_dim,
  bg = c.bg_alt,
})

hi("TabLineFill", {
  bg = c.bg,
})

hi("TabLineSel", {
  fg = c.fg,
  bg = c.bg_ui,
  bold = true,
})

-- ============================================================================
-- Syntax
-- ============================================================================

hi("Comment", {
  fg = c.fg_dim,
  italic = true,
})

hi("Constant", {
  fg = c.fg_soft,
})

hi("String", {
  fg = c.fg_mid,
})

hi("Character", {
  fg = c.fg_mid,
})

hi("Number", {
  fg = c.fg,
})

hi("Boolean", {
  fg = c.red,
  bold = true,
})

hi("Float", {
  fg = c.fg,
})

hi("Identifier", {
  fg = c.fg_soft,
})

hi("Function", {
  fg = c.fg,
  bold = true,
})

hi("Statement", {
  fg = c.red,
})

hi("Conditional", {
  fg = c.red,
})

hi("Repeat", {
  fg = c.red,
})

hi("Label", {
  fg = c.fg_mid,
})

hi("Operator", {
  fg = c.fg_mid,
})

hi("Keyword", {
  fg = c.red,
  bold = true,
})

hi("Exception", {
  fg = c.red_hi,
})

hi("PreProc", {
  fg = c.fg_mid,
})

hi("Include", {
  fg = c.red_dim,
})

hi("Define", {
  fg = c.red_dim,
})

hi("Macro", {
  fg = c.red,
})

hi("PreCondit", {
  fg = c.red_dim,
})

hi("Type", {
  fg = c.fg,
})

hi("StorageClass", {
  fg = c.red_dim,
})

hi("Structure", {
  fg = c.fg,
})

hi("Typedef", {
  fg = c.fg,
})

hi("Special", {
  fg = c.red_dim,
})

hi("SpecialChar", {
  fg = c.red,
})

hi("Tag", {
  fg = c.fg,
})

hi("Delimiter", {
  fg = c.fg_dim,
})

hi("SpecialComment", {
  fg = c.fg_mid,
  italic = true,
})

hi("Debug", {
  fg = c.red_hi,
})

hi("Underlined", {
  underline = true,
})

hi("Ignore", {
  fg = c.fg_dark,
})

hi("Error", {
  fg = c.red_hi,
  bold = true,
})

hi("Todo", {
  fg = c.bg,
  bg = c.red,
  bold = true,
})

-- ============================================================================
-- Treesitter
-- ============================================================================

hi("@variable", {
  fg = c.fg_soft,
})

hi("@variable.builtin", {
  fg = c.red_dim,
})

hi("@variable.parameter", {
  fg = c.fg_mid,
  italic = true,
})

hi("@variable.member", {
  fg = c.fg_soft,
})

hi("@constant", {
  fg = c.fg,
})

hi("@constant.builtin", {
  fg = c.red,
})

hi("@constant.macro", {
  fg = c.red_dim,
})

hi("@module", {
  fg = c.fg_mid,
})

hi("@module.builtin", {
  fg = c.red_dim,
})

hi("@label", {
  fg = c.fg_mid,
})

hi("@string", {
  fg = c.fg_mid,
})

hi("@string.documentation", {
  fg = c.fg_dim,
  italic = true,
})

hi("@string.regexp", {
  fg = c.red_dim,
})

hi("@string.escape", {
  fg = c.red,
})

hi("@character", {
  fg = c.fg_mid,
})

hi("@character.special", {
  fg = c.red,
})

hi("@boolean", {
  fg = c.red,
  bold = true,
})

hi("@number", {
  fg = c.fg,
})

hi("@number.float", {
  fg = c.fg,
})

hi("@type", {
  fg = c.fg,
})

hi("@type.builtin", {
  fg = c.fg_soft,
  bold = true,
})

hi("@type.definition", {
  fg = c.fg,
})

hi("@attribute", {
  fg = c.red_dim,
})

hi("@property", {
  fg = c.fg_soft,
})

hi("@function", {
  fg = c.fg,
  bold = true,
})

hi("@function.builtin", {
  fg = c.fg_soft,
})

hi("@function.call", {
  fg = c.fg,
})

hi("@function.macro", {
  fg = c.red,
})

hi("@function.method", {
  fg = c.fg,
})

hi("@function.method.call", {
  fg = c.fg,
})

hi("@constructor", {
  fg = c.fg_soft,
})

hi("@operator", {
  fg = c.fg_mid,
})

hi("@keyword", {
  fg = c.red,
})

hi("@keyword.coroutine", {
  fg = c.red,
})

hi("@keyword.function", {
  fg = c.red_dim,
})

hi("@keyword.operator", {
  fg = c.red,
})

hi("@keyword.import", {
  fg = c.red_dim,
})

hi("@keyword.type", {
  fg = c.red,
})

hi("@keyword.modifier", {
  fg = c.red_dim,
})

hi("@keyword.repeat", {
  fg = c.red,
})

hi("@keyword.return", {
  fg = c.red_hi,
})

hi("@keyword.debug", {
  fg = c.red_hi,
})

hi("@keyword.exception", {
  fg = c.red_hi,
})

hi("@keyword.conditional", {
  fg = c.red,
})

hi("@keyword.conditional.ternary", {
  fg = c.fg_mid,
})

hi("@keyword.directive", {
  fg = c.red_dim,
})

hi("@keyword.directive.define", {
  fg = c.red_dim,
})

hi("@punctuation.delimiter", {
  fg = c.fg_dim,
})

hi("@punctuation.bracket", {
  fg = c.fg_mid,
})

hi("@punctuation.special", {
  fg = c.red_dim,
})

hi("@comment", {
  fg = c.fg_dim,
  italic = true,
})

hi("@comment.documentation", {
  fg = c.fg_dim,
  italic = true,
})

hi("@comment.error", {
  fg = c.red_hi,
  bold = true,
})

hi("@comment.warning", {
  fg = c.red,
  bold = true,
})

hi("@comment.todo", {
  fg = c.bg,
  bg = c.red,
  bold = true,
})

hi("@comment.note", {
  fg = c.fg,
  bold = true,
})

hi("@markup.strong", {
  bold = true,
})

hi("@markup.italic", {
  italic = true,
})

hi("@markup.strikethrough", {
  strikethrough = true,
})

hi("@markup.underline", {
  underline = true,
})

hi("@markup.heading", {
  fg = c.fg,
  bold = true,
})

hi("@markup.quote", {
  fg = c.fg_mid,
  italic = true,
})

hi("@markup.math", {
  fg = c.fg_soft,
})

hi("@markup.link", {
  fg = c.fg,
  underline = true,
})

hi("@markup.link.label", {
  fg = c.red_dim,
})

hi("@markup.link.url", {
  fg = c.fg_mid,
  underline = true,
})

hi("@markup.raw", {
  fg = c.fg_mid,
})

hi("@markup.list", {
  fg = c.red,
})

hi("@diff.plus", {
  fg = c.fg,
})

hi("@diff.minus", {
  fg = c.red,
})

hi("@diff.delta", {
  fg = c.fg_mid,
})

hi("@tag", {
  fg = c.red_dim,
})

hi("@tag.attribute", {
  fg = c.fg_mid,
})

hi("@tag.delimiter", {
  fg = c.fg_dim,
})

-- ============================================================================
-- LSP semantic tokens
-- ============================================================================

hi("@lsp.type.class", {
  fg = c.fg,
})

hi("@lsp.type.interface", {
  fg = c.fg,
  italic = true,
})

hi("@lsp.type.enum", {
  fg = c.fg,
})

hi("@lsp.type.enumMember", {
  fg = c.fg_soft,
})

hi("@lsp.type.function", {
  fg = c.fg,
  bold = true,
})

hi("@lsp.type.method", {
  fg = c.fg,
})

hi("@lsp.type.namespace", {
  fg = c.fg_mid,
})

hi("@lsp.type.parameter", {
  fg = c.fg_mid,
  italic = true,
})

hi("@lsp.type.property", {
  fg = c.fg_soft,
})

hi("@lsp.type.variable", {
  fg = c.fg_soft,
})

hi("@lsp.mod.deprecated", {
  strikethrough = true,
})

hi("@lsp.mod.readonly", {
  fg = c.fg,
})

hi("@lsp.mod.defaultLibrary", {
  fg = c.red_dim,
})

-- ============================================================================
-- Diagnostics
-- ============================================================================

hi("DiagnosticError", {
  fg = c.red_hi,
})

hi("DiagnosticWarn", {
  fg = c.red,
})

hi("DiagnosticInfo", {
  fg = c.fg_mid,
})

hi("DiagnosticHint", {
  fg = c.fg_dim,
})

hi("DiagnosticOk", {
  fg = c.fg_soft,
})

hi("DiagnosticUnderlineError", {
  undercurl = true,
  sp = c.red_hi,
})

hi("DiagnosticUnderlineWarn", {
  undercurl = true,
  sp = c.red,
})

hi("DiagnosticUnderlineInfo", {
  undercurl = true,
  sp = c.fg_mid,
})

hi("DiagnosticUnderlineHint", {
  undercurl = true,
  sp = c.fg_dim,
})

hi("DiagnosticVirtualTextError", {
  fg = c.red_dim,
  bg = c.bg_alt,
})

hi("DiagnosticVirtualTextWarn", {
  fg = c.red_dim,
  bg = c.bg_alt,
})

hi("DiagnosticVirtualTextInfo", {
  fg = c.fg_dim,
  bg = c.bg_alt,
})

hi("DiagnosticVirtualTextHint", {
  fg = c.fg_dark,
  bg = c.bg_alt,
})

-- ============================================================================
-- Git
-- ============================================================================

hi("DiffAdd", {
  fg = c.fg,
  bg = c.bg_alt,
})

hi("DiffChange", {
  fg = c.fg_mid,
  bg = c.bg_alt,
})

hi("DiffDelete", {
  fg = c.red,
  bg = c.bg_alt,
})

hi("DiffText", {
  fg = c.fg,
  bg = c.bg_sel,
  bold = true,
})

hi("GitSignsAdd", {
  fg = c.fg_mid,
})

hi("GitSignsChange", {
  fg = c.fg_dim,
})

hi("GitSignsDelete", {
  fg = c.red,
})

-- ============================================================================
-- Telescope
-- ============================================================================

hi("TelescopeNormal", {
  fg = c.fg_mid,
  bg = c.bg,
})

hi("TelescopeBorder", {
  fg = c.fg_dark,
  bg = c.bg,
})

hi("TelescopeTitle", {
  fg = c.fg,
  bold = true,
})

hi("TelescopePromptNormal", {
  fg = c.fg,
  bg = c.bg_alt,
})

hi("TelescopePromptBorder", {
  fg = c.fg_dark,
  bg = c.bg_alt,
})

hi("TelescopePromptPrefix", {
  fg = c.red,
})

hi("TelescopeSelection", {
  fg = c.fg,
  bg = c.bg_sel,
  bold = true,
})

hi("TelescopeSelectionCaret", {
  fg = c.red,
})

hi("TelescopeMatching", {
  fg = c.red_hi,
  bold = true,
})

-- ============================================================================
-- Blink / nvim-cmp
-- ============================================================================

hi("CmpItemAbbr", {
  fg = c.fg_mid,
})

hi("CmpItemAbbrMatch", {
  fg = c.fg,
  bold = true,
})

hi("CmpItemAbbrMatchFuzzy", {
  fg = c.fg,
})

hi("CmpItemAbbrDeprecated", {
  fg = c.fg_dark,
  strikethrough = true,
})

hi("CmpItemMenu", {
  fg = c.fg_dim,
})

hi("CmpItemKind", {
  fg = c.red_dim,
})

-- ============================================================================
-- Indent guides
-- ============================================================================

hi("IblIndent", {
  fg = c.bg_ui,
})

hi("IblScope", {
  fg = c.fg_dark,
})

-- ============================================================================
-- WhichKey
-- ============================================================================

hi("WhichKey", {
  fg = c.red,
})

hi("WhichKeyGroup", {
  fg = c.fg,
})

hi("WhichKeyDesc", {
  fg = c.fg_soft,
})

hi("WhichKeySeparator", {
  fg = c.fg_dark,
})

hi("WhichKeyValue", {
  fg = c.fg_dim,
})

-- ============================================================================
-- Mini / Snacks
-- ============================================================================

hi("MiniCursorword", {
  bg = c.bg_alt,
})

hi("MiniCursorwordCurrent", {
  bg = c.bg_alt,
})

hi("MiniIndentscopeSymbol", {
  fg = c.fg_dark,
})

hi("MiniFilesCursorLine", {
  fg = c.fg,
  bg = c.bg_sel,
  bold = true,
})

hi("SnacksIndent", {
  fg = c.bg_ui,
})

hi("SnacksIndentScope", {
  fg = c.fg_dark,
})

hi("SnacksPickerMatch", {
  fg = c.red_hi,
  bold = true,
})

hi("SnacksPickerSelected", {
  fg = c.fg,
  bg = c.bg_sel,
})

hi("MiniPickMatchCurrent", {
  fg = c.fg,
  bg = c.bg_sel,
  bold = true,
})
