local options = {
	tabstop = 2,
	shiftwidth = 2,
	expandtab = true,
	smarttab = true,
	smartindent = true,

	ignorecase = true,
	smartcase = true,
	hlsearch = false,
	incsearch = true,
	signcolumn = "yes",

	splitbelow = true,
	splitright = true,
	number = true,
	relativenumber = true,
	cursorline = false,
	title = true,
	guicursor = "",

	scrolloff = 8,
	wrap = true,
	linebreak = true,

	swapfile = false,
	backup = false,

	termguicolors = true,
	confirm = true,
	updatetime = 50,
	winborder = "rounded",
}

for key, value in pairs(options) do
	vim.opt[key] = value
end

vim.opt.clipboard:append("unnamedplus")
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1

vim.api.nvim_create_autocmd("ColorScheme", {
	callback = function()
		vim.api.nvim_set_hl(0, "LineNr", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "GitSignsAdd", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "GitSignsChange", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "GitSignsDelete", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "statusline", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "DiagnosticSignError", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "DiagnosticSignHint", { bg = "NONE" })
	end,
})
