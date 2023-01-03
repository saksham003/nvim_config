local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",

    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " " -- make sure to set `mapleader` before lazy so your mappings are correct

local isVscode = function()
  return vim.g.vscode == nil
end

require("lazy").setup({
  --theming
  {"rebelot/kanagawa.nvim",
  	cond = isVscode(),
	-- lazy = false, -- make sure we load this during startup if it is your main colorscheme
 --    priority = 1000, -- make sure to load this before all the other start plugins
   --  config = function()
	  -- require('kanagawa').setup({ transparent = true })
	  -- vim.cmd("colorscheme kanagawa")
   --  end,
  },
  {"EdenEast/nightfox.nvim",
  	cond = isVscode(),
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
	  require('nightfox').setup({
		options = {
			transparent = true,
		}
	  })
	  vim.cmd("colorscheme nightfox")
    end,
  },

  { 'nvim-lualine/lualine.nvim',
  	cond = isVscode(),
    config = function() require("plugins.lualine") end
  },
  { 'akinsho/bufferline.nvim',
  	cond = isVscode(),
  	config = function() require('plugins.bufferline') end,
  },
  {'moll/vim-bbye',
  	cond = isVscode(),
  },

  --treesitter
  { 'nvim-treesitter/nvim-treesitter',
  	cond = isVscode(),
    config = function() require('plugins.treesitter') end,
	build = function()
	  local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
	  ts_update()
	end,
  },

  --fuzzy finder
  { "nvim-telescope/telescope.nvim",
	dependencies = {
		'nvim-lua/plenary.nvim',
	},
	cond = isVscode(),
    config = function() require("plugins.telescope") end
  },

  -- git initigration
  { 'lewis6991/gitsigns.nvim',
	cond = isVscode(),
	config = function() require('gitsigns').setup() end,
  },
  {'tpope/vim-fugitive',
	cond = isVscode(),
  },

  --folating terminal
  {'voldikss/vim-floaterm',
	cond = isVscode(),
  },

  --lsp setup
  {
	'VonHeikemen/lsp-zero.nvim',
	cond = isVscode(),
    config = (function() require("plugins.lsp-zero") end),
	dependencies = {
		-- LSP Support
		{'neovim/nvim-lspconfig'},
		{'williamboman/mason.nvim'},
		{'williamboman/mason-lspconfig.nvim'},

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},
		{'hrsh7th/cmp-buffer'},
		{'hrsh7th/cmp-path'},
		{'saadparwaiz1/cmp_luasnip'},
		{'hrsh7th/cmp-nvim-lsp'},
		{'hrsh7th/cmp-nvim-lua'},

		-- Snippets
		{'L3MON4D3/LuaSnip'},
		{'rafamadriz/friendly-snippets'},
	},
  },

  --file explorer
  {
	'nvim-tree/nvim-tree.lua',
	dependencies = {
	  'nvim-tree/nvim-web-devicons', -- optional, for file icons
	},
	cond = isVscode(),
    config = function() require("plugins.nvim-tree") end
  },

  --textobjects

  --movement plugins
  {"ggandor/leap.nvim",
    config = function()
        require('leap').add_default_mappings()
    end
  },
  {
    "phaazon/hop.nvim",
    branch = "v2",
    config = function() require("plugins.hop") end
  },
  {
    "kylechui/nvim-surround",
    config = function()
       require("nvim-surround").setup()
    end
  },
  {
    'numToStr/Comment.nvim',
    cond = isVscode(),
    config = function()
        require('Comment').setup()
    end
  },
  {'chaoren/vim-wordmotion',
	lazy = false,
    priority = 1000,
  },
  {'tpope/vim-repeat'},
  {'windwp/nvim-autopairs',
	cond = isVscode(),
	config = function() require ('plugins.autopairs') end,
  },
  {'windwp/nvim-ts-autotag',
	cond = isVscode(),
	config = function()
		require('nvim-ts-autotag').setup()
	end
  },
},

-- Lazy Configuration
{
})
