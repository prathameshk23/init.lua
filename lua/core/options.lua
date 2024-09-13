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
}

for key, value in pairs(options) do
	vim.opt[key] = value
end

vim.opt.clipboard:append("unnamedplus")
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1
