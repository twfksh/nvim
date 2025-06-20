return {
  'tjdevries/colorbuddy.nvim',
  lazy = true,
  cmd = 'Colorscheme',
  dependencies = {
    { 'EdenEast/nightfox.nvim' },
    { 'rebelot/kanagawa.nvim' },
    { 'ellisonleao/gruvbox.nvim', config = true, opts = ... },
    { 'savq/melange-nvim' },
    { 'everviolet/nvim', name = 'evergarden' },
  },
}
