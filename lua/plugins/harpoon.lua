local Plugin = {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  event = 'BufEnter',
  dependencies = { 'nvim-lua/plenary.nvim' },
}

Plugin.config = function()
  local harpoon = require 'harpoon'

  harpoon:setup()

  local conf = require('telescope.config').values
  local function toggle_telescope(harpoon_files, theme)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
      table.insert(file_paths, item.value)
    end

    local picker_opts = {
      prompt_title = 'Harpoon',
      finder = require('telescope.finders').new_table {
        results = file_paths,
      },
      previewer = conf.file_previewer {},
      sorter = conf.generic_sorter {},
    }

    if theme then
      picker_opts = vim.tbl_extend('force', picker_opts, theme)
    end

    require('telescope.pickers').new({}, picker_opts):find()
  end

  nnoremap('<C-h>', function()
    harpoon:list():select(1)
  end)
  nnoremap('<C-t>', function()
    harpoon:list():select(2)
  end)
  nnoremap('<C-n>', function()
    harpoon:list():select(3)
  end)
  nnoremap('<C-s>', function()
    harpoon:list():select(4)
  end)

  -- toggle previous & next buffers stored within Harpoon list
  nnoremap('<C-S-P>', function()
    harpoon:list():prev()
  end)
  nnoremap('<C-S-N>', function()
    harpoon:list():next()
  end)

  nnoremap('<s-m>', function()
    harpoon:list():add()
    vim.notify '󱡅  marked file'
  end)

  nnoremap('<leader>h', function()
    toggle_telescope(harpoon:list(), require('telescope.themes').get_ivy {
      layout_config = {
        height = 0.5,
      },
    })
  end, { desc = 'Toggle [h]arpoon' })
end

return Plugin
