local M = {}

M.disabled = {
  n = {
      ["<leader>wk"] = "",
  }
}

M.custom = {
  n = {
    ["<leader>w"] = {"<cmd>w<CR>", opts = { nowait = true }},
    ["<leader>q"] = {"<cmd>q<CR>", opts = { nowait = true }},
    ["<leader>Q"] = {"<cmd>q!<CR>", opts = { nowait = true }},
  }
}

M.telescope = {
  plugin = true,

  n = {
    ["<leader><space>"] = { "<cmd> Telescope find_files <CR>", "find files" },
  }
}

return M
