local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	{
    		'nvim-telescope/telescope.nvim', tag = '0.1.6',
-- or                              , branch = '0.1.x',
   		dependencies = { 'nvim-lua/plenary.nvim' }
    	},

	{
		"nvim-treesitter/nvim-treesitter",

		build = ":TSUpdate"
	},
	{
		"mbbill/undotree",

	},
	{
		"rebelot/kanagawa.nvim",
	},
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},

	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{	'L3MON4D3/LuaSnip',
		dependencies = { "rafamadriz/friendly-snippets" },
	},
	{
		"ariedov/android-nvim",
		config = function()
      			vim.g.android_sdk = "~/appsFor_.andev/android/sdk"
    			require('android-nvim').setup()
    		end
	},


	{
    		'nvim-flutter/flutter-tools.nvim',
    		lazy = false,
    		dependencies = {
        		'nvim-lua/plenary.nvim',
        		'stevearc/dressing.nvim', -- optional for vim.ui.select
    		},
	    	config = true,
	},
}

require("lazy").setup(plugins, opts)
