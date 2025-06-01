return {
	"github/copilot.vim",
	lazy = false,

	config = function()
		-- Disable Copilot in specific filetypes
		vim.g.copilot_filetypes = {
			markdown = false,
			help = false,
			text = false,
			gitcommit = false,
		}

		-- Prevent Copilot from automatically mapping <Tab>
		vim.g.copilot_no_tab_map = true

		-- Use Ctrl+L to accept Copilot suggestions (instead of Tab)
		vim.api.nvim_set_keymap("i", "<C-l>", 'copilot#Accept("<CR>")', {
			expr = true,
			silent = true,
			script = true,
		})
	end,
}
