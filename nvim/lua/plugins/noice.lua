return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify", -- keep the dependency
	},
	config = function()
		local notify = require("notify")
		notify.setup({
			background_colour = "#000000", -- removes NotifyBackground warning
			level = vim.log.levels.ERROR, -- hides INFO/WARN pop-ups
		})
		vim.notify = notify -- make sure everyone uses it

		require("noice").setup({
			cmdline = {
				view = "cmdline_popup",
				format = {
					cmdline = { icon = " " },
					search_down = { icon = "🔍 " },
					search_up = { icon = "🔍 " },
					filter = { icon = "$" },
					lua = { icon = "" },
					help = { icon = "" },
				},
			},
			messages = { enabled = true },
			notify = { enabled = true },
			lsp = {
				progress = { enabled = true },
				message = { enabled = true },
				signature = { enabled = true },
			},
			presets = {
				bottom_search = false,
				command_palette = true,
				long_message_to_split = true,
			},

			-- silence the “vim.lsp.buf_get_clients() is deprecated” notice
			routes = {
				{
					filter = {
						event = "msg_show",
						find = "vim%.lsp%.buf_get_clients%(%) is deprecated",
					},
					opts = { skip = true },
				},
			},
		})
	end,
}
