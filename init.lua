vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.swapfile = false
vim.g.mapleader = " "
vim.o.winborder = "rounded"
vim.o.termguicolors = true

vim.pack.add({
 { src = "https://github.com/stevearc/oil.nvim.git" },
 { src = "https://github.com/nvim-mini/mini.pick.git" },
 { src = 'https://github.com/neovim/nvim-lspconfig' },
})

vim.lsp.enable({"lua_ls", "ts_ls", "angularls"})

require('mini.pick').setup()
require('oil').setup()

vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>s', ':source<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')
vim.keymap.set('n', '<leader>e', ':$<CR>')
vim.keymap.set('n', '<leader>pf', ':Pick files<CR>')
vim.keymap.set('n', '<leader>pg', ':Pick grep_live<CR>')
vim.keymap.set('i', '<C-Space>', '<C-x><C-o>')
vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition)
vim.keymap.set('n', '<leader>lh', vim.lsp.buf.hover)
vim.cmd('set completeopt+=noselect')

