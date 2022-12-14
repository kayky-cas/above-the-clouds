vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use("wbthomason/packer.nvim")

    use("neovim/nvim-lspconfig")

    use({
        "j-hui/fidget.nvim",
        config = function()
            require("fidget").setup()
        end
    })

    use("hrsh7th/nvim-cmp")

    use({
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-vsnip",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-buffer",
        after = { "hrsh7th/nvim-cmp" },
        requires = { "hrsh7th/nvim-cmp" },
    })

    use("hrsh7th/vim-vsnip")

    use("simrat39/rust-tools.nvim")

    use("nvim-lua/popup.nvim")

    use("nvim-lua/plenary.nvim")

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use('Mofiqul/dracula.nvim')

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'sigmasd/deno-nvim'
    use({
        "aserowy/tmux.nvim",
        config = function() require("tmux").setup() end
    })

    use('kyazdani42/nvim-web-devicons')

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {
                -- TODO
            }
        end
    }

    use("christoomey/vim-tmux-navigator")

    use('norcalli/nvim-colorizer.lua')

    use 'ThePrimeagen/vim-be-good'
    use {
        'xbase-lab/xbase',
        run = 'make install', -- make free_space (not recommended, longer build time)
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim",
            "neovim/nvim-lspconfig"
        },
        config = function()
            require 'xbase'.setup({}) -- see default configuration bellow
        end
    }
end)
