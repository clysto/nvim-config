require("nvim-autopairs").setup({})
require("telescope").setup({
	fzf = {
		fuzzy = true,
		override_generic_sorter = true,
		override_file_sorter = true,
		case_mode = "smart_case",
	},
})
require("telescope").load_extension("file_browser")
require("telescope").load_extension("fzf")
require("Comment").setup()
require("gitsigns").setup({
	on_attach = function(bufnr)
		local gs = package.loaded.gitsigns
		local bufopts = { noremap = true, silent = true, buffer = bufnr }
		vim.keymap.set("n", "<leader>hp", gs.preview_hunk, bufopts)
	end,
})
