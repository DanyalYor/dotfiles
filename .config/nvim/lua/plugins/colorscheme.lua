return {
  {
    "craftzdog/solarized-osaka.nvim",
    priority = 1000, -- Ensure it loads before other plugins
    lazy = false,    -- Load immediately (not lazy-loaded)
    config = function()
      -- Set the colorscheme
      vim.cmd.colorscheme("solarized-osaka")

      require("solarized-osaka").setup({
        terminal_colors = true, -- Enable terminal colors
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
          functions = {},
          variables = {},
        },
      })
    end,
  }
}
