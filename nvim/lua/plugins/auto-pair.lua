return {
    "windwp/nvim-autopairs",
    event = "InsertEnter",  -- Load only in Insert mode
    config = function()
        require("nvim-autopairs").setup({
            check_ts = true, -- Enable Treesitter integration
        })
    end,
}
