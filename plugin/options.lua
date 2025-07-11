vim.opt.wildignore:append({ '*/node_modules/*', '*/.git/*', '*/.venv/*' })
-- vim.g.clipboard = 'osc52'
-- vim.o.winborder = 'rounded'
vim.g.have_nerd_font = true

local options = {
  autoindent = true,

  mouse = 'a',

  number = true,
  numberwidth = 3,
  relativenumber = true,

  cursorline = true,
  completeopt = { 'menuone', 'noinsert', 'noselect' },

  fillchars = {
    foldopen = '',
    foldclose = '',
    fold = ' ',
    foldsep = ' ',
    diff = '╱',
    msgsep = '─',
    eob = ' ',
  },

  foldlevelstart = 99,

  hlsearch = true,
  incsearch = true,
  ignorecase = true,
  wildignorecase = true,

  list = false,
  listchars = { eol = '↲', tab = '▸ ', trail = '·' },

  showbreak = '↪',

  smartcase = true,

  smartindent = true,

  wrap = true,
  linebreak = true, -- companion to wrap, don't split words

  splitbelow = true,
  splitright = true,

  tabstop = 2,
  softtabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  smarttab = true,

  termguicolors = true,

  scrolloff = 8,
  sidescrolloff = 10,
  signcolumn = 'yes',

  showmode = false,
  showmatch = true,

  swapfile = false,
  backup = false,
  writebackup = true, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  undodir = string.format('%s/undodir', vim.fn.stdpath('cache')),
  undofile = true,

  updatetime = 50,

  colorcolumn = '+1',
  laststatus = 3,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- NOTE: formatoptions default "tcqj"
-- vim.opt.formatoptions:remove({ 'r', 'o' }) -- remove auto formatting options

vim.opt.shortmess:append('c')
vim.opt.isfname:append('@-@')

vim.cmd([[filetype plugin indent on]])
