return {
	-- TODO: Add these plugins
	-- firenvim
	-- FTerm.nvim
	-- Vim-Be-Good

	"baskerville/vim-sxhkdrc",
	"elkowar/yuck.vim",
	"makerj/vim-pdf",

	{
		"ggandor/leap.nvim",
		config = function()
			vim.keymap.set({ "n", "x", "o" }, "s", "<Plug>(leap-forward)")
			vim.keymap.set({ "n", "x", "o" }, "S", "<Plug>(leap-backward)")
			vim.keymap.set({ "n", "x", "o" }, "gs", "<Plug>(leap-from-window)")
		end,
	},
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
	{
		"mbbill/undotree",
		config = function()
			vim.keymap.set("n", "<leader>ut", "<Cmd>UndotreeToggle<CR>", { desc = "Toggle undo tree" })
		end,
	},
	{
		"michaelrommel/nvim-silicon",
		lazy = true,
		cmd = "Silicon",
		opts = {
			font = "JetBrainsMono Nerd Font=34",
			language = function()
				if vim.bo.filetype == "" then
					return "markdown"
				else
					return vim.bo.filetype
				end
			end,
			output = function()
				return "/tmp/silicon.png"
			end,
		},
	},
	{
		"stevearc/conform.nvim",
		config = function()
			local conform = require("conform")
			conform.setup({
				notify_on_error = false,
				formatters_by_ft = {
					lua = { "stylua" },
					go = { "gofmt" },
					cpp = { "clang_format" },
					sh = { "shfmt" },
					rust = { "rustfmt" },
					python = { "black" },
					typescript = { "eslint_d" },
				},
			})
			require("conform").formatters.shfmt = {
				prepend_args = function(self, ctx)
					return { "-i", "4" }
				end,
			}
			require("conform").formatters.clang_format = {
				prepend_args = function(self, ctx)
					return {
						"--style=file:"
							.. (os.getenv("XDG_CONFIG_HOME") or os.getenv("HOME") .. "/.config")
							.. "/clang-format",
					}
				end,
			}
			vim.keymap.set("n", "<leader>cf", conform.format)
		end,
	},
}

-- vim: ts=2 sts=2 sw=2 noet
