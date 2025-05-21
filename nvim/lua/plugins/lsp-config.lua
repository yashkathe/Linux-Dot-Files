return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		dependencies = { "williamboman/mason.nvim" },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"pyright",
					"bashls",
					"cssls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilites = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilites,
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilites,
			})
			lspconfig.pyright.setup({
				capabilities = capabilites,
			})
			lspconfig.bashls.setup({
				capabilities = capabilites,
			})

			-- Enable inline diagnostics
			vim.diagnostic.config({
				virtual_text = true, -- Show inline errors
				signs = true, -- Show signs in the gutter
				underline = true, -- Underline problematic code
				update_in_insert = false, -- Don't show diagnostics while typing
			})

			vim.keymap.set("n", "<S-m>", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
