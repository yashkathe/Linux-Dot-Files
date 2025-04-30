return {
    "nvimtools/none-ls.nvim",
    dependencies = { "nvimtools/none-ls-extras.nvim" },
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,
            },
        })

        -- keep your manual mapping if you like
        vim.keymap.set("n", "<C-i>", vim.lsp.buf.format, {})

        -- create an augroup to avoid duplicate autocommands
        local fmt_grp = vim.api.nvim_create_augroup("LspFormatOnSave", { clear = true })

        vim.api.nvim_create_autocmd("BufWritePre", {
            group = fmt_grp,
            pattern = "*", -- or e.g. "*.lua", "*.js", "*.py" to restrict
            callback = function()
                -- sync format so the file is saved after formatting
                vim.lsp.buf.format({ async = false })
            end,
        })
    end,
}
