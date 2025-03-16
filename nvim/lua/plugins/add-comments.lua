return {
    {
        "numToStr/Comment.nvim",
        lazy = false,
        config = function()
            require("Comment").setup({
                toggler = {
                    line = "<C-_>",
                    block = "<C-?>",
                },
                opleader = {
                    line = "<C-_>",
                    block = "<C-?>",
                },
                mappings = {
                    basic = true,
                    extra = false,
                },
            })
        end,
    },
}
