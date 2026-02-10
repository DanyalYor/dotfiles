local map = vim.keymap.set

-- navigate windows
map("n", "<C-h>", "<C-w>h", { desc = "Window left" })
map("n", "<C-l>", "<C-w>l", { desc = "Window right" })
map("n", "<C-j>", "<C-w>j", { desc = "Window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Window up" })

-- toggle nvimtree explorer
map("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

-- format
map("n", "<leader>fm", vim.lsp.buf.format, { desc = "Format file" })

-- switch tabs
map("n", "<Tab>", ":BufferNext<CR>", { desc = "Switch to next tab" })
map("n", "<S-Tab>", ":BufferPrevious<CR>", { desc = "Switch to previous tab" })

-- markdown preview
map("n", "<leader>mp", ":MarkdownPreview<CR>", { desc = "Preview markdown file" })
