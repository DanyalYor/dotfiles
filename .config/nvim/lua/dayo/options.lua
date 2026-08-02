vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Global editor settings
vim.opt.number = true
vim.opt.relativenumber = true
--
-- Use spaces instead of tabs
vim.opt.expandtab = true -- Converts <Tab> to spaces
vim.opt.tabstop = 2      -- Number of spaces that a <Tab> counts for
vim.opt.shiftwidth = 2   -- Number of spaces for each indentation level
vim.opt.softtabstop = 2  -- Number of spaces <Tab> inserts (when expandtab is on)

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
