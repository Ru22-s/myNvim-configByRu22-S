local vim = vim -- Explicitly declare global `vim` (fixes undefined global warning)
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
	{ "nvim-tree/nvim-web-devicons", opts = {} },
	{
		"ariedov/android-nvim",
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
	{
  		"folke/snacks.nvim",
  		priority = 1000,
 		lazy = false,
  		---@type snacks.Config
 		opts = {
    			-- your configuration comes here
    			-- or leave it empty to use the default settings
    			-- refer to the configuration section below
    			
        		input = { enabled = true },
        		notifier = { enabled = true },
  		},
	},
  	{
    		"yetone/avante.nvim",
    		event = "VeryLazy",
    		lazy = false,
    		version = false, -- set this if you want to always pull the latest change
   			opts = {
      			provider = "deepseek",
      			providers = {
        			deepseek = {
          				__inherited_from = "openai",
					api_key_name = "DEEPSEEK_API_KEY",
          				endpoint = "https://api.deepseek.com",
          				model = "deepseek-chat",
          				max_tokens = 8192,
        			},
        		},
    		},

    		build = "make",
    		dependencies = {
      			"MunifTanjim/nui.nvim",
      			{
        			-- support for image pasting
        			"HakonHarnes/img-clip.nvim",
       				event = "VeryLazy",
        			opts = {
          			-- recommended settings
          			default = {
            			embed_image_as_base64 = false,
            			prompt_for_file_name = false,
            			drag_and_drop = {
              				insert_mode = true,
            			},

          			},
        		},
      		},
		},
	},
	{
    		'MeanderingProgrammer/render-markdown.nvim',
		dependencies = {'nvim-tree/nvim-web-devicons' },
   		---@module 'render-markdown'
   		---@type table
    		opts = {},
	},
}

local opts = {}
require("lazy").setup(plugins, opts)
