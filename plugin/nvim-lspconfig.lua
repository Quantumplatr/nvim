vim.pack.add({{
	src = 'https://github.com/neovim/nvim-lspconfig',
}})
vim.lsp.enable({ 'lua_ls' })
vim.lsp.enable({ 'rust_analyzer' })
vim.lsp.enalbe({ 'roslyn_ls' }) -- C#
