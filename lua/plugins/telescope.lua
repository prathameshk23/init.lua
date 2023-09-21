return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = { 
    'nvim-lua/plenary.nvim',
    {'nvim-telescope/telescope-fzy-native.nvim', build = "make"},
    'nvim-telescope/telescope-live-grep-args.nvim',
    'nvim-telescope/telescope-ui-select.nvim',
    'nvim-tree/nvim-web-devicons' 
  },
  config = function()
    local builtin = require("telescope.builtin")
    local telescope = require("telescope")
    telescope.setup({
      file_ignore_patterns = { "node_modules", "./node_modules", "./node_modules/*" },
      extensions = {
        fzy_native = {
          override_generic_sorter = false,
          override_file_sorter = true,
        },
        ["ui-select"] = {
          specific_opts = {
            codeactions = false,
          },
        },
      },
    })
    telescope.load_extension("fzy_native")
    telescope.load_extension("live_grep_args")
    telescope.load_extension("ui-select")
    
    vim.keymap.set("n", "<leader>tb", builtin.buffers, {})
    vim.keymap.set("n", "<leader>to", builtin.oldfiles, {})
    vim.keymap.set("n", "<leader>tlb", function()
      builtin.git_branches({ show_remote_tracking_branches = false })
    end, {})
    vim.keymap.set("n", "<leader>gb", builtin.git_branches, {})
    vim.keymap.set("n", "<leader>prg", builtin.grep_string, {})
    vim.keymap.set("n", "<leader>pw", require("telescope").extensions.live_grep_args.live_grep_args)
    vim.keymap.set("n", "<leader>th", builtin.help_tags, {})
    vim.keymap.set("n", "<leader>tc", builtin.commands, {})

    vim.keymap.set("n", "<leader>ts", builtin.lsp_document_symbols, {})
    vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
    vim.keymap.set("n", "<C-p>", builtin.git_files, {})
  end
}
