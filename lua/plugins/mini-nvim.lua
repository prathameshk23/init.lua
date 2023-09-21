return {
	"echasnovski/mini.indentscope",
	version = "*",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local indentscope = require("mini.indentscope")
		indentscope.setup({
			symbol = "│",
			options = { try_as_border = true },
			init = function()
				vim.api.nvim_create_autocmd("FileType", {
					callback = function()
						vim.b.miniindentscope_disable = true
					end,
				})
			end,
		})
	end,
}
