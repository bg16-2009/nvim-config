return {
	"nvim-flutter/flutter-tools.nvim",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"stevearc/dressing.nvim", -- optional for vim.ui.select
	},
	config = true,
	keys = {
		{
			mode = { "n" },
			"<leader>fc",
			"<cmd>Telescope flutter commands<cr>",
			desc = "Telescope commands",
		},
		{
			mode = { "n" },
			"<leader>fl",
			"<cmd>FlutterRun<cr>",
			desc = "Run flutter project",
		},
	},
}
