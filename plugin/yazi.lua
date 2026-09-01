vim.pack.add({
	-- deps
	{
		src='https://github.com/nvim-lua/plenary.nvim'
	},
	{
		src='https://github.com/mikavilpas/yazi.nvim'
	}
})

vim.keymap.set({'n', 'v'}, "<leader>e", "<cmd>Yazi<cr>")
vim.keymap.set('n', "<c-up>", "<cmd>Yazi toggle<cr>")
