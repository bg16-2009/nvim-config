return {
	{
		"stevearc/oil.nvim",
		dependencies = {
			"refractalize/oil-git-status.nvim",
		},
		config = function()
			require("oil").setup({
				default_file_explorer = false,
				delete_to_trash = true,
				skip_confirm_for_simple_edits = true,
				win_options = {
					signcolumn = "yes:2",
				},
			})
			require("oil-git-status").setup()
			vim.keymap.set("n", "<leader>oo", "<Cmd>Oil --float<CR>")
		end,
	},
}

-- vim: ts=2 sts=2 sw=2 noet
