return {
	"neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
        { "antosha417/nvim-lsp-file-operations", config = true},
        { "folke/neodev.nvim", opts={} }
    },
    config = function()
        require("mason").setup()
        local lspconfig = require("lspconfig")
        local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
        local mason_lspconfig = require("mason-lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        local telescope = require("telescope")
        local keymap = vim.keymap

        lspconfig.mojo.setup({})
        local signs = {
            { name = 'DiagnosticSignError', text = '' },
            { name = 'DiagnosticSignWarn', text = '' },
            { name = 'DiagnosticSignHint', text = '' },
            { name = 'DiagnosticSignInfo', text = '' },
        }

        for _, sign in ipairs(signs) do
            vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = '' })
        end

        local config = {
            signs = {
                active = signs, -- show signs
            },
            update_in_insert = false,
            underline = true,
            severity_sort = true,
            float = {
                focusable = true,
                style = 'minimal',
                border = 'single',
                source = 'always',
                header = 'Diagnostic',
                prefix = '',
            },
        }

        mason_lspconfig.setup_handlers({
            function(server_name)
                lspconfig[server_name].setup({
                    capabilities = lsp_capabilities,
                })
            end,
        })
    end,
}
