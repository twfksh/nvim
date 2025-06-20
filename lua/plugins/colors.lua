return {
  'tjdevries/colorbuddy.nvim',
  dependencies = {
    { 'EdenEast/nightfox.nvim' },
    { 'rebelot/kanagawa.nvim' },
    { 'ellisonleao/gruvbox.nvim', config = true, opts = ... },
    { 'savq/melange-nvim' },
    { 'everviolet/nvim', name = 'evergarden' },
  },
  config = function()
    vim.cmd([[colorscheme terafox]])
  end,
}
