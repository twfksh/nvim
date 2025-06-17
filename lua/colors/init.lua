return {
  'tjdevries/colorbuddy.nvim',
  dependencies = {
    { 'echasnovski/mini.base16',  version = '*' },
    { 'EdenEast/nightfox.nvim' },
    { 'sainnhe/everforest' },
    { 'rebelot/kanagawa.nvim' },
    { "rose-pine/neovim",         name = "rose-pine" },
    { "ellisonleao/gruvbox.nvim", priority = 1000,   config = true, opts = ... },
    { "savq/melange-nvim" },
    {
      'everviolet/nvim',
      name = 'evergarden',
      priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
      opts = {
        theme = {
          variant = 'fall', -- 'winter'|'fall'|'spring'|'summer'
          accent = 'green',
        },
        editor = {
          transparent_background = false,
          sign = { color = 'none' },
          float = {
            color = 'mantle',
            invert_border = false,
          },
          completion = {
            color = 'surface0',
          },
        },
      }
    }
  },
  config = function()
    vim.cmd [[colorscheme melange]]
  end,
}
