return {
  {"sindrets/diffview.nvim" },
  -- Existing plugins
  --
  {
    "lervag/vimtex",
    lazy = false,     -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      vim.g.vimtex_view_method = "skim"
      vim.g['vimtex_view_method'] = "skim"
      vim.g.vimtex_view_general_viewer = "skim"
      vim.g.vimtex_compiler_method = "latexmk"
      vim.g.vimtex_compiler_latexmk_continuous = 1
      vim.g.vimtex_compiler_latexmk = {
        options = {
          "-pdf",
          "-shell-escape",
          "-verbose",
          "-file-line-error",
          "-synctex=1",
          "-interaction=nonstopmode",
        },
      }
      -- Enable compiler callback hooks
      vim.g.vimtex_compiler_progname = "nvr"
      --         -- Disable default mappings
      vim.g.vimtex_mappings_enabled = 0
      --                 -- Enable custom mappings
      vim.api.nvim_set_keymap("n", "<leader>ll", "<cmd>VimtexCompile<CR>", {noremap=true, silent=true})
      vim.api.nvim_set_keymap("n", "<leader>lv", "<cmd>VimtexView<CR>", {noremap=true, silent=true})
    end


  },
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
  },
  {
    "tpope/vim-commentary",
    lazy = false,
  },
  {
    "vim-test/vim-test",
    dependencies = {
      "preservim/vimux"
    },
    lazy = false,
    vim.api.nvim_set_keymap('n', '<leader>t', ':TestNearest<CR>', { noremap = true, silent = true }),
    vim.api.nvim_set_keymap('n', '<leader>T', ':TestFile<CR>', { noremap = true, silent = true }),
    vim.api.nvim_set_keymap('n', '<leader>a', ':TestSuite<CR>', { noremap = true, silent = true }),
    vim.api.nvim_set_keymap('n', '<leader>l', ':TestLast<CR>', { noremap = true, silent = true }),
    vim.api.nvim_set_keymap('n', '<leader>g', ':TestVisit<CR>', { noremap = true, silent = true }),
    vim.cmd('let test#strategy = "neovim"')
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
    -- event = "BufReadPre",
    -- ft = "javascript",
  },
  {
    "github/copilot.vim",
    config = function()
      vim.g.copilot_no_tab_map = true
      vim.api.nvim_set_keymap("i", "<C-Y>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
    end,
  },
  {
    'nvim-java/nvim-java',
    dependencies = {
      'nvim-java/lua-async-await',
      'nvim-java/nvim-java-refactor',
      'nvim-java/nvim-java-core',
      'nvim-java/nvim-java-test',
      'nvim-java/nvim-java-dap',
      'MunifTanjim/nui.nvim',
      'neovim/nvim-lspconfig',
      'mfussenegger/nvim-dap',
      {
        'williamboman/mason.nvim',
        opts = {
          registries = {
            'github:nvim-java/mason-registry',
            'github:mason-org/mason-registry',
          },
        },
      }
    },
  },
  {
    "epwalsh/obsidian.nvim",
    version = "*",  -- recommended, use latest release instead of latest commit
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      workspaces = {
        {
          name = "personal",
          path = "/Users/adityakhowal/Library/Mobile Documents/iCloud~md~obsidian/Documents/LifeOS/",
        },
      },
      daily_notes = {
        folder = "/0. PeriodicNotes/2024",
        template = "/Users/adityakhowal/Downloads/Templates/Daily.md"
      },
      templates = {
        folder = "/Users/adityakhowal/Library/Mobile Documents/iCloud~md~obsidian/Documents/LifeOS/0. PeriodicNotes/Templates/",
        date_format = "%Y-%m-%d",
        time_format = "%H:%M",
        substitutions = {},
      },
    },
  },
  {
    'mfussenegger/nvim-jdtls'
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server", "stylua",
        "html-lsp", "css-lsp", "prettier",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vimdoc", "javascript", "typescript", "c", "lua", "rust", "java", "vim", "vimdoc", "query", "json", "yaml", "html", "css", "cpp"
      },
      sync_install = false,
      auto_install = true,
    },
  },

  -- New plugins
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = {
      { "williamboman/mason.nvim", opts = true },
      { "williamboman/mason-lspconfig.nvim", opts = true },
    },
    opts = {
      ensure_installed = {
        "pyright", -- LSP for python
        "ruff", -- linter for python (includes flake8, pep8, etc.)
        "debugpy", -- debugger
        "black", -- formatter
        "isort", -- organize imports
        "taplo", -- LSP for toml (for pyproject.toml files)
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    keys = {
      { "gd", vim.lsp.buf.definition, desc = "Goto Definition" },
      { "gr", vim.lsp.buf.references, desc = "Goto References" },
      { "<leader>c", vim.lsp.buf.code_action, desc = "Code Action" },
    },
    init = function()
      local lspCapabilities = vim.lsp.protocol.make_client_capabilities()
      lspCapabilities.textDocument.completion.completionItem.snippetSupport = true

      require("lspconfig").pyright.setup({
        capabilities = lspCapabilities,
      })

      require("lspconfig").taplo.setup({
        capabilities = lspCapabilities,
      })

      require("lspconfig").ruff.setup({
        settings = {
          organizeImports = false,
        },
        on_attach = function(client) client.server_capabilities.hoverProvider = false end,
      })
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = "hrsh7th/cmp-nvim-lsp",
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
        }),
        mappings = cmp.mapping.preset.insert({
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            else
              fallback()
            end
          end, { "i", "s" }),
          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            else
              fallback()
            end
          end, { "i", "s" }),
        }),
      })
    end,
  },
  {
    "Vigemus/iron.nvim",
    keys = {
      { "<leader>i", vim.cmd.IronRepl, desc = "󱠤 Toggle REPL" },
      { "<leader>I", vim.cmd.IronRestart, desc = "󱠤 Restart REPL" },
      { "+", mode = { "n", "x" }, desc = "󱠤 Send-to-REPL Operator" },
      { "++", desc = "󱠤 Send Line to REPL" },
    },
    main = "iron.core",
    opts = {
      keymaps = {
        send_line = "++",
        visual_send = "+",
        send_motion = "+",
      },
      config = {
        repl_open_cmd = "horizontal bot 10 split",
        repl_definition = {
          python = {
            command = function()
              local ipythonAvailable = vim.fn.executable("ipython") == 1
              local binary = ipythonAvailable and "ipython" or "python3"
              return { binary }
            end,
          },
        },
      },
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    lazy = false,
    dependencies = "mfussenegger/nvim-dap",
    keys = {
      { "<leader>du", function() require("dapui").toggle() end, desc = "Toggle Debugger UI" },
    },
    config = function()
      local listener = require("dap").listeners
      listener.after.event_initialized["dapui_config"] = function() require("dapui").open() end
      listener.before.event_terminated["dapui_config"] = function() require("dapui").close() end
      listener.before.event_exited["dapui_config"] = function() require("dapui").close() end
      require("dapui").setup({})
    end,
  },
  -- Configuration for the python debugger
  -- - configures debugpy for us
  -- - uses the debugpy installation from mason
  {
    "mfussenegger/nvim-dap-python",
    dependencies = "mfussenegger/nvim-dap",
    lazy = false,
    config = function()
      -- uses the debugypy installation by mason
      local debugpyPythonPath = require("mason-registry").get_package("debugpy"):get_install_path()
      .. "/venv/bin/python3"
      require("dap-python").setup(debugpyPythonPath, {}) ---@diagnostic disable-line: missing-fields
    end,
  },
  { "nvim-neotest/nvim-nio" },
  -----------------------------------------------------------------------------
  -- EDITING SUPPORT PLUGINS
  -- some plugins that help with python-specific editing operations

  -- Docstring creation
  -- - quickly create docstrings via `<leader>a`
  {
    "danymat/neogen",
    opts = true,
    keys = {
      {
        "<leader>a",
        function() require("neogen").generate() end,
        desc = "Add Docstring",
      },
    },
  },

  -- f-strings
  -- - auto-convert strings to f-strings when typing `{}` in a string
  -- - also auto-converts f-strings back to regular strings when removing `{}`
  {
    "chrisgrieser/nvim-puppeteer",
    dependencies = "nvim-treesitter/nvim-treesitter",
  },
}

