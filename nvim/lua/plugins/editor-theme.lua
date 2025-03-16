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
				bg = true,
				float = true,
			},
			bold_keywords = true,
			bright_border = false,
			italic_comments = true,
			cursorline = {
				bold_number = true,
				blend = 0.85,
				bold = true,
			},
		})
		require("nordic").load()
	end,
}
