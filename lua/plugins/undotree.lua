local Plugin = { 'mbbill/undotree', event = 'BufEnter' }

Plugin.config = function()
  vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
end

return Plugin
