
return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()

        local opts = {
            filesystem = {
                filtered_items = {
                    visible = true,
                },
            }
        }

        require("neo-tree").setup(opts)

        vim.keymap.set("n", "<leader>e", "<cmd>Neotree filesystem toggle<cr>", {})
        -- vim.cmd("Neotree")
    end
}
