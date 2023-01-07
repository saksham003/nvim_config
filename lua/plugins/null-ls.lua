local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

null_ls.setup({
	debug = false,
	sources = {

		--formatting
		formatting.prettier.with({
			extra_filetypes = { "toml" },
			extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
		}),
		formatting.stylua,

		--diagnostics
		diagnostics.eslint,

		--code_actions
		code_actions.eslint,
	},
})
