return {
  {
    "folke/tokyonight.nvim",
    lazy = false, -- Load immediately (not lazy-loaded)
    priority = 1000, -- Load before other plugins
    config = function()
      require("tokyonight").setup({
        -- Optional: Configure Tokyo Night options
        style = "night", -- "night" (default), "storm", "moon", or "day"
        transparent = false, -- Enable transparent background
        terminal_colors = true, -- Enable terminal colors
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
        },
      })
      -- Set the colorscheme
      vim.cmd("colorscheme tokyonight")
    end,
  }
}
