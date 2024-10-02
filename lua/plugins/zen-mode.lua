return {
	"folke/zen-mode.nvim",
	opts = {
		window = {
			backdrop = 0.95,
			width = 1,
			height = 1,
			options = {
				-- signcolumn = "no", -- disable signcolumn
				-- number = false, -- disable number column
				-- relativenumber = false, -- disable relative numbers
				-- cursorline = false, -- disable cursorline
				-- cursorcolumn = false, -- disable cursor column
				-- foldcolumn = "0", -- disable fold column
				-- list = false, -- disable whitespace characters
			},
		},
		plugins = {
			options = {
				enabled = true,
				ruler = false,
				showcmd = false,
				laststatus = 0,
			},
			twilight = { enabled = false },
			gitsigns = { enabled = false },
			tmux = { enabled = true },
			todo = { enabled = false },
			kitty = {
				enabled = false,
				-- font = "+4",
			},
			alacritty = {
				enabled = false,
				-- font = "14",
			},
			wezterm = {
				enabled = false,
				-- font = "+4",
			},
			neovide = {
				enabled = false,
				-- scale = 1.2,
				disable_animations = {
					neovide_animation_length = 0,
					neovide_cursor_animate_command_line = false,
					neovide_scroll_animation_length = 0,
					neovide_position_animation_length = 0,
					neovide_cursor_animation_length = 0,
					neovide_cursor_vfx_mode = "",
				},
			},
		},
		on_open = function(win) end,
		on_close = function() end,
	},
	config = function()
		vim.keymap.set("n", "<leader>zn", "<Cmd>ZenMode<CR>")
	end,
}
