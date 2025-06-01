return {
    {
        "numToStr/Comment.nvim",
        lazy = false,
        config = function()
            require("Comment").setup({
                toggler = {
                    line = "gcc",
                },
                opleader = {
                    line = "gc",
                },
                mappings = {
                    basic = true,
                    extra = false,
                },
            })
        end,
    },
}
