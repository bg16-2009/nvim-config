return {
	-- TODO: Decide on a colorscheme (It is set from init.lua at the moment)
	{
		"navarasu/onedark.nvim",
		opts = {
			style = "darker",
		},
	},
	{ "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },
	{
		"f4z3r/gruvbox-material.nvim",
		name = "gruvbox-material",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{ "maxmx03/dracula.nvim" },
	{ "catppuccin/nvim", name = "catppuccin" },
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
			vim.keymap.set("n", "<leader>tt", "<cmd>TransparentToggle<CR>")
		end,
	},
}

-- vim: ts=2 sts=2 sw=2 noet
