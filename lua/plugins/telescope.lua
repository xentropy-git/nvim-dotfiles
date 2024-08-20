return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 
        'nvim-lua/plenary.nvim',
        'BurntSushi/ripgrep',
    },
    keys = {
        {
            "<leader>ff",
            function()
                require('telescope.builtin').find_files()
            end,
        },
        {
            "<leader>fg",
            function()
                require('telescope.builtin').live_grep()
            end,
        }
    },
}
