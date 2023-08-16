local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "clangd"
      }
    }
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        file_ignore_patterns = { "node_modules", "dist", "target", ".o" },
      }
    }
  },
  {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    opts = {
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept = "<C-d>",
          dismiss = "<C-c>",
          accept_word = false,
          accept_line = false,
        },
      }
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require "custom.configs.rust-tools"
    end,
    config = function (_, opts)
      require("rust-tools").setup(opts)
    end
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = {"typescript", "html", "c", "javascript", "json"},
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require "custom.configs.null-ls"
    end,
    config = function (_, opts)
      vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
      require("null-ls").setup(opts)
    end
  },
  {
    "nvim-lua/plenary.nvim",
  },
  {
    "ThePrimeagen/harpoon",
  },
  'christoomey/vim-tmux-navigator',
  {
    'smithbm2316/centerpad.nvim',
    lazy = false,
  },
  {
    'xbase-lab/xbase',
    dependencies = {
      "neovim/nvim-lspconfig",
      "nvim-telescope/telescope.nvim", -- optional
      "nvim-lua/plenary.nvim", -- optional/requirement of telescope.nvim
    },
    opts = function ()
      return require "custom.configs.xbase-config"
    end,
    config = function (_, opts)
      require'xbase'.setup(opts)  -- see default configuration bellow
    end
  }
}

return plugins
