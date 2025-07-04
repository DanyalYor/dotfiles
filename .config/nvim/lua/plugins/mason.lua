return {
	-- mason
	{
	    "williamboman/mason.nvim",
	    opts = {
	      ensure_installed = {
		-- LSP servers
		"bashls",
		"lua-language-server",
		"pyright",
		"yamlls",

		-- Formatters and linters
		"stylua",
		"shellcheck",
	      },
	    },
	  },
}
