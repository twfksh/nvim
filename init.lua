---------------------------------------------------
--       __              _____      _____        --
--      / /_____  __  __/ __(_)___ /__  /____    --
--     / __/ __ \/ / / / /_/ / __ `/ / / ___/    --
--    / /_/ /_/ / /_/ / __/ / /_/ / / / /        --
--    \__/\____/\__,_/_/ /_/\__, / /_/_/         --
--                            /_/                --
---------------------------------------------------

-- builtin plugins I dont use
require "toufiq7r.disable_builtin"

-- must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true

-- plugins specification table
local LAZY_PLUGIN_SPEC = {}

local function include_spec(item)
  table.insert(LAZY_PLUGIN_SPEC, { import = item })
end

-- include plugins
include_spec("lspconfig")
-- include_spec("lspconfig.optional")
include_spec("plugins")
-- include_spec("plugins.optional")

-- Install and configure `lazy.nvim` plugin manager
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  }

end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup {
  spec = LAZY_PLUGIN_SPEC,
  ui = { border = "single" },
  change_detection = {
    enabled = true,
    notify = false,
  },
}
