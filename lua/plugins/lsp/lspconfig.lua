return {
  {
    'mason-org/mason-lspconfig.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
      {
        'mason-org/mason.nvim',
        opts = {
          ui = {
            icons = {
              package_installed = '✓',
              package_pending = '➜',
              package_uninstalled = '✗',
            },
          },
        },
      },
      'neovim/nvim-lspconfig',
      'saghen/blink.cmp',
    },
    config = function()
      local symbols = { Error = '󰅙 ', Info = '󰋼 ', Hint = '󰌵 ', Warn = ' ' }
      vim.diagnostic.config({
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = symbols.Error,
            [vim.diagnostic.severity.WARN] = symbols.Warn,
            [vim.diagnostic.severity.HINT] = symbols.Hint,
            [vim.diagnostic.severity.INFO] = symbols.Info,
          },
        },
        underline = true,
        virtual_text = true,
        update_in_insert = false,
        severity_sort = true,
      })

      require('mason-lspconfig').setup({
        ensure_installed = {
          'bashls',
          'clangd',
          'dockerls',
          -- 'gopls',
          'html',
          'jsonls',
          'marksman',
          'pyright',
          'ruff',
          'rust_analyzer',
          'yamlls',
        },
        handlers = {
          function(server_name)
            require('lspconfig')[server_name].setup({})
          end,
        },
      })

      vim.keymap.set('n', '<leader>i', '<cmd>LspInfo<cr>', { desc = 'LSP Info' })
      vim.keymap.set('n', '<leader>I', '<cmd>LspInstall<cr>', { desc = 'LSP Install' })
    end,
  },
}
