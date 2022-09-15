local utils = {}

-- change tab width
function utils.tab_width(width)
	vim.bo.tabstop = width
	vim.bo.softtabstop = width
	vim.bo.shiftwidth = width
end

-- lsp completion icons
utils.kind_icons = {
	Text = "",
	Method = "",
	Function = "",
	Constructor = "",
	Field = "",
	Variable = "",
	Class = "",
	Interface = "",
	Module = "",
	Property = "",
	Unit = "",
	Value = "",
	Enum = "",
	Keyword = "",
	Snippet = "",
	Color = "",
	File = "",
	Reference = "",
	Folder = "",
	EnumMember = "",
	Constant = "",
	Struct = "",
	Event = "",
	Operator = "",
	TypeParameter = "",
}

return utils
