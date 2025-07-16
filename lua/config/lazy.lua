local M = {}

-- Plugin specification table
M.PLUGIN_SPEC = {}

-- Function to register plugin specification
function M.plug(spec)
  table.insert(M.PLUGIN_SPEC, { import = spec })
end

-- Lazy.nvim initialization
function M.init()
  -- Bootstrap lazy.nvim
  local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
  if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    local out = vim.fn.system({ 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
      vim.api.nvim_echo({
        { 'Failed to clone lazy.nvim:\n', 'ErrorMsg' },
        { out,                            'WarningMsg' },
        { '\nPress any key to exit...' },
      }, true, {})
      vim.fn.getchar()
      os.exit(1)
    end
  end
  vim.opt.rtp:prepend(lazypath)

  -- Make sure to setup `mapleader` and `maplocalleader` before
  -- loading lazy.nvim so that mappings are correct.
  -- This is also a good place to setup other settings (vim.opt)
  vim.g.mapleader = ' '
  vim.g.maplocalleader = '\\'

  -- Setup lazy with the collected plugin specs
  require('lazy').setup(M.PLUGIN_SPEC, {
    -- Lazy.nvim configuration options
    defaults = {
      lazy = false,
      version = false,
    },
    install = {
      missing = true,
      colorscheme = { 'habamax' },
    },
    checker = {
      enabled = true,
      notify = false,
    },
    change_detection = {
      enabled = true,
      notify = false,
    },
    ui = {
      border = 'rounded',
    },
    performance = {
      rtp = {
        disabled_plugins = {
          'gzip',
          'matchit',
          'matchparen',
          'netrwPlugin',
          'tarPlugin',
          'tohtml',
          'tutor',
          'zipPlugin',
        },
      },
    },
  })
end

-- Helper function to load plugins
function M.load(spec)
  M.plug(spec)
  M.init()
end

-- Helper function to get all loaded plugins
function M.get_plugins()
  return M.PLUGIN_SPEC
end

-- Helper function to clear plugin specs (useful for reloading)
function M.clear_plugins()
  M.PLUGIN_SPEC = {}
end

return M
