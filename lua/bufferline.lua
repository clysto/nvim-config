local get_hex = require("cokeline/utils").get_hex

require("cokeline").setup({
	show_if_buffers_are_at_least = 2,
	buffers = {
		focus_on_delete = "prev",
	},
	default_hl = {
		fg = function(buffer)
			return buffer.is_focused and get_hex("StatusLine", "fg") or get_hex("LineNr", "fg")
		end,
		bg = function(buffer)
			return buffer.is_focused and get_hex("StatusLine", "bg") or get_hex("Normal", "bg")
		end,
	},
	components = {
		{
			text = function(buffer)
				return " " .. buffer.devicon.icon
			end,
			fg = function(buffer)
				return buffer.devicon.color
			end,
		},
		{
			text = function(buffer)
				return buffer.index .. ": " .. buffer.filename
			end,
			style = function(buffer)
				return buffer.is_focused and "bold" or nil
			end,
		},
		{
			text = function(buffer)
				return buffer.is_modified and "   " or "    "
			end,
		},
		{
			text = " ",
			delete_buffer_on_left_click = true,
		},
	},
})
