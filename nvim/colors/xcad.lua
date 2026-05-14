-- xcad colorscheme (from Windows Terminal)

vim.cmd("highlight clear")
vim.o.termguicolors = true

local colors = {
    bg = "none",
    fg = "#F1F1F1",

    black = "#121212",
    red = "#A52AFF",
    green = "#7129FF",
    yellow = "#3D2AFF",
    blue = "#2B4FFF",
    purple = "#2883FF",
    cyan = "#28B9FF",
    white = "#F1F1F1",

    bright_black = "#666666",
    bright_red = "#BA5AFF",
    bright_green = "#905AFF",
    bright_yellow = "#685AFF",
    bright_blue = "#5C78FF",
    bright_purple = "#5EA2FF",
    bright_cyan = "#5AC8FF",
    bright_white = "#FFFFFF",
}

-- ✅ Core UI
vim.api.nvim_set_hl(0, "Normal", { fg = colors.fg, bg = colors.bg })
vim.api.nvim_set_hl(0, "NormalNC", { fg = colors.fg, bg = colors.bg })
vim.api.nvim_set_hl(0, "CursorLine", { bg = colors.black })
vim.api.nvim_set_hl(0, "LineNr", { fg = colors.bright_black })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.bright_blue, bold = true })

vim.api.nvim_set_hl(0, "VertSplit", { fg = colors.black })
vim.api.nvim_set_hl(0, "StatusLine", { fg = colors.fg, bg = colors.black })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = colors.bright_black, bg = colors.black })

-- ✅ Syntax highlighting
vim.api.nvim_set_hl(0, "Comment", { fg = colors.bright_black, italic = true })
vim.api.nvim_set_hl(0, "String", { fg = colors.green })
vim.api.nvim_set_hl(0, "Character", { fg = colors.green })

vim.api.nvim_set_hl(0, "Number", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "Boolean", { fg = colors.yellow })

vim.api.nvim_set_hl(0, "Identifier", { fg = colors.purple })
vim.api.nvim_set_hl(0, "Function", { fg = colors.blue })

vim.api.nvim_set_hl(0, "Keyword", { fg = colors.red })
vim.api.nvim_set_hl(0, "Conditional", { fg = colors.red, italic = true })
vim.api.nvim_set_hl(0, "Repeat", { fg = colors.red })

vim.api.nvim_set_hl(0, "Operator", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "Type", { fg = colors.bright_blue })

-- ✅ Diagnostics
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = colors.red })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = colors.blue })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = colors.cyan })

-- ✅ Visual selection
vim.api.nvim_set_hl(0, "Visual", { bg = "#2A2A2A" })

-- ✅ Search
vim.api.nvim_set_hl(0, "Search", { fg = colors.bg, bg = colors.bright_blue })
vim.api.nvim_set_hl(0, "IncSearch", { fg = colors.bg, bg = colors.bright_cyan })

-- ✅ Popup menus
vim.api.nvim_set_hl(0, "Pmenu", { fg = colors.fg, bg = colors.black })
vim.api.nvim_set_hl(0, "PmenuSel", { fg = colors.bg, bg = colors.blue })

-- ✅ Git signs
vim.api.nvim_set_hl(0, "DiffAdd", { fg = colors.green })
vim.api.nvim_set_hl(0, "DiffChange", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "DiffDelete", { fg = colors.red })

-- ✅ Transparent support (optional)
-- Uncomment if you want full transparency:
-- vim.api.nvim_set_hl(0, "Normal", { fg = colors.fg, bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalNC", { fg = colors.fg, bg = "none" })
-- vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })

vim.g.colors_name = "xcad"
