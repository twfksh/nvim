if true then
  return {}
end

return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'rcarriga/nvim-dap-ui',
  },
  -- stylua: ignore
  config = function()
    local dap = require('dap')
    local nnoremap = require('utils.shared').nnoremap

    nnoremap('<leader>B', function() dap.set_breakpoint() end)
    nnoremap('<Leader>tb', function() dap.toggle_breakpoint() end)
    nnoremap('<F5>', function() dap.continue() end)
    nnoremap('<F10>', function() dap.step_over() end)
    nnoremap('<F11>', function() dap.step_into() end)
    nnoremap('<F12>', function() dap.step_out() end)
  end,
}
