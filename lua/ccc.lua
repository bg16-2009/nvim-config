vim.keymap.set("n", "<leader>cli", function()
	vim.cmd("cd %:p:h")
	local level = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
	os.execute("mv ~/Downloads/ccc/" .. level .. ".zip . >>/tmp/ccc.log")
	os.execute("unzip *.zip >/tmp/ccc.log")

	-- os.execute("mv " .. level .. "_0_example.in main_input0.txt >>/tmp/ccc.log")
	-- os.execute("mv " .. level .. "_0_example.out main_output0.txt >>/tmp/ccc.log")
	local i = 0
	while true do
		local fname = string.format("%s_%d_example.in", level, i)
		if os.rename(fname, fname) == nil then
			break
		end

		os.execute(string.format(
			"mv %s main_input%d.txt >>/tmp/ccc.log 2>&1",
			fname, i
		))

		os.execute(string.format(
			"mv %s_%d_example.out main_output%d.txt >>/tmp/ccc.log 2>&1",
			level, i, i
		))

		i = i + 1
	end


	os.execute("mkdir tests")
	os.execute("mkdir outputs >>/tmp/ccc.log")
	os.execute("mv " .. level .. "_*.in tests >>/tmp/ccc.log")
	vim.notify("ccc - OK")
end)

vim.keymap.set("n", "<leader>cs", function()
	os.execute("ccc-runner.sh >>/tmp/ccc.log")
	os.execute("dragon-drop outputs/* >>/tmp/ccc.log")
end)
