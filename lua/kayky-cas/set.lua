vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.autoindent = true

vim.g.mapleader = " "

vim.cmd [[autocmd BufWritePre * :Autoformat]]
