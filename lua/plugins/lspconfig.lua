return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    {
      'saghen/blink.cmp',
      dependencies = { 'rafamadriz/friendly-snippets' },
      version = '1.*',
      opts = {
        keymap = { preset = 'default' },
        appearance = {
          nerd_font_variant = 'mono'
        },
        completion = { documentation = { auto_show = false } },
        sources = {
          default = { 'lsp', 'path', 'snippets', 'buffer' },
        },
        fuzzy = { implementation = "prefer_rust_with_warning" }
      },
      opts_extend = { "sources.default" }
    }
  },

  config = function()
    local lspconfig = require("lspconfig")
    local blink_cmp_capabilities = require("blink.cmp").get_lsp_capabilities()
    local client_capabilities = vim.lsp.protocol.make_client_capabilities()
    local capabilities = vim.tbl_deep_extend("force", {}, client_capabilities, blink_cmp_capabilities)

    local on_attach = function(client, bufnr)
      -- Your keymaps and other on_attach logic here
      nnoremap('gd', vim.lsp.buf.definition, { buffer = bufnr })
      --nnoremap('K', vim.lsp.buf.hover, { buffer = bufnr })
      nnoremap('<leader>ca', vim.lsp.buf.code_action, { buffer = bufnr })
      nnoremap('<leader>rn', vim.lsp.buf.rename, { buffer = bufnr })
    end

    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "ruff",
        "clangd",
        "lua_ls",
        "rust_analyzer",
        "ts_ls"
      },
      handlers = {
        function(server_name) -- default handler (optional)
          require("lspconfig")[server_name].setup {
            capabilities = capabilities,
            on_attach = on_attach,
          }
        end,

        ["lua_ls"] = function()
          lspconfig.lua_ls.setup {
            capabilities = capabilities,
            on_attach = on_attach,
            settings = {
              Lua = {
                runtime = {
                  version = 'LuaJIT',
                },
                diagnostics = {
                  globals = { "vim", "it", "describe", "before_each", "after_each" },
                }
              }
            }
          }
        end,
      }
    })

    vim.diagnostic.config({
      -- update_in_insert = true,
      float = {
        focusable = false,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
      },
    })

    nnoremap('<leader>i', "<cmd>LspInfo<cr>")
    nnoremap('<leader>I', "<cmd>LspInstall<cr>")
  end
}
