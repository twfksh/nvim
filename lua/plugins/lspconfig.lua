return {
  "mason-org/mason-lspconfig.nvim",
  event = "VeryLazy",
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
    "saghen/blink.cmp",
  },
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require("blink.cmp").get_lsp_capabilities()

    require("mason-lspconfig").setup {
      ensure_installed = {
        "bashls",
        "clangd",
        "cssls",
        "eslint",
        "gopls",
        "html",
        -- "htmx",
        "intelephense",
        "jsonls",
        "emmet_language_server",
        "lua_ls",
        "marksman",
        "pylsp",
        "rust_analyzer",
        "sqlls",
        "tailwindcss",
        "texlab",
        "ts_ls",
        -- "tsserver",
        "zls",
      },
      handlers = function(server_name)
        require("lspconfig")[server_name].setup({
          capabilities = capabilities
        })
      end,
    }

    local function get_python_path()
      -- Check if there's an active virtual environment
      local venv_path = os.getenv("VIRTUAL_ENV")
      if venv_path then
        return venv_path .. "/bin/python3"
      else
        -- get os name
        local os_name = require("utils").get_os()
        -- get os interpreter path
        if os_name == "windows" then
          return "C:/python312" -- TODO: may need to modify
        elseif os_name == "linux" then
          return "/usr/bin/python3"
        elseif os_name == "mac" then
          return "/Library/Frameworks/Python.framework/Versions/3.11/bin/python3"
        end
        -- Fallback to global Python interpreter
      end
    end

    lspconfig.gopls.setup({
      capabilities = capabilities,
      settings = {
        gopls = {
          gofumpt = true,
        },
      },
    })

    lspconfig.lua_ls.setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          runtime = {
            version = 'LuaJIT',
          },
          diagnostics = {
            globals = { 'vim' },
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false,
          },
          telemetry = {
            enable = false,
          },
        },
      },
    })

    lspconfig.pylsp.setup({
      capabilties = capabilities,
      settings = {
        python = {
          pythonPath = get_python_path(),
        },
      },
    })
  end
}
