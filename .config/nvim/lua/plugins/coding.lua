return{
	-- Rename several places
	{
		"smjonas/inc-rename.nvim",
		cmd = "IncRename",
		config = true,
	},

	-- Autpair brackets
	{
	    'windwp/nvim-autopairs',
	    event = "InsertEnter",
	    config = true
	    -- use opts = {} for passing setup options
	    -- this is equivalent to setup({}) function
	},

	-- Autocomplete suggestions
	{
	  "hrsh7th/nvim-cmp",
	  version = false, -- last release is way too old
	  event = "InsertEnter",
	  dependencies = {
	    "hrsh7th/cmp-nvim-lsp",
	    "hrsh7th/cmp-buffer",
	    "hrsh7th/cmp-path",
	  },
	  -- Not all LSP servers add brackets when completing a function.
	  -- To better deal with this, LazyVim adds a custom option to cmp,
	  -- that you can configure. For example:
	  --
	  -- ```lua
	  -- opts = {
	  --   auto_brackets = { "python" }
	  -- }
	  -- ```
	  opts = {}
  },
}
