local nnoremap = require("kayky-cas.keymap").nnoremap

nnoremap("<leader>e", "<cmd>Ex<CR>")
nnoremap("<leader>w", "<cmd>Autoformat | w<CR>")
nnoremap("<leader>W", "<cmd>w<CR>")
nnoremap("<leader>q", "<cmd>close<CR>")
nnoremap("<leader>Q", "<cmd>q<CR>")
nnoremap("<leader>f", "<cmd>Autoformat<CR>")

nnoremap("<leader>-", "<C-w>v")
nnoremap("<leader>=", "<C-w>s")
-- nnoremap("<leader><Tab>", "<cmd>bn<CR>")
-- nnoremap("<leader>t", "<cmd>Sex!<CR>")

local tb = require('telescope.builtin')
nnoremap("<leader><Tab>", "<cmd>b#<CR>")
nnoremap("<leader> ", tb.find_files)

nnoremap("<leader><C-l>", "<cmd>vertical resize +25<CR>")
nnoremap("<leader><C-h>", "<cmd>vertical resize -25<CR>")
nnoremap("<leader><C-j>", "<cmd>resize +25<CR>")
nnoremap("<leader><C-k>", "<cmd>resize -25<CR>")
nnoremap("<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
nnoremap("<leader>i", "<cmd>lua vim.lsp.buf.implementation()<CR>")

nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")
nnoremap("y", "\"*y")


--nnoremap("∆", "<cmd>move +1<CR>")
--nnoremap("˚", "<cmd>move -2<CR>")
-- vim.keymap.set('n', '<leader><Tab>', builtin.buffers, {})
