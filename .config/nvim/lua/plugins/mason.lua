return {
	-- mason
	{
	    "williamboman/mason.nvim",
	    opts = {
	      ensure_installed = {
		-- LSP servers
		"bashls",
		"lua_ls",
		"pyright",
		"yamlls",

		-- Formatters and linters
		"stylua",
		"shellcheck",
	      },
	    },
	  },
}
