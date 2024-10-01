vim.keymap.set({"n", "i"}, "<C-c>", "<Esc>") -- I use this so I can multiline insert with ctrl-c
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>p", [["+p]])
vim.keymap.set("n", "x", [["_x]])

vim.keymap.set("n", "<leader>w", "<C-w>")

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<C-c>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "<leader>gx", [[:!xdg-open "%"<CR>]])
vim.keymap.set("n", "<leader>cd", "<cmd>cd %:p:h<CR>")
vim.keymap.set("n", "<C-M-j>", "<cmd>cnext<cr>")
vim.keymap.set("n", "<C-M-k>", "<cmd>cprev<cr>")

-- vim: ts=2 sts=2 sw=2 noet
