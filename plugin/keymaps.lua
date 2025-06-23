local nnoremap = require('utils.shared').nnoremap
local xnoremap = require('utils.shared').xnoremap
local inoremap = require('utils.shared').inoremap
local vnoremap = require('utils.shared').vnoremap

-- general keymaps
nnoremap('<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear search hl on pressing <Esc> in normal mode' })
nnoremap(';', ':', { desc = 'Enter command mode' })
inoremap('jk', '<Esc>', { desc = 'Close insert mode' })

-- disable 's' in normal and visual modes
-- nnoremap('s', '<Nop>')
-- xnoremap('s', '<Nop>')

-- move stuff up and down in visual mode
vnoremap('J', ":m '>+1<CR>gv=gv")
vnoremap('K', ":m '<-2<CR>gv=gv")

-- for moving across large files
nnoremap('<C-d>', '<C-d>zz')
nnoremap('<C-u>', '<C-u>zz')

-- some fun register stuff
-- vnoremap('<leader>y', '"+y')
-- vnoremap('<leader>Y', '"+y$')
-- vnoremap('<leader>d', '"_d')
-- vnoremap('<leader>x', '"_x')
-- vnoremap('<leader>p', '"_dP')
