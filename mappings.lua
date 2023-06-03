local M = {}

M.disabled = {
  n = {
      ["<leader>wk"] = "",
      ["<leader>rn"] = "",
  }
}

M.custom = {
  n = {
    ["<leader>w"] = {"<cmd>w<CR>", "save file", opts = { nowait = true }},
    ["<leader>q"] = {"<cmd>q<CR>", "close file", opts = { nowait = true }},
    ["<leader>Q"] = {"<cmd>q!<CR>", "force close file", opts = { nowait = true }},
    ["<C-d>"] = {"<C-d>zz", opts = { nowait = true }},
    ["<C-u>"] = {"<C-u>zz", opts = { nowait = true }},
  }
}

M.telescope = {
  plugin = true,

  n = {
    ["<leader><space>"] = { "<cmd> Telescope find_files <CR>", "find files" },
  }
}

M.rust_tools = {
  n = {
    ["<leader>a"] = { "<cmd> RustCodeAction <CR>", "rust code actions" },
  }
}

M.harpoon = {
  n = {
    ["<leader>o"] = {
      function ()
        require("harpoon.ui").toggle_quick_menu()
      end,
      "harpoon menu"
    },
    ["<leader>m"] = {
      function ()
        require("harpoon.mark").add_file()
      end,
      "mark on harpoon menu"
    },
  }
}

for i = 1, 9 do
  M.harpoon.n["<space>"..i] = {
    function ()
      require("harpoon.ui").nav_file(i)
    end,
    "go to harpoon buffer "..i
  }
end

return M