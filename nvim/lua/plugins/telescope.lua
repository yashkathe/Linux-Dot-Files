return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local builtin = require("telescope.builtin")

            -- Keybindings for Telescope
            vim.keymap.set("n", "<A-t>", builtin.find_files, {})
            vim.keymap.set("n", "<S-t>", builtin.live_grep, {})
            vim.keymap.set("n", "<C-t>", builtin.current_buffer_fuzzy_find, {})
        end,
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })
            require("telescope").load_extension("ui-select")
        end,
    },
    {
        "ahmedkhalf/project.nvim",
        config = function()
            require("project_nvim").setup({})
            require("telescope").load_extension("projects")
        end,
    },
}
