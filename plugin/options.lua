vim.opt.wildignore:append({ '*/node_modules/*' })
vim.g.clipboard = 'osc52'
-- vim.o.winborder = "rounded"
vim.g.have_nerd_font = true

local backup_dir = vim.fn.stdpath('data') .. '/backup'

local options = {
  autoindent = true,

  guicursor = '',
  mouse = 'a', -- allow the mouse to be used in neovim

  number = true,
  numberwidth = 3,
  relativenumber = true,

  -- clipboard = 'unnamed,unnamedplus',

  conceallevel = 0, -- so that `` is visible in markdown files

  cursorline = true, -- highlight the current line

  fillchars = {
    foldopen = '',
    foldclose = '',
    fold = ' ',
    foldsep = ' ',
    diff = '╱',
    msgsep = '─',
    eob = ' ',
  },

  hlsearch = true, -- highlight all matches on previous search pattern
  incsearch = true, -- incremental search that shows partial matches.
  ignorecase = true, -- ignore case in search patterns

  list = false,
  listchars = { eol = '↲', tab = '▸ ', trail = '·' },

  showbreak = '↪',

  smartcase = true, -- switch to case sensitive if we use uppercase letters smart case

  smartindent = true,

  wrap = false,
  -- linebreak = true, -- companion to wrap, don't split words

  splitbelow = true,
  splitright = true,

  tabstop = 2, -- insert 2 spaces for a tab
  softtabstop = 2,
  shiftwidth = 2, -- the number of spaces inserted for each indentation
  expandtab = true, -- convert tabs to spaces
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
  signcolumn = 'yes:3',

  updatetime = 50,

  colorcolumn = '+1', -- highlights column after textwidth (80 + 1 here) to signal line length limit.
  laststatus = 3, -- when to have a status line (options from 0-3) 2 default
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- NOTE: formatoptions default "tcqj"
-- vim.opt.formatoptions:remove({ 'r', 'o' }) -- remove auto formatting options

vim.opt.isfname:append('@-@')

vim.cmd([[filetype plugin indent on]])
