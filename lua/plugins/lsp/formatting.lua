return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
      go = { 'goimports', 'gofmt' },
      python = function(bufnr)
        if require('conform').get_formatter_info('ruff_format', bufnr).available then
          return { 'ruff_format' }
        else
          return { 'isort', 'black' }
        end
      end,
      javascript = { 'prettierd', 'prettier', stop_after_first = true },

      ['*'] = { 'codespell' },
      ['_'] = { 'trim_whitespace' },
    },
    format_on_save = function(bufnr)
      if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
        return
      end
      return { lsp_fallback = true, timeout_ms = 500 } -- <- set this to false!
    end,
    log_level = vim.log.levels.ERROR,
    notify_on_error = true,
    notify_no_formatters = true,
    formatters = {
      shfmt = {
        prepend_args = { '-i', '2' },
      },
    },
  },

  init = function()
    vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"

    local nnoremap = require('utils.shared').nnoremap
    local vnoremap = require('utils.shared').vnoremap

    nnoremap('<leader>cf', function()
      require('conform').format({ async = true })
    end, { desc = 'Format buffer' })

    vnoremap('<leader>cf', function()
      require('conform').format({ async = true, range = true })
    end, { desc = 'Format selection (Conform)' })

    nnoremap('<leader>cF', function()
      require('conform').format({ async = true, lsp_fallback = true })
    end, { desc = 'Format buffer (with LSP fallback)' })

    nnoremap('<leader>ct', function()
      vim.b.disable_autoformat = not vim.b.disable_autoformat
      vim.notify('Autoformat ' .. (vim.b.disable_autoformat and 'OFF' or 'ON'))
    end, { desc = 'Toggle autoformat (buffer-local)' })
  end,
}
