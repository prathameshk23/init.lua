return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"NvChad/nvim-colorizer.lua",
		event = { "BufReadPre", "BufNewFile" },
		opts = {
			user_default_options = {
				tailwind = true,
			},
		},
	},
	{
		"RRethy/vim-illuminate",
		event = { "BufReadPre", "BufNewFile" },
	},
}
