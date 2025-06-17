return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
  config = function()
    require("oil").setup {
      columns = {},
      view_options = {
        show_hidden = true,
      },
    }
  end
}
