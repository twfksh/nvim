return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
  config = function()
    require('oil').setup({
      columns = {},
      view_options = {
        show_hidden = true,
      },
    })
    require('utils.shared').nnoremap(
      '-',
      vim.cmd['Oil'],
      { desc = 'Reveal file/directory explorer' }
    )
  end,
}
