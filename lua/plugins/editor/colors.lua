return {
  'tjdevries/colorbuddy.nvim',
  event = 'VeryLazy',
  dependencies = {
    'EdenEast/nightfox.nvim',
    'bluz71/vim-nightfly-colors',
    'rebelot/kanagawa.nvim',
    'luisiacc/gruvbox-baby',
    'savq/melange-nvim',
    { 'everviolet/nvim', name = 'evergarden' },
    {
      'rktjmp/lush.nvim',
      -- if you wish to use your own colorscheme:
      -- { dir = '/absolute/path/to/colorscheme', lazy = true },
    },
    'zenbones-theme/zenbones.nvim',
  },
}
