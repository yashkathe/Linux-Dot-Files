-- THEME 1

-- return {
--    "catppuccin/nvim",
--    lazy = false,
--    name = "catppuccin",
--    priority = 999,
--    config = function()
--        vim.cmd.colorscheme("catppuccin")
--    end
--}

-- THEME 2

return {
	"AlexvZyl/nordic.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("nordic").setup({
			transparent = {
				bg = false,
				float = true,
			},
			bold_keywords = true,
			bright_border = false,
			italic_comments = true,
			cursorline = {
				bold_number = true,
				blend = 0,
				bold = true,
			},
            overwrite = {
				Visual = { bg = "#4C566A", fg = "#EBCB8B", bold = true },
				Cursor = { fg = "#2E3440", bg = "#88C0D0", bold = true },
				MultiCursor = { fg = "#2E3440", bg = "#BF616A", bold = true },
				MultiCursorInsert = { fg = "#D8DEE9", bg = "#A3BE8C", bold = true },
            }
		})
		require("nordic").load()
	end,
}
