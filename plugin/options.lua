vim.opt.wildignore:append({ '*/node_modules/*', '*/.git/*', '*/.venv/*' })
-- vim.g.clipboard = 'osc52'
-- vim.o.winborder = 'rounded'
vim.g.have_nerd_font = true

local backup_dir = vim.fn.stdpath('data') .. '/backup'

local options = {
  autoindent = true,

  guicursor = '',
  mouse = 'a',

  number = true,
  numberwidth = 3,
  relativenumber = true,

  cursorline = true,

  fillchars = {
    foldopen = '',
    foldclose = '',
    fold = ' ',
    foldsep = ' ',
    diff = '╱',
    msgsep = '─',
    eob = ' ',
  },

  hlsearch = true,
  incsearch = true,
  ignorecase = true,

  list = false,
  listchars = { eol = '↲', tab = '▸ ', trail = '·' },

  showbreak = '↪',

  smartcase = true,

  smartindent = true,

  wrap = false,
  -- linebreak = true, -- companion to wrap, don't split words

  splitbelow = true,
  splitright = true,

  tabstop = 2,
  softtabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  smarttab = true,

  swapfile = false,
  backupdir = backup_dir,
  backup = false,
  writebackup = true, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  undodir = backup_dir .. '/undodir',
  undofile = true,

  termguicolors = true,

  scrolloff = 8,
  sidescrolloff = 10,
  signcolumn = 'yes',

  updatetime = 50,

  colorcolumn = '+1',
  laststatus = 3,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- NOTE: formatoptions default "tcqj"
-- vim.opt.formatoptions:remove({ 'r', 'o' }) -- remove auto formatting options

vim.opt.isfname:append('@-@')

vim.cmd([[filetype plugin indent on]])
