vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    print("Treesitter active for", vim.bo.filetype, "?", vim.treesitter.highlighter.active[vim.api.nvim_get_current_buf()])
  end,
})
