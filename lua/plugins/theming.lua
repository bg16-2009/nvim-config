return {
	{
		"stevearc/dressing.nvim",
		opts = {},
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = {
			color_overrides = {
				mocha = {
					base = "#14161b",
					-- mantle = "#000000",
					-- crust = "#000000",
				},
			},
		},
	},
	{ "folke/tokyonight.nvim" },
}

-- vim: ts=2 sts=2 sw=2 noet
