return {

  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options =
      {theme = 'expo_dark', section_separators = '', component_separators = ''}
    },
  },

  {
    "catgoose/nvim-colorizer.lua",
    opts = {},
  },

  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    keys = {
      { '<leader>tf',
        function()
          require('telescope.builtin').find_files()
        end,
        desc = "Search for files in the current working directory",
        { noremap = true, silent = true }
      },
      { '<leader>tg',
        function()
          require('telescope.builtin').live_grep()
        end,
        desc = "Search for files by their content",
        { noremap = true, silent = true }
      },
      { '<leader>tb',
        function()
          require('telescope.builtin').buffers()
        end,
        desc = "List active NeoVim buffers",
        { noremap = true, silent = true }
      },
      { '<leader>th',
        function()
          require('telescope.builtin').help_tags()
        end,
        { noremap = true, silent = true }
      },
    },
    opts = {
      defaults = {
        borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
      },
    },
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },

  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    dependencies = 'nvim-treesitter/nvim-treesitter-textobjects',
    config = function()
      vim.opt.foldmethod = 'expr'
      vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
      vim.opt.foldenable = false
    end,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    --- @module "ibl"
    --- @type ibl.config
    opts = {
      indent = { char = '▏' }
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {},
  },

  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "ts_ls",
        "lua_ls"
      },
      automatic_installation = true
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require('lsp')
    end,
  },

  {
    "onsails/lspkind-nvim",
    opts = {},
  },

  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "L3MON4D3/LuaSnip",
    },
    config = function()
      require('cmpopts')
    end,
  },

  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true,
    opts = {}
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
  },

  {
    'nvim-tree/nvim-tree.lua',
    opts = {},
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  }
}

