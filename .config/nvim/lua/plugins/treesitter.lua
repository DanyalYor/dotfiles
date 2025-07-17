return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
                "c",
				"cmake",
				"cpp",
				"gitignore",
				"go",
				"rust",
				"sql",
                "python",
                "lua",
			},

            sync_install = false,

            highlight = {
                enable = true,
            }
		},
		config = function(_, opts)
			require("nvim-treesitter.configs").setup(opts)

			-- MDX
			vim.filetype.add({
				extension = {
					mdx = "mdx",
				},
			})
			vim.treesitter.language.register("markdown", "mdx")
		end,
	},
}
