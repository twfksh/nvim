vim.opt.wildignore:append({ '*/node_modules/*' })
vim.g.clipboard = 'osc52'
-- vim.o.winborder = "rounded"
vim.g.have_nerd_font = true
vim.g.bullets_enabled_file_types = {
  'gitcommit',
  'markdown',
  'scratch',
  'text',
  'wiki',
}

local backup_dir = vim.fn.stdpath('data') .. '/backup'

-- NOTE: formatoptions default "tcqj"
local options = {
  autoindent = true, -- lines inherit the indentation of previous lines.
  autoread = true,
  autowrite = true,
  backup = true, -- creates a backup file
  backupdir = backup_dir,
  breakindent = true,
  -- clipboard = 'unnamed,unnamedplus',
  colorcolumn = '+1', -- highlights column after textwidth (80 + 1 here) to signal line length limit.
  -- cmdheight = 0, -- hides command line when not in use
  complete = { '.', 'w', 'b', 'u', 't', 'i', 'kspell' },
  completeopt = 'menu,menuone,noselect', -- mostly just for cmp
  conceallevel = 0, -- so that `` is visible in markdown files
  cursorline = true, -- highlight the current line
  directory = backup_dir,
  expandtab = true, -- convert tabs to spaces
  fillchars = {
    foldopen = '',
    foldclose = '',
    fold = ' ',
    foldsep = ' ',
    diff = '╱',
    msgsep = '─',
    eob = ' ',
  },
  foldtext = '',
  foldlevel = 99,
  foldexpr = 'v:lua.vim.treesitter.foldexpr()',
  foldmethod = 'expr',
  foldenable = true,
  hidden = true,
  hlsearch = true, -- highlight all matches on previous search pattern
  inccommand = 'split', -- update changes right away
  incsearch = true, -- incremental search that shows partial matches.
  ignorecase = true, -- ignore case in search patterns
  laststatus = 3, -- when to have a status line (options from 0-3) 2 default
  lazyredraw = false, -- Don’t update screen during macro and script execution
  -- linebreak = true, -- companion to wrap, don't split words
  list = false,
  listchars = { eol = '↲', tab = '▸ ', trail = '·' },
  mat = 2, -- How many tenths of a second to blink when matching brackets
  mouse = 'a', -- allow the mouse to be used in neovim
  nrformats = { 'alpha', 'octal', 'hex' },
  number = true,
  numberwidth = 3,
  relativenumber = true,
  scrolloff = 0,
  shiftround = true,
  shiftwidth = 2, -- the number of spaces inserted for each indentation
  shortmess = 'aToIOWAF',
  showbreak = '↪',
  showmatch = true, -- Show matching brackets when text indicator is over them
  showmode = false,
  sidescrolloff = 0,
  signcolumn = 'yes:3',
  smartcase = true, -- switch to case sensitve if we use uppercase letters smart case
  smartindent = true, -- make indenting smarter again
  smarttab = true, -- Insert “tabstop” number of spaces when the “tab” key is pressed.
  softtabstop = 2,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  tabstop = 2, -- insert 2 spaces for a tab
  termguicolors = true,
  textwidth = 80,
  timeout = true,
  timeoutlen = 270,
  ttimeout = true,
  ttimeoutlen = 5,
  updatetime = 500,
  undofile = true, -- enable persistent undo
  undodir = backup_dir .. '/undodir',
  virtualedit = { 'block' },
  wildmode = { 'list', 'longest' },
  wrap = false,
  writebackup = true, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.opt.formatoptions:remove('o')

vim.cmd([[filetype plugin indent on]])
