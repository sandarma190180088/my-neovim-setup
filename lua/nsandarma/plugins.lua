local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--single-branch",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end

vim.opt.runtimepath:prepend(lazypath)

local ok, lazy = pcall(require, "lazy")
if not ok then return end

lazy.setup({
  { "ellisonleao/gruvbox.nvim"},
  { "navarasu/onedark.nvim"},
  -- gruvbox-baby
  'luisiacc/gruvbox-baby',
  --code runner
  -- NOTE: Sandy
  {"CRAG666/code_runner.nvim"},
  {"projekt0n/github-nvim-theme", lazy = false, priority = 1000  },
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = 'v1.x',
    dependencies = {
      "neovim/nvim-lspconfig",
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "onsails/lspkind.nvim",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lua",
      "L3MON4D3/LuaSnip",
      "rafamadriz/friendly-snippets",
      "hrsh7th/cmp-nvim-lsp-signature-help",
      "hrsh7th/nvim-cmp",
      "jose-elias-alvarez/null-ls.nvim",
      "MunifTanjim/prettier.nvim"
    }
  },
  -- live server
  "manzeloth/live-server",
  {
    "glepnir/lspsaga.nvim", 
    branch = "main", 
    event = "BufRead",
  },
  --wrap 
  {
      "andrewferrier/wrapping.nvim",
      config = function()
          require("wrapping").setup()
      end
  }, 
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "kyazdani42/nvim-web-devicons"
    }
  },

  "akinsho/bufferline.nvim",
  "nvim-lua/plenary.nvim",
  "MunifTanjim/nui.nvim",
  'kazhala/close-buffers.nvim',
  { 
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",

  },

  -- "kyazdani42/nvim-tree.lua",
  {'nvim-tree/nvim-tree.lua',commit= '9c97e6449b0b0269bd44e1fd4857184dfa57bb4c'},
  
  { "lukas-reineke/indent-blankline.nvim", event = "BufEnter" },

  {"nvim-treesitter/nvim-treesitter"},
  "windwp/nvim-ts-autotag",
  {"akinsho/toggleterm.nvim"},

  { "windwp/nvim-autopairs", config = true, event = "InsertEnter" },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    }
  },

  -- Which Key
  "folke/which-key.nvim",


  "nvim-telescope/telescope-ui-select.nvim",

  { "numToStr/Comment.nvim", config = true, event = "BufEnter" },
  { "folke/tokyonight.nvim"},
  { "phaazon/hop.nvim", branch = "v2", config = true, event = "BufEnter" },
  { "lewis6991/gitsigns.nvim", config = true, event = "BufEnter" },
  { "iamcco/markdown-preview.nvim", ft = "markdown" },


  'karb94/neoscroll.nvim',

  "goolord/alpha-nvim",
  "David-Kunz/markid",
  "nvim-treesitter/nvim-treesitter-textobjects",
  {
    "kylechui/nvim-surround",
    config = true
  },
  {'iamcco/markdown-preview.nvim'},
})
