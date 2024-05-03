vim.api.nvim_create_user_command("Classifier", function()
	vim.ui.input({ prompt = "Enter start line: " }, function(input)
		for i = 1, 9 do
			vim.cmd([[let @]] .. i .. [[ = '0D"_dd]] .. tonumber(input) + i - 1 .. [[GA, p']])
		end
		vim.cmd([[let @0 = '0D"_dd]] .. tonumber(input) + 9 .. [[GA, p']])
	end)
end, {})

-- vim: ts=2 sts=2 sw=2 noet
