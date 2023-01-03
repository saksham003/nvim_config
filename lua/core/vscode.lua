vim.keymap.set("n", "<leader>x", function() vim.fn.VSCodeNotify("workbench.action.closeActiveEditor") end)
vim.keymap.set("n", "<leader>X", function() vim.fn.VSCodeNotify("workbench.action.reopenClosedEditor") end)
vim.keymap.set("n", "<leader>e", function() vim.fn.VSCodeNotify("workbench.files.action.showActiveFileInExplorer") end)
vim.keymap.set("n", "<leader>et", function() vim.fn.VSCodeNotify("workbench.action.toggleSidebarVisibility") end)
vim.keymap.set("n", "<leader>f", function() vim.fn.VSCodeNotify("workbench.action.quickOpen") end)
vim.keymap.set("v", "<leader>/", function() vim.fn.VSCodeNotifyVisual("editor.action.commentLine", 1) end)

-- next/prev editor
vim.keymap.set("n", "L", function() vim.fn.VSCodeNotify("workbench.action.nextEditor") end)
vim.keymap.set("n", "H", function() vim.fn.VSCodeNotify("workbench.action.previousEditor") end)

-- comment
vim.keymap.set("v", "gc", "<Plug>VSCodeCommentary")
vim.keymap.set("n", "gcc", "<Plug>VSCodeCommentaryLine")

-- goto next/prev git hunk
vim.keymap.set("n", "<leader>gn", function() vim.fn.VSCodeNotify("workbench.action.editor.nextChange") end)
vim.keymap.set("n", "<leader>gp", function() vim.fn.VSCodeNotify("workbench.action.editor.previousChange") end)
