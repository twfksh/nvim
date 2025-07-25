-- keymap utils
local function bind(op, outer_opts)
  outer_opts = vim.tbl_extend('force', { noremap = true, silent = true }, outer_opts or {})

  return function(lhs, rhs, opts)
    opts = vim.tbl_extend('force', outer_opts, opts or {})
    vim.keymap.set(op, lhs, rhs, opts)
  end
end

_G.map = bind ''
_G.nmap = bind('n', { noremap = false })
_G.nnoremap = bind 'n'
_G.vnoremap = bind 'v'
_G.xnoremap = bind 'x'
_G.inoremap = bind 'i'
_G.tnoremap = bind 't'

-- git utils
_G.is_git_directory = function()
  local result = vim.fn.system 'git rev-parse --is-inside-work-tree'
  if vim.v.shell_error == 0 and result:find 'true' then
    return true
  else
    return false
  end
end

-- Define a function to delete directories using rm -rf
_G.delete_directory = function(directory)
  vim.fn.system('rm -rf ' .. vim.fn.shellescape(directory))
end
