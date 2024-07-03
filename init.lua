---------------------------------------------------
--       __              _____      _____        --
--      / /_____  __  __/ __(_)___ /__  /____    --
--     / __/ __ \/ / / / /_/ / __ `/ / / ___/    --
--    / /_/ /_/ / /_/ / __/ / /_/ / / / /        --
--    \__/\____/\__,_/_/ /_/\__, / /_/_/         --
--                            /_/                --
---------------------------------------------------

require("config.disable_builtin") -- builtin plugins I don't use
require("config.globals")

Plug("lspconfig")
-- Plug("lspconfig.optional")
Plug("plugins")
Plug("colors")

require("config.lazy").init()
