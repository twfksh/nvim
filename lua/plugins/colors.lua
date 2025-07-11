return {
  'gruvbox-community/gruvbox',
  {
    'EdenEast/nightfox.nvim',
    config = function()
      require('nightfox').setup({ style = 'darker' })
      vim.cmd('colorscheme terafox')
    end,
  },
  'sts10/vim-pink-moon',
  'jsit/toast.vim',
  'KabbAmine/yowish.vim',
  'AhmedAbdulrahman/aylin.vim',
  { 'rose-pine/neovim', name = 'rose-pine' },
  -- Install lush for development
  {
    'rktjmp/lush.nvim',
    cmd = { 'Lush', 'LushRunQuickstart', 'LushRunTutorial' },
  },
}
