return {
	{
		"williamboman/mason.nvim",
		config = function()
			local mason = require("mason")
			mason.setup()
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- keymaps
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, {})
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})

			vim.diagnostic.config({
				virtual_text = true,
				signs = true,
				update_in_insert = false,
				float = {
					focusable = false,
					style = "minimal",
					border = "rounded",
					source = "always",
					header = "",
					prefix = "",
				},
			})

			vim.lsp.enable({
				"lua_ls",
				"ts_ls",
				"gopls",
				"rust_analyzer",
				"emmet_ls",
				"html",
				"pyright",
				"vue_ls",
				"tailwindcss",
				"clangd",
			})
		end,
	},
}
