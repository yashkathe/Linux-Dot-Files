return {
    "nvim-lualine/lualine.nvim",
    config = function()
        local lualine = require("lualine")

        -- a small helper to get total lines
        local total_lines = function()
            return vim.fn.line("$") .. "L"
        end

        lualine.setup({
            options = {
                icons_enabled = true,
                theme = "everforest",
            },
            sections = {
                -- left
                lualine_a = { "mode" },
                lualine_b = { "branch", "diff", "diagnostics" },
                lualine_c = { "filename" },

                -- right
                lualine_x = {
                    "encoding",
                    "fileformat",
                    "filetype",
                },
                lualine_y = {
                    -- shows "Ln,Col"
                    "location",
                    -- shows "cur/total" or percentage
                    "progress",
                },
                -- far right: just total line count via custom function
                lualine_z = { total_lines },
            },
        })
    end,
}
