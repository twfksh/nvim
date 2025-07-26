return {
  'mbbill/undotree',
  event = 'BufEnter',
  config = function(name, opts)
    vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Toggle undotree' })
  end
}
