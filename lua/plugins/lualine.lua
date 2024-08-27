return {
    "nvim-lualine/lualine.nvim",
    depends = { "kyazdani42/nvim-web-devicons",
                "nvim-tree/nvim-tree.lua" },
    config = function()
        require("lualine").setup({
            options = {
                disabled_filetypes = { 'NvimTree' },
            }
        })
    end
}
