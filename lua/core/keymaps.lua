vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.number = true
vim.opt.showmode = false
vim.keymap.set('n', '<C-n>', ':NERDTreeToggle<CR>', { desc = "Toggle NERDTree" })
vim.opt.clipboard = 'unnamedplus'

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true
