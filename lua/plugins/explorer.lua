return {
  'mikavilpas/yazi.nvim',
  event = 'VeryLazy',
  -- stylua: ignore
  keys = {
    { '-', mode = { 'n', 'v' }, '<cmd>Yazi<cr>', desc = 'Open yazi at the current file' },
    { '_', '<cmd>Yazi cwd<cr>', desc = "Open the file manager in nvim's working directory" },
    { '<c-up>', '<cmd>Yazi toggle<cr>', desc = 'Resume the last yazi session' },
  },
  opts = {
    open_for_directories = true,
  },
  init = function()
    -- More details: https://github.com/mikavilpas/yazi.nvim/issues/802
    -- vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
  end,
}
