return {
  {
    'mason-org/mason-lspconfig.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
      { 'mason-org/mason.nvim', opts = {} },
      'neovim/nvim-lspconfig',
      'saghen/blink.cmp',
    },
    config = function()
      local symbols = { Error = '󰅙 ', Info = '󰋼 ', Hint = '󰌵 ', Warn = ' ' }
      for name, icon in pairs(symbols) do
        local hl = 'DiagnosticSign' .. name
        vim.fn.sign_define(hl, { text = icon, numhl = hl, texthl = hl })
      end

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

      vim.keymap.set('n', '<leader>i', '<cmd>LspInfo<cr>', opts)
      vim.keymap.set('n', '<leader>I', '<cmd>LspInstall<cr>', opts)
    end,
  },
}
