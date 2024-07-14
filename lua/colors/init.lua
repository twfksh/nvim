return {
  'tjdevries/colorbuddy.nvim',
  dependencies = {
    { 'echasnovski/mini.base16', version = '*' },
    { 'EdenEast/nightfox.nvim' },
    { 'sainnhe/everforest' },
    { 'rebelot/kanagawa.nvim' },
  },
  config = function()
    vim.cmd [[colorscheme terafox]]
  end,
}
