return {
  'saghen/blink.cmp',
  event = 'InsertEnter',
  dependencies = { 'rafamadriz/friendly-snippets' },
  version = '1.*',
  opts = {
    keymap = { preset = 'default' },
    appearance = {
      nerd_font_variant = 'mono',
    },
    completion = { documentation = { auto_show = false } },
  },
  opts_extend = { 'sources.default' },
}
