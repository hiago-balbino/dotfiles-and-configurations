vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })
    -- use({
        --     'ellisonleao/gruvbox.nvim',
        --     as = 'gruvbox',
        --     config = function()
            --         vim.cmd('colorscheme gruvbox')
            --     end
            -- })
            use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
            use {
                'nvim-lualine/lualine.nvim',
                requires = { 'kyazdani42/nvim-web-devicons', opt = true }
            }
            use { "fatih/vim-go" }
            use({
                "windwp/nvim-autopairs",
                config = function()
                    require("nvim-autopairs").setup {}
                end
            })
            use {
                'VonHeikemen/lsp-zero.nvim',
                branch = 'v1.x',
                requires = {
                    {'neovim/nvim-lspconfig'},             -- Required
                    {'williamboman/mason.nvim'},           -- Optional
                    {'williamboman/mason-lspconfig.nvim'}, -- Optional
                    {'hrsh7th/nvim-cmp'},         -- Required
                    {'hrsh7th/cmp-nvim-lsp'},     -- Required
                    {'hrsh7th/cmp-buffer'},       -- Optional
                    {'hrsh7th/cmp-path'},         -- Optional
                    {'saadparwaiz1/cmp_luasnip'}, -- Optional
                    {'hrsh7th/cmp-nvim-lua'},     -- Optional
                    {'L3MON4D3/LuaSnip'},             -- Required
                    {'rafamadriz/friendly-snippets'}, -- Optional
                },
                use {"akinsho/toggleterm.nvim", tag = '*' },
                use "jhlgns/naysayer88.vim",
                use "terrortylor/nvim-comment",
                use "CreaturePhil/vim-handmade-hero",
                use('theprimeagen/harpoon')
            }
        end)
