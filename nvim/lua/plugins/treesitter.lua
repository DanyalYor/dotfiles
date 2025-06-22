return {
  {
    "nvim-treesitter/nvim-treesitter",
    version = false, -- Always use latest version
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "TSUpdateSync" },
    opts = {
      ensure_installed = { "python", "lua", "bash" }, -- Core languages
      highlight = {
        enable = true,
        disable = function(lang, buf)
          -- Only disable if file is too large
          return vim.api.nvim_buf_line_count(buf) > 10000
        end,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = "<C-s>",
          node_decremental = "<C-bs>",
        },
      },
    },
    config = function(_, opts)
      -- Aggressive loading strategy
      require("nvim-treesitter.configs").setup(opts)
      
      -- Immediate force-load for current buffer
      vim.defer_fn(function()
        vim.treesitter.start()
      end, 0)
    end,
  }
}
