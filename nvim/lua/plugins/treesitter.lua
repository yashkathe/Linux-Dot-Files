return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
			"windwp/nvim-ts-autotag",
		},
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "lua", "tsx", "html", "css", "javascript", "python", "typescript", "bash" },
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = true },
				autotag = { enable = true },
				textobjects = {
					select = {
						enable = true,
						lookahead = true,
						keymaps = {
							fo = "@function.outer",
							fi = "@function.inner",
							co = "@class.outer",
							ci = "@class.inner",
						},
					},
					move = {
						enable = true,
						set_jumps = true,
						goto_next_start = {
							["]f"] = "@function.outer",
							["]c"] = "@class.outer",
						},
						goto_previous_start = {
							["[f"] = "@function.outer",
							["[c"] = "@class.outer",
						},
					},
				},
			})
			require("nvim-ts-autotag").setup()
		end,
	},

	-- autopairs for brackets/parentheses
	{
		"windwp/nvim-autopairs",
		opts = {
			check_ts = true,
			enable_check_bracket_line = false,
		},
	},
}
