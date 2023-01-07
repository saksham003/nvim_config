local group = vim.api.nvim_create_augroup("user_cmds", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
	pattern = "lua",
	group = group,
	callback = function()
		vim.opt_local.shiftwidth = 2
		vim.opt_local.tabstop = 2
		vim.opt_local.softtabstop = 2
	end,
})
