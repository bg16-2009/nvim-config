return {
	{
		"jackMort/ChatGPT.nvim",
		enabled = false,
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"folke/trouble.nvim",
			"nvim-telescope/telescope.nvim",
		},
		config = function()
			require("chatgpt").setup({
				api_key_cmd = "pass openai_api",
			})
		end,
	},
	{
		"David-Kunz/gen.nvim",
		enabled = false,
		opts = {
			model = "codellama",
			host = "localhost",
			port = "11434",
			quit_map = "q",
			retry_map = "<c-r>",
			init = function(options)
				pcall(io.popen, "ollama serve > /dev/null 2>&1 &")
			end,
			command = function(options)
				local body = { model = options.model, stream = true }
				return "curl --silent --no-buffer -X POST http://"
					.. options.host
					.. ":"
					.. options.port
					.. "/api/chat -d $body"
			end,
			display_mode = "float",
			show_prompt = false,
			show_model = false,
			no_auto_close = false,
			debug = false,
		},
	},
}

-- vim: ts=2 sts=2 sw=2 noet
