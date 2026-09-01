vim.pack.add({{
	src='https://github.com/ibhagwan/fzf-lua'
}})
vim.keymap.set({'n'}, '<leader><leader>', '<cmd>FzfLua files<cr>')
