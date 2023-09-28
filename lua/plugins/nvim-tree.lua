return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local nvimtree = require("nvim-tree")

		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		vim.opt.termguicolors = true

		nvimtree.setup({
			sort_by = "case_sensitive",
			filters = {
				dotfiles = false,
			},
			diagnostics = {
				enable = true,
				icons = {
					hint = "",
					info = "",
					warning = "",
					error = "",
				},
			},
		})
		local function open_nvim_tree(data)
			-- buffer is a [No Name]
			local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

			-- buffer is a directory
			local directory = vim.fn.isdirectory(data.file) == 1

			if not no_name and not directory then
				return
			end

			-- change to the directory
			if directory then
				vim.cmd.cd(data.file)
			end

			-- open the tree
			require("nvim-tree.api").tree.open()
		end
		vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
		vim.keymap.set("n", "<leader>pv", "<cmd>NvimTreeFindFileToggle<CR>")
	end,
}
