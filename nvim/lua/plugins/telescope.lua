return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' }, 
    config = function()
        local builtin = require("telescope.builtin")
        
        -- Keybindings for Telescope
        vim.keymap.set('n', '<A-t>', builtin.find_files, {})
        vim.keymap.set('n', '<S-t>', builtin.live_grep, {})
        vim.keymap.set('n', '<C-t>', builtin.current_buffer_fuzzy_find, {})
    end
}
