return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	config = function()
		require('nvim-treesitter.configs').setup({
			modules = {},
			ignore_install = {},
			ensure_installed = {
				'vimdoc',
				'c',
				'cpp',
				'lua',
				'rust',
				'python',
				'bash',
			},
			sync_install = false,
			auto_install = true,
			indent = {
				enable = true,
			},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = { 'markdown' },
			},
		})
	end,
}
