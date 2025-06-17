return {
  'tjdevries/colorbuddy.nvim',
  dependencies = {
    { 'echasnovski/mini.base16',  version = '*' },
    { 'EdenEast/nightfox.nvim' },
    { 'sainnhe/everforest' },
    { 'rebelot/kanagawa.nvim' },
    { "rose-pine/neovim",         name = "rose-pine" },
    { "ellisonleao/gruvbox.nvim", priority = 1000,     config = true,  opts = ... },
    { "savq/melange-nvim" },
    { 'everviolet/nvim',          name = 'evergarden', priority = 1000 },
  },
  config = function()
    vim.cmd [[colorscheme terafox]]
  end,
}
