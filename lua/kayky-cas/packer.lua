vim.cmd.packadd 'packer.nvim'

return require('packer').startup(function(use)
    use('wbthomason/packer.nvim')

    use('neovim/nvim-lspconfig')

    use({
        'j-hui/fidget.nvim',
        config = function()
            require('fidget').setup()
        end
    })

    use('hrsh7th/nvim-cmp')

    use({
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-vsnip',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-buffer',
        after = { 'hrsh7th/nvim-cmp' },
        requires = { 'hrsh7th/nvim-cmp' },
    })

    use('hrsh7th/vim-vsnip')

    use('simrat39/rust-tools.nvim')

    use('nvim-lua/popup.nvim')

    use('nvim-lua/plenary.nvim')

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
        'aserowy/tmux.nvim',
        config = function() require('tmux').setup() end
    })

    use('kyazdani42/nvim-web-devicons')

    use('christoomey/vim-tmux-navigator')

    use('norcalli/nvim-colorizer.lua')

    use 'ThePrimeagen/vim-be-good'

    use {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
    }

    use 'github/copilot.vim'

    -- Lua
    use {
        'folke/todo-comments.nvim',
        requires = 'nvim-lua/plenary.nvim',
        config = function()
            require('todo-comments').setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    use 'rstacruz/vim-closer'

    use 'vim-autoformat/vim-autoformat'

    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }

    use 'navarasu/onedark.nvim' -- Theme inspired by Atom

    use { 'catppuccin/nvim', as = "catppuccin" }

    use 'folke/tokyonight.nvim'

    use 'nyoom-engineering/nyoom.nvim'

    use {
        "folke/zen-mode.nvim",
        config = function()
            require("zen-mode").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    use {
        'https://codeberg.org/esensar/nvim-dev-container',

        config = function()
            require("nvim-dev-container").setup {
            }
        end
    }

end)
