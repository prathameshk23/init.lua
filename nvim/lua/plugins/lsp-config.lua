return {
	{
		"williamboman/mason.nvim",
		config = function()
			local mason = require("mason")
			mason.setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
		config = function()
			local masonlsp = require("mason-lspconfig")
			masonlsp.setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
				},
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			{ "antosha417/nvim-lsp-file-operations", config = true },
		},
		config = function()
			local lspconfig = require("lspconfig")
			local augroup = vim.api.nvim_create_augroup("lsp_format_on_save", {})
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local on_attach = function(client, bufnr)
				-- keymaps
				vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
				vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
				vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, {})
				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
			end

			-- ts server
			lspconfig.ts_ls.setup({
				on_attach = on_attach,
				capabilities = capabilities,
				init_options = {
					plugins = {
						{
							name = "@vue/typescript-plugin",
							location = "/usr/lib/node_modules/@vue/typescript-plugin",
							languages = { "javascript", "typescript", "vue" },
						},
					},
				},
				filetypes = {
					"javascript",
					"typescript",
					"typescriptreact",
					"javascriptreact",
					"vue",
				},
			})

			lspconfig.gopls.setup({
				on_attach = on_attach,
				capabilities = capabilities,
				cmd = { "gopls" },
				filetypes = { "go", "gomod", "gowork", "gotmpl" },
				root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
				settings = {
					gopls = {
						completeUnimported = true,
						usePlaceholders = true,
						analyses = {
							unusedparams = true,
							unreachable = true,
						},
					},
				},
			})

			lspconfig.rust_analyzer.setup({
				on_attach = on_attach,
				capabilities = capabilities,
			})

			lspconfig.emmet_ls.setup({
				on_attach = on_attach,
				capabilities = capabilities,
			})

			lspconfig.html.setup({
				on_attach = on_attach,
				capabilities = capabilities,
				filetypes = {
					"html",
					"javascript",
					"typescript",
					"typescriptreact",
					"javascriptreact",
					"vue",
				},
			})

			lspconfig.pyright.setup({
				on_attach = on_attach,
				capabilities = capabilities,
				cmd = { "pyright-langserver", "--stdio" },
				filetypes = { "python" },
				settings = {
					python = {
						analysis = {
							autoSearchPaths = true,
							diagnosticMode = "openFilesOnly",
							useLibraryCodeForTypes = true,
						},
					},
				},
				single_file_support = true,
			})

			-- lspconfig.vuels.setup({
			-- 	on_attach = on_attach,
			-- 	capabilities = capabilities,
			-- })

			-- vue server
			lspconfig.volar.setup({
				on_attach = on_attach,
				capabilities = capabilities,
				filetypes = { "vue" },
				init_options = {
					vue = {
						hybridMode = false,
					},
				},
			})

			-- tailwindcss server
			lspconfig.tailwindcss.setup({
				on_attach = on_attach,
				capabilities = capabilities,
			})

			lspconfig.prismals.setup({
				on_attach = on_attach,
				capabilities = capabilities,
			})

			-- astro server
			lspconfig.astro.setup({
				on_attach = on_attach,
				capabilities = capabilities,
			})

			lspconfig.clangd.setup({
				on_attach = on_attach,
				capabilities = capabilities,
			})

			-- lua lsp
			lspconfig.lua_ls.setup({
				augroup = augroup,
				on_attach = on_attach,
				capabilities = capabilities,
				settings = { -- custom settings for lua
					Lua = {
						-- make the language server recognize "vim" global
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})
		end,
	},
}
