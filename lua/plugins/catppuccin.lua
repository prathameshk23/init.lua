return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		-- vim.cmd([[colorscheme dracula]])
		-- color = color or "tokyonight-night"
		-- vim.cmd.colorscheme(color)
		vim.o.background = "dark" -- or "light" for light mode
		vim.cmd.colorscheme("catppuccin")
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	end,
}
