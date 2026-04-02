return {
	{
		"xeluxee/competitest.nvim",
		dependencies = "MunifTanjim/nui.nvim",
		config = function()
			require("competitest").setup({
				runner_ui = {
					interface = "popup",
				},
				split_ui = {
					position = "right",
					relative_to_editor = true,
					total_width = 0.4,
					vertical_layout = {
						{ 1, "tc" },
						{ 1, { { 1, "so" }, { 1, "eo" } } },
						{ 1, { { 1, "si" }, { 1, "se" } } },
					},
					total_height = 0.4,
					horizontal_layout = {
						{ 2, "tc" },
						{ 3, { { 1, "so" }, { 1, "si" } } },
						{ 3, { { 1, "eo" }, { 1, "se" } } },
					},
				},
				received_contests_prompt_directory = false,
				received_contests_prompt_extension = false,
			})
			vim.keymap.set("n", "<leader>cr", "<cmd>CompetiTest run<cr>")
		end,
	},
}
