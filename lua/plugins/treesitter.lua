return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	config = function()
		local treesitter = require("nvim-treesitter.configs")
		treesitter.setup({
			ensure_installed = { "c", "lua", "rust", "python", "javascript" },
			rainbow = {
				enable = true,
				extended_mode = true,
				max_file_lines = nil,
			},
			indent = { enable = true },
			autotag = { enable = true },
			sync_install = true,
			auto_install = true,
			highlight = { enable = true },
		})
	end,
}
