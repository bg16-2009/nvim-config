return {
	{
		"nvim-telescope/telescope.nvim",
		event = "VimEnter",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
			{ "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
				cond = function()
					return vim.fn.executable("make") == 1
				end,
			},
		},
		config = function()
			require("telescope").setup({
				pickers = {
					find_files = {
						hidden = true,
						file_ignore_patterns = { ".git/", "__pycache__" },
					},
					live_grep = {
						additional_args = function(_)
							return { "--hidden" }
						end,
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown(),
					},
				},
			})

			pcall(require("telescope").load_extension, "fzf")
			pcall(require("telescope").load_extension, "ui-select")

			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find help" })
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
			vim.keymap.set("n", "<leader>fw", builtin.live_grep, { desc = "Live grep" })
			vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Find Recent Files" })
			vim.keymap.set("n", "<leader>fi", builtin.diagnostics, { desc = "Find Diagnostics/Issues" })
			vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "Find buffers" })
			vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Find git files" })

			vim.keymap.set("n", "<leader>/", function()
				builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
					winblend = 10,
					previewer = false,
				}))
			end, { desc = "Fuzzily search in current buffer" })
		end,
	},
}

-- vim: ts=2 sts=2 sw=2 noet
