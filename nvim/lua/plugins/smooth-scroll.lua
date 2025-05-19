return {
	"karb94/neoscroll.nvim",
	config = function()
		local neoscroll = require("neoscroll")
		neoscroll.setup()

		local scroll = neoscroll.scroll
		local opts = { silent = true }

		vim.keymap.set("n", "<C-u>", function()
			scroll(-5, true, 100)
		end, opts)
		vim.keymap.set("n", "<C-d>", function()
			scroll(5, true, 100)
		end, opts)
		vim.keymap.set("n", "<C-y>", function()
			scroll(-5, false, 100)
		end, opts)
		vim.keymap.set("n", "<C-e>", function()
			scroll(5, false, 100)
		end, opts)
	end,
}
