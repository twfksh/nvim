return {
  {
    'echasnovski/mini.files',
    version = '*',
    config = function()
      require('mini.files').setup {
        mappings = {
          close       = 'q',
          go_in       = 'l',
          go_in_plus  = '<CR>',
          go_out      = 'h',
          go_out_plus = 'H',
          mark_goto   = "'",
          mark_set    = 'm',
          reset       = '<BS>',
          reveal_cwd  = '@',
          show_help   = 'g?',
          synchronize = '=',
          trim_left   = '<',
          trim_right  = '>',
        },

        windows = {
          width_focus = 25,
        },
      }

      vim.keymap.set('n', '-', function()
          MiniFiles.open()
        end,
        { desc = 'Reveal file/directory explorer' })
    end
  },
  --{ 'echasnovski/mini.pairs',    version = '*', opts = {} },
  { 'echasnovski/mini.surround', version = '*', opts = {} },
}
