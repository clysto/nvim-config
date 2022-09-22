local utils = require("utils")
local autocmd = vim.api.nvim_create_autocmd

autocmd("FileType", {
	pattern = { "make", "go", "lua", "tex" },
	callback = function()
		vim.bo.expandtab = false
	end,
})

autocmd("FileType", {
	pattern = { "lua", "javascript", "html", "css", "yaml", "json" },
	callback = function()
		utils.tab_width(2)
	end,
})

autocmd("TermOpen", {
	pattern = "term://*",
	callback = function()
		local opts = { buffer = 0 }
		vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
	end,
})
