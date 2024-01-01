return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ":TSUpdate",
    config = function()
        require('nvim-treesitter.configs').setup {
            ensure_installed = { "lua", "rust", "vim", "vimdoc" },
            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
            }
        }
    end
}
