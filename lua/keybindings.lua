local utils = require("utils")
vim.g.mapleader = " "

local bufopts = { noremap = true, silent = true, buffer = bufnr }
vim.keymap.set("n", "<leader>q", ":bd<CR>", bufopts)
vim.keymap.set("n", "<C-p>", ":Telescope find_files<CR>", bufopts)
vim.keymap.set("n", "<leader>b", ":Telescope buffers<CR>", bufopts)
vim.keymap.set("n", "<CS-f>", ":Telescope live_grep<CR>", bufopts)
vim.keymap.set("n", "<leader>tr", ":Telescope resume<CR>", bufopts)
vim.keymap.set("n", "<leader>f", ":Telescope file_browser initial_mode=normal<CR>", bufopts)
vim.keymap.set("n", "<leader>X", ":wqa<CR>", bufopts)
vim.keymap.set("n", "ff", ":Format<CR>", bufopts)
vim.keymap.set("n", "<C-s>", ":update<CR>", bufopts)
vim.keymap.set("i", "<C-s>", "<C-O>:update<CR>", bufopts)
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, bufopts)
vim.keymap.set("n", "<C-u>", "9<C-u>", bufopts)
vim.keymap.set("n", "<C-d>", "9<C-d>", bufopts)
vim.keymap.set("n", "*", "*N", bufopts)
vim.keymap.set("n", "#", "#N", bufopts)
vim.keymap.set("n", "<leader>nl", ":nohlsearch<CR>", bufopts)
vim.keymap.set("n", "H", "^", bufopts)
vim.keymap.set("n", "L", "$", bufopts)
-- change tab width
vim.keymap.set("n", "tw", function()
	if vim.v.count > 0 then
		utils.tab_width(vim.v.count)
	end
end, bufopts)
for i = 1, 9 do
	vim.keymap.set("n", ("<M-%s>"):format(i), ("<Plug>(cokeline-focus-%s)"):format(i), bufopts)
	vim.keymap.set("n", ("<leader>%s"):format(i), ("<Plug>(cokeline-focus-%s)"):format(i), bufopts)
end
