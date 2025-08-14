return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "go",
                "python",
                "lua",
                "typescript",
                "json"
            },

            config = function(_, opts)
                require("nvim-treesitter.configs").setup(opts)
            end,
        },
    },
}
