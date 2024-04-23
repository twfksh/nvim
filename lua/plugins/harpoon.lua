local M = {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
}

M.config = function()
	local harpoon = require("harpoon")
	local nnoremap = require("toufiq7r.keymap_utils").nnoremap

	harpoon:setup()

	local conf = require("telescope.config").values
	local function toggle_telescope(harpoon_files)
		local file_paths = {}
		for _, item in ipairs(harpoon_files.items) do
			table.insert(file_paths, item.value)
		end

		require("telescope.pickers")
			.new({}, {
				prompt_title = "Harpoon",
				finder = require("telescope.finders").new_table({
					results = file_paths,
				}),
				previewer = conf.file_previewer({}),
				sorter = conf.generic_sorter({}),
			})
			:find()
	end

	nnoremap("<s-m>", function()
		harpoon:list():add()
		vim.notify("󱡅  marked file")
	end)

	nnoremap("<leader>h", function()
		toggle_telescope(harpoon:list())
	end, { desc = "Toggle [h]arpoon" })
end

return M
