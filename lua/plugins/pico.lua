return {
	{
		"pcolladosoto/tinygo.nvim",
		config = function()
			require("tinygo").setup()
		end,
	},
	{
		"jim-at-jibba/micropython.nvim",
		dependencies = { "akinsho/toggleterm.nvim", "stevearc/dressing.nvim" },
		config = function()
			vim.keymap.set("n", "<leader>mr", require("micropython_nvim").run)
		end,
	},
}

-- vim: ts=2 sts=2 sw=2 noet
