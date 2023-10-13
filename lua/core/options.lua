local options = {
	-- Indentation
	tabstop = 2,
	shiftwidth = 2,
	expandtab = true,
	smarttab = true,
	smartindent = true,

	-- Search
	ignorecase = true,
	smartcase = true,
	hlsearch = false,
	incsearch = true,

	-- User Interface
	splitbelow = true,
	splitright = true,
	number = true,
	relativenumber = true,
	cursorline = false,
	title = true,
	guicursor = "",

	-- Text Rendering
	scrolloff = 8,
	wrap = false,
	linebreak = true,

	-- Backup
	swapfile = false,
	backup = false,

	-- Misc
	termguicolors = true,
	confirm = true,
	updatetime = 50,
}

for key, value in pairs(options) do
	vim.opt[key] = value
end

vim.opt.clipboard:append("unnamedplus")
