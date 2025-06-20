if vim.loader then
  vim.loader.enable()
end

require('config.bootstrap') -- bootstrap lazy.nvim

require('config.options')
require('config.autocmds')
require('config.keymaps')
