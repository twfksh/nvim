---------------------------------------------------
--       __              _____      _____        --
--      / /_____  __  __/ __(_)___ /__  /____    --
--     / __/ __ \/ / / / /_/ / __ `/ / / ___/    --
--    / /_/ /_/ / /_/ / __/ / /_/ / / / /        --
--    \__/\____/\__,_/_/ /_/\__, / /_/_/         --
--                            /_/                --
---------------------------------------------------

-- Disable builtin plugins that I dont use
require("toufiq.disable_builtin")

-- NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true

-- [[ Install `lazy.nvim` plugin manager ]] --
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- [[ Configure and install plugins ]] --
require("lazy").setup({
	{ import = "plugins" },
	{ import = "lspconfig" },
}, {
	change_detection = {
		enabled = true,
		notify = false,
	},
	ui = { border = "single" },
})
