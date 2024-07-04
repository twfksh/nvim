vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true

-- plugin specification table
LAZY_PLUGIN_SPEC = {}

function Plug(item)
	table.insert(LAZY_PLUGIN_SPEC, { import = item })
end
