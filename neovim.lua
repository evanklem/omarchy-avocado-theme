-- ---- Avocado Theme ---- --

return {
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = function()
				-- Avocado Color Palette
				local colors = {
					bg = "#000000", -- terminal background
					fg = "#F2FFBE", -- light yellow foreground
					primary = "#B5E631", -- green primary accent
					secondary = "#99A91D", -- secondary green accent
					accent = "#EFE653", -- info/accent yellow
					success = "#3EAE0A",
					warning = "#EAA621",
					error = "#E6654F",
					muted = "#666666", -- dim foreground for comments / line numbers
					dark = "#160000", -- secondary background deep red-black
				}

				vim.cmd("highlight clear")
				vim.cmd("set termguicolors")

				-- Syntax groups
				vim.api.nvim_set_hl(0, "Normal", { fg = colors.fg, bg = colors.bg })
				vim.api.nvim_set_hl(0, "Comment", { fg = colors.muted, italic = true })
				vim.api.nvim_set_hl(0, "Constant", { fg = colors.secondary })
				vim.api.nvim_set_hl(0, "String", { fg = colors.accent })
				vim.api.nvim_set_hl(0, "Number", { fg = colors.secondary })
				vim.api.nvim_set_hl(0, "Boolean", { fg = colors.success, bold = true })
				vim.api.nvim_set_hl(0, "Identifier", { fg = colors.accent })
				vim.api.nvim_set_hl(0, "Function", { fg = colors.primary, bold = true })
				vim.api.nvim_set_hl(0, "Statement", { fg = colors.secondary, bold = true })
				vim.api.nvim_set_hl(0, "Keyword", { fg = colors.primary, bold = true })
				vim.api.nvim_set_hl(0, "Type", { fg = colors.secondary })
				vim.api.nvim_set_hl(0, "Special", { fg = colors.accent })

				-- UI elements
				vim.api.nvim_set_hl(0, "CursorLine", { bg = "#160000" })
				vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.primary, bold = true })
				vim.api.nvim_set_hl(0, "LineNr", { fg = colors.muted })
				vim.api.nvim_set_hl(0, "Visual", { bg = "#3EAE0A" }) 
				vim.api.nvim_set_hl(0, "Search", { fg = colors.bg, bg = colors.primary })
				vim.api.nvim_set_hl(0, "IncSearch", { fg = colors.bg, bg = colors.secondary })
				vim.api.nvim_set_hl(0, "Pmenu", { fg = colors.fg, bg = "#160000" })
				vim.api.nvim_set_hl(0, "PmenuSel", { fg = colors.bg, bg = colors.primary })
				vim.api.nvim_set_hl(0, "StatusLine", { fg = colors.fg, bg = "#160000" })
				vim.api.nvim_set_hl(0, "StatusLineNC", { fg = colors.muted, bg = "#160000" })
				vim.api.nvim_set_hl(0, "VertSplit", { fg = colors.dark })
				vim.api.nvim_set_hl(0, "Title", { fg = colors.primary, bold = true })
				vim.api.nvim_set_hl(0, "ErrorMsg", { fg = colors.bg, bg = colors.error, bold = true })
				vim.api.nvim_set_hl(0, "WarningMsg", { fg = colors.bg, bg = colors.warning })
				vim.api.nvim_set_hl(0, "InfoMsg", { fg = colors.bg, bg = colors.accent })
			end,
		},
	},
}
