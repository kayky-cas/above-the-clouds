local nnoremap = require("kayky-cas.keymap").nnoremap

nnoremap("<leader>e", "<cmd>Ex<CR>")
nnoremap("<leader>w", "<cmd>w<CR>")
nnoremap("<leader>s", "<cmd>bdelete<CR>")
nnoremap("<leader>q", "<cmd>q<CR>")
-- nnoremap("<leader><Tab>", "<cmd>bn<CR>")
nnoremap("<leader>t", "<cmd>Sex!<CR>")

local tb = require('telescope.builtin')

vim.keymap.set('n', '<leader> ', tb.find_files, {})
-- vim.keymap.set('n', '<leader><Tab>', builtin.buffers, {})
