return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPost", "BufNewFile" },
	cmd = { "LspInfo", "LspInstall", "LspUninstall" },
	dependencies = {
		{ "j-hui/fidget.nvim", opts = {} },
		{ "folke/neodev.nvim", opts = {} },
		{
			"WhoIsSethDaniel/mason-tool-installer.nvim",
			opts = {
				ensure_installed = {
					-- Formatter
					"black",
					"stylua",
					"clang-format",

					-- LSP
					"python-lsp-server",
					"rust-analyzer",
					"lua_ls",
					"gopls",
					"clangd",
					"bashls",
				},
				start_delay = 3000,
			},
		},
		-- TODO: Configure trouble
		{
			"folke/trouble.nvim",
			dependencies = { "nvim-tree/nvim-web-devicons" },
			opts = {},
		},
		{ "williamboman/mason.nvim", opts = {} },
		{
			"williamboman/mason-lspconfig.nvim",
			opts = {
				handlers = {
					function(server_name)
						require("lspconfig")[server_name].setup({
							capabilities = require("cmp_nvim_lsp").default_capabilities(),
						})
					end,
					clangd = function()
						require("lspconfig").clangd.setup({
							capabilities = require("cmp_nvim_lsp").default_capabilities(),
							cmd = {
								"clangd",
								"--fallback-style=webkit",
							},
						})
					end,
					pylsp = function()
						require("lspconfig").pylsp.setup({
							capabilities = require("cmp_nvim_lsp").default_capabilities(),
							settings = {
								configurationSources = { "flake8" },
								pylsp = {
									plugins = {
										pycodestyle = {
											enabled = true,
											ignore = { "E203", "E701" },
											maxLineLength = 88,
										},
									},
								},
							},
						})
					end,
				},
			},
		},
	},
	config = function()
		vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
		vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
		vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
		vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)
		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(event)
				local builtin = require("telescope.builtin")
				local opts = { buffer = event.buf }

				vim.keymap.set("n", "gd", builtin.lsp_definitions, opts)
				vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
				vim.keymap.set("n", "gI", builtin.lsp_implementations, opts)
				vim.keymap.set("n", "gr", builtin.lsp_references, opts)
				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
				vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
			end,
		})
	end,
}

-- vim: ts=2 sts=2 sw=2 noet
