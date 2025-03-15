vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=7")
vim.cmd("set shiftwidth=4")
vim.opt.number = true

vim.keymap.set('n', '<C-i>', function()
    local save_cursor = vim.api.nvim_win_get_cursor(0) -- Save current cursor position
    vim.cmd("normal! gg=G") -- Auto-indent entire file
    vim.api.nvim_win_set_cursor(0, save_cursor) -- Restore cursor position
end, { noremap = true, silent = true }) 
