vim.opt.showmode = false

-- See :help lualine.txt
require("lualine").setup({
	options = {
		theme = "nightfox",
		icons_enabled = true,
		component_separators = "|",
		section_separators = "",
	},
	sections = {
		lualine_x = { "filetype" },
	},
})
