return {
	"ThePrimeagen/git-worktree.nvim",
	config = function()
		require("git-worktree").setup()
		require("telescope").load_extension("git_worktree")

		function _TOGGLE_GITWORKTREE()
			require("telescope").extensions.git_worktree.git_worktrees()
		end

		function _CREATE_GITWORKTREE()
			require("telescope").extensions.git_worktree.create_git_worktree()
		end

		vim.keymap.set("n", "<leader>gw", "<cmd>lua _TOGGLE_GITWORKTREE()<CR>")
		vim.keymap.set("n", "<leader>cw", "<cmd>lua _CREATE_GITWORKTREE()<CR>")
	end,
}
