return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({})
		end,
	},
	{ "chriskempson/base16-vim" },
	{
		"echasnovski/mini.base16",
		version = "*",
	},
}
