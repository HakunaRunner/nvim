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
 { src = 'https://github.com/nvim-mini/mini.pick.git' },
 { src = 'https://github.com/nvim-mini/mini.files.git' },
 { src = 'https://github.com/nvim-mini/mini.icons.git' },
 { src = 'https://github.com/nvim-mini/mini-git.git'},
 { src = 'https://github.com/neovim/nvim-lspconfig' },
 { src = 'https://github.com/HakunaRunner/monoruby.nvim' },
})

vim.lsp.enable({"lua_ls", "ts_ls", "angularls"})

require('mini.pick').setup()
require('mini.files').setup()
require('mini.icons').setup()
require('mini.git').setup()

vim.cmd.colorscheme("monoruby")
vim.keymap.set('n', '<leader>c', ':e ~/.config/nvim/init.lua<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')
vim.keymap.set('n', '<leader>e', ':lua MiniFiles.open()<CR>')
vim.keymap.set('n', '<leader>pf', ':Pick files<CR>')
vim.keymap.set('n', '<leader>pg', ':Pick grep_live<CR>')
vim.keymap.set('i', '<C-Space>', '<C-x><C-o>')
vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition)
vim.keymap.set('n', '<leader>lh', vim.lsp.buf.hover)
vim.keymap.set('n', '<leader>la', vim.lsp.buf.code_action)
vim.keymap.set('n', '<leader>dg', vim.diagnostic.open_float)
vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true })
vim.keymap.set("n", "<C-Up>",    ":resize -2<CR>")
vim.keymap.set("n", "<C-Down>",  ":resize +2<CR>")
vim.keymap.set("n", "<C-Left>",  ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")
vim.keymap.set("n", "<leader>sv", "<C-w>v")
vim.keymap.set("n", "<leader>sh", "<C-w>s")
vim.cmd('set completeopt+=noselect')
