return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'williamboman/mason.nvim'   
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig' 
	
    -- Hrsh7th Code Completion Suite
	use 'hrsh7th/nvim-cmp' 
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'hrsh7th/cmp-vsnip'                             
	use 'hrsh7th/cmp-path'                             
	use 'hrsh7th/cmp-buffer'                            
	use 'hrsh7th/vim-vsnip'
  use 'lervag/vimtex'
  use 'SirVer/ultisnips'

    -- File explorer tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
    }

    -- DAP for debugging
    use 'mfussenegger/nvim-dap'
    -- UI for DAP
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }

    -- Dracula theme for styling
    use 'Mofiqul/dracula.nvim'
    -- Treesitter
    use {
        -- recommended packer way of installing it is to run this function, copied from documentation
        'nvim-treesitter/nvim-treesitter',
        run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
        end,
    }

    -- Telescope used to fuzzy search files
    use {
       'nvim-telescope/telescope.nvim', tag = '0.1.0',
       requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Lualine information / Status bar
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Treesitter autotag
    use 'windwp/nvim-ts-autotag'

    -- Commenting
    use 'terrortylor/nvim-comment'

    -- TagBar for viewing structure of classes and functions
    use 'majutsushi/tagbar'
 
    use { 'Yggdroot/indentLine' }                       -- see indentation
    use { 'tpope/vim-fugitive' }                        -- git integration
    use { 'junegunn/gv.vim' }                           -- git commit history
    use { 'windwp/nvim-autopairs' }                     -- auto close brackets, etc.

    -- keylogger
    use { 'tamton-aquib/keys.nvim' }

    use {"folke/trouble.nvim",
        requires = { "nvim-tree/nvim-web-devicons" },
    }
end)
