---------------------------------------------------
--       __              _____      _____        --
--      / /_____  __  __/ __(_)___ /__  /____    --
--     / __/ __ \/ / / / /_/ / __ `/ / / ___/    --
--    / /_/ /_/ / /_/ / __/ / /_/ / / / /        --
--    \__/\____/\__,_/_/ /_/\__, / /_/_/         --
--                            /_/                --
---------------------------------------------------

-- disable builtin plugins I dont use
require("config.disable_builtin")

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
include_spec("colorscheme")

require("config.lazy").init()
require("config.lazy").setup(LAZY_PLUGIN_SPEC)
