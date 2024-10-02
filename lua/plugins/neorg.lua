return {
	"nvim-neorg/neorg",
	event = { "VimEnter" },
	dependencies = {
		"vhyrro/luarocks.nvim",
		priority = 1000,
		config = true,
	},
	config = function()
		require("neorg").setup({
			load = {
				["core.defaults"] = {},
				["core.export"] = {},
				["core.concealer"] = {},
				["core.dirman"] = {
					config = {
						workspaces = {
							neorg = "~/neorg",
						},
						default_workspace = "neorg",
					},
				},
			},
		})

		vim.wo.foldlevel = 99
		vim.wo.conceallevel = 2
	end,
}

-- vim: ts=2 sts=2 sw=2 noet
