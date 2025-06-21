return {
  'echasnovski/mini.surround',
  version = '*',
  event = { 'BufReadPre', 'BufReadPost' },
  config = function()
    require('mini.surround').setup()
  end,
}
