return {
    "lewis6991/gitsigns.nvim",
    event = "BufReadPre",
    config = function()
        require("gitsigns").setup({
            signs = {
                add = { text = "A", hl = "GitSignsAdd" },
                change = { text = "C", hl = "GitSignsChange" },
                delete = { text = "D", hl = "GitSignsDelete" },
                topdelete = { text = "D", hl = "GitSignsDelete" },
                changedelete = { text = "C", hl = "GitSignsChange" },
            },
            signcolumn = true,
            numhl = false,
            linehl = false,
            word_diff = false,
            current_line_blame = false,
        })

        -- Set custom highlight colors (you can tweak these)
        vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = "#98c379" }) -- green
        vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#e5c07b" }) -- yellow
        vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#e06c75" }) -- red
    end,
}
