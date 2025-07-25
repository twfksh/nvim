return {
  {
    'echasnovski/mini.files',
    version = '*',
    config = function()
      require('mini.files').setup {}
      vim.keymap.set('n', '-', function()
          MiniFiles.open()
        end,
        { desc = 'Reveal file/directory explorer' })
    end
  },
}
