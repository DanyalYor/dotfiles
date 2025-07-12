-- Set space as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap.set

-- Leader + y to copy to system clipboard
keymap("n", "<leader>y", '"+y', { desc = "Copy to system clipboard" })
keymap("v", "<leader>y", '"+y', { desc = "Copy to system clipboard" })
keymap("n", "<leader>Y", '"+Y', { desc = "Copy line to system clipboard" })

-- Do things without affecting the registers
keymap("n", "x", '"_x')
keymap("n", "<Leader>p", '"0p')
keymap("n", "<Leader>P", '"0P')
keymap("v", "<Leader>p", '"0p')
keymap("n", "<Leader>c", '"_c')
keymap("n", "<Leader>C", '"_C')
keymap("v", "<Leader>c", '"_c')
keymap("v", "<Leader>C", '"_C')
keymap("n", "<Leader>d", '"_d')
keymap("n", "<Leader>D", '"_D')
keymap("v", "<Leader>d", '"_d')
keymap("v", "<Leader>D", '"_D')

-- Travel through diagnostics
keymap("n", "[d", vim.diagnostic.goto_next)
keymap("n", "]d", vim.diagnostic.goto_prev)

-- For going back to filetree
keymap("n", "<leader>ex", vim.cmd.Ex)
