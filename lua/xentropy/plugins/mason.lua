return {
    "williamboman/mason.nvim",
    opts = {
        ensure_installed = {
            "pyright",
        },
    },
    config = function()
        local mason = require("mason")
        mason.setup({
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup({
                        capabilities = require("cmp_nvim_lsp").default_capabilities(),
                    })
                end,
            },
        })
    end,
}
