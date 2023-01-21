-- See :help nvim-treesitter-modules
require("nvim-treesitter.configs").setup({
	highlight = {
		enable = true,
	},
	ensure_installed = {},
})
-- for windows
require("nvim-treesitter.install").prefer_git = false
require("nvim-treesitter.install").compilers = { "gcc" }
