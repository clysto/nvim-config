local util = require("formatter.util")
local function latexindent()
	return {
		exe = "latexindent",
		args = { "-" },
		stdin = true,
	}
end
require("formatter").setup({
	logging = true,
	log_level = vim.log.levels.WARN,
	filetype = {
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
		python = {
			require("formatter.filetypes.python").black,
			require("formatter.filetypes.python").isort,
		},
		c = {
			require("formatter.filetypes.c").clangformat,
		},
		cpp = {
			require("formatter.filetypes.cpp").clangformat,
		},
		javascript = {
			require("formatter.filetypes.javascript").prettier,
		},
		json = {
			require("formatter.filetypes.json").prettier,
		},
		html = {
			require("formatter.filetypes.html").prettier,
		},
		yaml = {
			require("formatter.filetypes.yaml").prettier,
		},
		css = {
			require("formatter.filetypes.css").prettier,
		},
		cmake = {
			require("formatter.filetypes.cmake").cmakeformat,
		},
		go = {
			require("formatter.filetypes.go").gofmt,
		},
		tex = {
			latexindent,
		},
	},
})
