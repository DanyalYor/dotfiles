local map = vim.keymap.set

-- telescope fuzzy finder
local builtin = require('telescope.builtin')
map('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
map('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
map('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
map('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
map('n', '<leader>fd', builtin.diagnostics, { desc = 'Telescope diagnostics ' })
map('n', '<leader>de', function()
  vim.diagnostic.open_float(nil, {
    focusable = true,
    header = "Diagnostic",
    title = "Diagnostic",
    border = "rounded",
    max_width = 120, -- prevents horizontal scroll
  })
end, { desc = 'Show full diagnostic' })

-- theme picker
local theme = require('theme-picker')
map('n', '<leader>tp', theme.open_theme_picker, { desc = 'Open theme picker' })
