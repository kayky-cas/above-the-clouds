-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = "neovim/nvim-lspconfig",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  "ThePrimeagen/harpoon",
  'christoomey/vim-tmux-navigator'
}
