return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  "nvim-lua/plenary.nvim",
  "nvim-tree/nvim-web-devicons",
  {
    'goolord/alpha-nvim',
    config = function ()
        require "configs.alpha"
    end
  };
  "christoomey/vim-tmux-navigator",

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  -- {
  --   "zbirenbaum/copilot.lua",
  --   cmd = "Copilot",
  --   event = "InsertEnter",
  --   config = function()
  --     require("copilot").setup({})
  --   end,
  -- },

  {
        "github/copilot.vim",
  },

  {
  "epwalsh/obsidian.nvim",
  version = "*",  -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "/Users/adityakhowal/Library/Mobile Documents/iCloud~md~obsidian/Documents/LifeOS/",
      },
    
    },
    daily_notes = {
    -- Optional, if you keep daily notes in a separate directory.
    folder = "/0. PeriodicNotes/2024",

    -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
    template = "/Users/adityakhowal/Downloads/Templates/Daily.md"
    },

        -- Optional, for templates (see below).
  templates = {
    folder = "/Users/adityakhowal/Library/Mobile Documents/iCloud~md~obsidian/Documents/LifeOS/0. PeriodicNotes/Templates/",
    date_format = "%Y-%m-%d",
    time_format = "%H:%M",
    -- A map for custom variables, the key should be the variable and the value a function
    substitutions = {},
  },

    -- see below for full list of options 👇
  },
},

  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server", "stylua",
  			"html-lsp", "css-lsp" , "prettier"
  		},
  	},
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css"
  		},
  	},
  },
}
