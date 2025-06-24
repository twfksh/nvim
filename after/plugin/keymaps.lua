local nnoremap = require('utils.shared').nnoremap
local inoremap = require('utils.shared').inoremap
local vnoremap = require('utils.shared').vnoremap
local tnoremap = require('utils.shared').tnoremap
local xnoremap = require('utils.shared').xnoremap

-- fzf-lua keymaps
vim.keymap.set({ 'n', 'v', 'i' }, '<leader>ff', function()
  require('fzf-lua').files()
end, { silent = true, desc = 'Fuzzy find files' })
