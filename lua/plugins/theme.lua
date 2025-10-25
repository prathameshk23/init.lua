-- kanagawa
return {
	"rebelot/kanagawa.nvim",
	-- "folke/tokyonight.nvim",
	-- "catppuccin/nvim",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("kanagawa-dragon")
	end,
}

-- catppuccin

-- return {
-- 	"catppuccin/nvim",
-- 	name = "catppuccin",
-- 	priority = 1000,
-- 	config = function()
-- 		vim.cmd.colorscheme("catppuccin-mocha")
-- 	end,
-- }

-- tokyonight

-- return {
-- 	"folke/tokyonight.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {},
-- 	config = function()
-- 		vim.cmd.colorscheme("tokyonight")
-- 	end,
-- }
