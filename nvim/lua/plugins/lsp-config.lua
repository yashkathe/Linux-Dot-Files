return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {"williamboman/mason.nvim"},
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "ts_ls", "pyright", "bashls" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.ts_ls.setup({})
            lspconfig.pyright.setup({})
            lspconfig.bashls.setup({})

            -- Enable inline diagnostics 
            vim.diagnostic.config({
                virtual_text = true,  -- Show inline errors
                signs = true,         -- Show signs in the gutter
                underline = true,     -- Underline problematic code
                update_in_insert = false, -- Don't show diagnostics while typing
            })

            vim.keymap.set('n', '<S-m>', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}

