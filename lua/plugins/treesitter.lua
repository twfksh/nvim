local Plugin = { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' }

Plugin.config = function()
  require('nvim-treesitter.configs').setup {
    modules = {},
    ignore_install = {},
    ensure_installed = { 'c', 'cpp', 'lua', 'rust', 'python', 'bash', 'vim', 'vimdoc' },
    sync_install = false,
    auto_install = true,
    indent = {
      enable = true,
    },
    highlight = {
      enable = true,
      disable = { 'c', 'cpp', 'rust' },
      additional_vim_regex_highlighting = false,
    },
  }
end

return Plugin
