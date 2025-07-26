return {
  { 'EdenEast/nightfox.nvim',   event = 'VeryLazy' },
  { "rose-pine/neovim",         event = 'VeryLazy', name = "rose-pine" },
  { "ellisonleao/gruvbox.nvim", event = 'VeryLazy', config = true,     opts = ... },
  {
    'maxmx03/solarized.nvim',
    opts = {},
    config = function(_, opts)
      require('solarized').setup(opts)
      vim.cmd [[colorscheme solarized]]
    end,
  },
}
