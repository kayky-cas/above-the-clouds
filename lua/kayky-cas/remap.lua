local nnoremap = require("kayky-cas.keymap").nnoremap

nnoremap("<leader>e", "<cmd>Ex<CR>")
nnoremap("<leader>w", "<cmd>w<CR>")
nnoremap("<leader>s", "<cmd>bdelete<CR>")
nnoremap("<leader>q", "<cmd>close<CR>")
nnoremap("<leader>q", "<cmd>close<CR>")
nnoremap("<leader>Q", "<cmd>q<CR>")

nnoremap("<leader>-", "<C-w>v")
nnoremap("<leader>=", "<C-w>s")
-- nnoremap("<leader><Tab>", "<cmd>bn<CR>")
-- nnoremap("<leader>t", "<cmd>Sex!<CR>")

local tb = require('telescope.builtin')
nnoremap("<leader><Tab>", "zz")
nnoremap("<leader> ", tb.find_files)

nnoremap("<leader><C-l>", "<cmd>vertical resize +25<CR>")
nnoremap("<leader><C-h>", "<cmd>vertical resize -25<CR>")
nnoremap("<leader><C-j>", "<cmd>resize +25<CR>")
nnoremap("<leader><C-k>", "<cmd>resize -25<CR>")

nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")
-- vim.keymap.set('n', '<leader><Tab>', builtin.buffers, {})
