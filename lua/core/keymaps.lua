vim.keymap.set("n", "<C-d>", "15jzz")
vim.keymap.set("n", "<C-u>", "15kzz")

--keep visual selection when indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

--keymaps
vim.keymap.set("x", "<leader>p", [["_dP]])

--page up down
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")


--move selected text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--clipboard
vim.keymap.set({'n', 'x'}, 'cp', '"+y')
vim.keymap.set({'n', 'x'}, 'cv', '"+p')

--switch window focus
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')

if not vim.g.vscode then
	--delete word ctrl+backspace
    vim.keymap.set('i', '<C-BS>', '<C-w>')

	--nvim tree
    vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>')

	-- telescope
	vim.keymap.set('n', '<leader>?', '<cmd>Telescope oldfiles<cr>')
	vim.keymap.set('n', '<leader><space>', '<cmd>Telescope buffers<cr>')
	vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
	vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
	vim.keymap.set('n', '<leader>fd', '<cmd>Telescope diagnostics<cr>')
	vim.keymap.set('n', '<leader>fc', '<cmd>Telescope current_buffer_fuzzy_find<cr>')
	vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')
	vim.keymap.set('n', '<leader>fs', '<cmd>Telescope lsp_document_symbols<cr>')

	--floaterm
	vim.keymap.set('n', '<leader>tn', '<cmd>FloatermNew<cr>')
	vim.keymap.set('n', '<C-\\>', '<cmd>FloatermToggle<cr>')
	vim.keymap.set('t', '<C-\\>', '<cmd>FloatermToggle<cr>')
	vim.keymap.set('t', '<C-h>', '<cmd>FloatermPrev<cr>')
	vim.keymap.set('t', '<C-l>', '<cmd>FloatermNext<cr>')
	vim.keymap.set('t', '<C-x>', '<cmd>FloatermKill<cr>')

	--bufferline
	vim.keymap.set('n', 'L', ':BufferLineCycleNext<CR>')
	vim.keymap.set('n', 'H', ':BufferLineCyclePrev<CR>')

	--close buffer
	vim.keymap.set('n', '<leader>x', '<cmd>Bdelete<cr>')

	--git signs keymps
	vim.keymap.set('n', '<leader>gd', '<cmd>Gitsigns diffthis<cr>')
	vim.keymap.set('n', '<leader>gb', '<cmd>Gitsigns blame_line<cr>')
	vim.keymap.set('n', '<leader>gp', '<cmd>Gitsigns prev_hunk<cr>')
	vim.keymap.set('n', '<leader>gn', '<cmd>Gitsigns next_hunk<cr>')


end
