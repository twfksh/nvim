require("config.disable_builtin") -- builtin plugins I don't use
require("config.globals")

Plug("lspconfig")
-- Plug("lspconfig.optional")
Plug("plugins")
Plug("colors")

require("config.lazy")
