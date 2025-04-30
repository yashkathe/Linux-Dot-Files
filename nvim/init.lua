local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out,                            "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- Disable netrw so `nvim .` won’t fall back to it
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Auto-open Telescope find_files when starting on a directory
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function(data)
        local stat = vim.loop.fs_stat(data.file)
        if stat and stat.type == "directory" then
            vim.cmd.cd(data.file)
            require("telescope.builtin").find_files({ hidden = false })
        end
    end,
})

-- Fast Scrolling
-- Alt+Down = 5 lines down, Alt+Up = 5 lines up
vim.keymap.set("n", "<A-Down>", "5j", { noremap = true, silent = true, desc = "Jump 5 lines down" })
vim.keymap.set("n", "<A-Up>", "5k", { noremap = true, silent = true, desc = "Jump 5 lines up" })

require("vim-config")
require("lazy").setup("plugins")
