local keymap = vim.keymap.set
local builtin = require('telescope.builtin')

keymap('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
keymap('n', '<leader>gf', builtin.git_files, { desc = 'Telescope live grep' })
keymap('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
