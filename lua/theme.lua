local c = require("vscode.colors")
require("vscode").setup({
	group_overrides = {
		TabLineFill = { fg = c.vscFront, bg = c.vscBack },
	},
})
require("nvim-treesitter.configs").setup({
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})
require("indent_blankline").setup({})
