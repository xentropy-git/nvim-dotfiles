return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
        {'nvim-telescope/telescope-fzf-native.nvim', build = "make" },
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
    config = function()
        local actions = require('telescope.actions')
        local telescope = require('telescope')
        telescope.setup {
            defaults = {
                path_display = { "smart" },
                mappings = {
                    i = {
                        ["<esc>"] = actions.close,
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                    },
                },
            },
        }
        telescope.load_extension('fzf')
    end,
}
