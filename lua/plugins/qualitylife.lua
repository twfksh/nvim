return {
  'tpope/vim-surround',
  { 'echasnovski/mini.pairs',       version = false, opts = {} },
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    config = function()
      vim.opt.timeout = true
      vim.opt.timeoutlen = 300
      require('which-key').setup({
        preset = 'helix',
      })
    end,
  },
  { 'echasnovski/mini.indentscope', version = false, opts = {} },
  {
    'lewis6991/gitsigns.nvim',
    event = 'BufEnter',
    config = function()
      require('gitsigns').setup()
    end,
  },
}
