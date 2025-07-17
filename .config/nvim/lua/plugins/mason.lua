return {
    {
        "mason-org/mason.nvim",
        opts = {
            ensure_installed = {
                "lua_ls",
                "pyright",
            },
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            },
        },
    },

    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
        },
    },
}
