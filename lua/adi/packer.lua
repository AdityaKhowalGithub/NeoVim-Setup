-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
end}

  -- use {
  -- 'rmagatti/auto-session',
  -- config = function()
    -- require("auto-session").setup {
      -- log_level = "error",
      -- auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
    -- }
  -- end
-- }

use {
    'rmagatti/auto-session',
    config = function()
      local auto_session = require("auto-session")
      auto_session.setup({
        auto_restore_enabled = false, -- This disables automatic session restoration
        auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" }, -- Suppressed directories
        log_level = "error", -- Log level configuration
      })

      local keymap = vim.keymap
      keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
      keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory
    end
  }
  -- use 'navarasu/onedark.nvim'

  -- use 'nvim-tree/nvim-web-devicons'
  use 'ThePrimeagen/vim-be-good'

  use 'junegunn/goyo.vim'

  use 'junegunn/limelight.vim'

use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup {}
    end
}

  use({
      -- "tiagovla/tokyodark.nvim",
      "catppuccin/nvim",
	  -- 'navarasu/onedark.nvim',
	  -- 'rose-pine/neovim',
	  config = function()
		  vim.cmd('colorscheme catppuccin')
	  end
  })

use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
}

-- use {
    -- 'goolord/alpha-nvim',
    -- requires = {
        -- 'nvim-tree/nvim-web-devicons',
        -- 'nvim-lua/plenary.nvim'
    -- },
    -- config = function ()
        -- require'alpha'.setup(require'alpha.themes.dashboard'.config)
        -- dashboard.section.buttons.val = {
      -- dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
      -- dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      -- dashboard.button("SPC ff", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
      -- dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
      -- dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
      -- dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
  -- }
    -- end
-- }
--
use {
    'goolord/alpha-nvim',
    requires = {
        'nvim-tree/nvim-web-devicons',
        'nvim-lua/plenary.nvim'
    },
    config = function ()
        -- Initialize the dashboard
        local alpha = require'alpha'
        local dashboard = require'alpha.themes.dashboard'

        -- Customize the buttons
        dashboard.section.buttons.val = {
            dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
            dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
            dashboard.button("SPC ff", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
            dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
            dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
            dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
        }

        -- Apply the custom dashboard configuration
        alpha.setup(dashboard.config)
    end
}



use 'lervag/vimtex'
-- use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
-- use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
-- use 'romgrk/barbar.nvim'
-- using packer.nvim
use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}


-- Lua
use {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('tpope/vim-commentary')
  use('theprimeagen/harpoon')
  use('github/copilot.vim')

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
          -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},     -- Required
		  {'hrsh7th/cmp-nvim-lsp'}, -- Required
		  {'L3MON4D3/LuaSnip'},     -- Required
	  }
  }

  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }


end)
