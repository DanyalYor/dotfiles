return {
  -- Add mason-lspconfig here (at the top for clarity)
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        -- Lua
        "lua_ls",
        "stylua",
        -- Python
        "pyright",
        "black",
        "isort",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },
}
