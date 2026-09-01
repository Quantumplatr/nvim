-- Define hooks via autocommands(s)
-- Add all plugins at once

-- Colorscheme
vim.cmd.set('termguicolors')
vim.pack.add({ 'https://github.com/EdenEast/nightfox.nvim' })
vim.cmd.colorscheme('terafox')

-----------------
---- Keymaps ----
-----------------

vim.pack.add({ { src = 'https://github.com/folke/which-key.nvim', } })
local wk = require("which-key")

vim.keymap.set('n', '<leader>?', function() wk.show({ global = false }) end)

-- Define Leader as <Space>
vim.g.mapleader = " "

-- Code (<leader>c)
wk.add({ "<leader>c", group = "code" })
vim.keymap.set('n', '<leader>ca', '<cmd>FzfLua lsp_code_actions<cr>', { desc = 'Code actions' })
vim.keymap.set('n', '<leader>cd', '<cmd>FzfLua lsp_document_diagnostics<cr>', { desc = 'Document diagnostics' })
vim.keymap.set('n', '<leader>cf', function() vim.lsp.buf.format() end, { desc = 'Format code' })

-- Debug (<leader>d)
wk.add({ "<leader>d", group = "debug" })

-- File (<leader>f)
wk.add({ "<leader>f", group = "file" })

-- git (<leader>g)
wk.add({ "<leader>g", group = "ui" })

-- UI (<leader>u)
wk.add({ "<leader>u", group = "ui" })
vim.keymap.set('n', '<leader>uc', '<cmd>FzfLua colorschemes<cr>', { desc = 'Change colorscheme' })

-- Searching (<leader>s)
wk.add({ "<leader>s", group = "search" })
vim.keymap.set('n', '<leader>/', '<cmd>FzfLua grep_project<cr>', { desc = 'Search buffers' })
vim.keymap.set('n', '<leader>sb', '<cmd>FzfLua buffers<cr>', { desc = 'Search buffers' })
vim.keymap.set('n', '<leader>sk', '<cmd>FzfLua keymaps<cr>', { desc = 'Search keymaps' })
vim.keymap.set('n', '<leader>ss', '<cmd>FzfLua lsp_document_symbols<cr>', { desc = 'Search document symbols' })

-- Windows (<leader>w)
wk.add({ "<leader>w", proxy = "<c-w>", group = "windows" })

vim.keymap.set('n', '<leader>-', '<c-w>s', { desc = 'Split window below' })
vim.keymap.set('n', '<leader>|', '<c-w>v', { desc = 'Split window right' })

vim.keymap.set('n', '<C-h>', '<C-W>h', { desc = 'Move left a window' })
vim.keymap.set('n', '<C-j>', '<C-W>j', { desc = 'Move down a window' })
vim.keymap.set('n', '<C-k>', '<C-W>k', { desc = 'Move up a window' })
vim.keymap.set('n', '<C-l>', '<C-W>l', { desc = 'Move right a window' })

-- Diagnositcs (<leader>x)
wk.add({ "<leader>x", group = "diagnostics" })

-- Tabs (<leader><tab>)
wk.add({ "<leader><tab>", group = "tabs" })

-- Default options
vim.cmd.set('rnu') -- Relative line number
