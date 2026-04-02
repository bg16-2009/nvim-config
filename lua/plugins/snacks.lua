return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		-- lazy.nvim
		dashboard = { enabled = true },
		bigfile = { enabled = true },
		notifier = { enabled = true },
		indent = { enabled = true },
		gitbrowse = { enabled = true },
		image = { enabled = true },
		dim = { enabled = true },

		scratch = {
			ft = function()
				if vim.bo.buftype == "" and vim.bo.filetype == "lua" then
					return vim.bo.filetype
				end
				return "norg"
			end,

			win = {
				style = "scratch",
				height = 25,
			},
		},
		quickfile = { enabled = true },
		words = { enabled = true },
	},
	keys = {
		{
			mode = { "n", "t" },
			"<M-f>",
			function()
				Snacks.terminal.toggle(nil, {
					win = {
						style = "float",
						width = 100,
						height = 20,
						border = "rounded",
					},
				})
			end,
			desc = "Toggle floating terminal",
		},
		{
			"<leader>.",
			function()
				Snacks.scratch()
			end,
			desc = "Toggle Scratch Buffer",
		},
		{
			"<leader>S",
			function()
				Snacks.scratch.select()
			end,
			desc = "Select Scratch Buffer",
		},
	},
}

-- vim: ts=2 sts=2 sw=2 noet
