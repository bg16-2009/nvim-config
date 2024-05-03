return {
	-- TODO: Decide on a colorscheme (It is set from init.lua at the moment)
	{
		"navarasu/onedark.nvim",
		opts = {
			style = "darker",
		},
	},
	{ "rose-pine/neovim", name = "rose-pine" },
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
