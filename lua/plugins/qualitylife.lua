return {
  { -- autopairs
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = {},
  },

  { -- gitsigns
    'lewis6991/gitsigns.nvim',
    event = 'BufEnter',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },

  { -- highlight todo, notes, etc in comments
    'folke/todo-comments.nvim',
    event = 'BufEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },

  -- heuristically set buffer options
  { 'tpope/vim-sleuth' },

  { 'NvChad/nvim-colorizer.lua', event = 'BufEnter', opts = {} },

  { -- whick-key
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = { preset = 'helix' },
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
    'folke/zen-mode.nvim',
    event = 'VeryLazy',
    config = function()
      require('zen-mode').setup {
        window = {
          width = 90,
          options = {
            number = true,
            relativenumber = true,
          },
        },
      }

      vim.keymap.set('n', '<leader>zz', function()
        require('zen-mode').toggle()
        vim.wo.wrap = false
      end)
    end,
  }
}
