return {
	{
		"stevearc/dressing.nvim",
		opts = {},
	},
	{
		"f4z3r/gruvbox-material.nvim",
		name = "gruvbox-material",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{ "folke/tokyonight.nvim" },
	{
		"xiyaowong/transparent.nvim",
		config = function()
			require("transparent").setup({
				extra_groups = {
					"NormalFloat",
					"NvimTreeNormal",
				},
			})
			vim.keymap.set("n", "<leader>me", "<cmd>TransparentToggle<CR>")
		end,
	},
}

-- vim: ts=2 sts=2 sw=2 noet
