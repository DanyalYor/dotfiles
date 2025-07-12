return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = { 
            -- lsp
            "lua_ls",
            "pyright",
        },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
}
