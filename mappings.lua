local M = {}

M.disabled = {
  n = {
      ["<leader>wk"] = "",
      ["<leader>rn"] = "",
      ["<leader>v"] = "",
      ["<leader>h"] = "",
      ["<leader>n"] = "",
      ["<leader>wa"] = "",
      ["<leader>wK"] = "",
      ["<leader>wl"] = "",
      ["<leader>wr"] = "",
      ["<C-n>"] = "",
      ["<C-p>"] = "",
  }
}

M.custom = {
  n = {
    ["<leader>w"] = {"<cmd>w<CR>", "save file", opts = { nowait = true }},
    ["<leader>q"] = {"<cmd>q<CR>", "close file", opts = { nowait = true }},
    ["<leader>Q"] = {"<cmd>q!<CR>", "force close file", opts = { nowait = true }},
    ["<C-d>"] = {"<C-d>zz", opts = { nowait = true }},
    ["<C-u>"] = {"<C-u>zz", opts = { nowait = true }},
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
  }
}

M.telescope = {
  plugin = true,

  n = {
    ["<leader><space>"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "Find all" },
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
