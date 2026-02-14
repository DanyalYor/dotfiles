vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Global editor settings
vim.opt.number = true
vim.opt.relativenumber = true
--
-- Use spaces instead of tabs
vim.opt.expandtab = true -- Converts <Tab> to spaces

-- Number of spaces per tab stop
vim.opt.tabstop = 2    -- Display width of a tab
vim.opt.shiftwidth = 2 -- Indentation amount for >>, <<, and auto-indent

-- Optional: make backspace delete 2 spaces as one unit
vim.opt.softtabstop = 2

vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true

-- Copy to system clipboard
vim.opt.clipboard = "unnamedplus"
