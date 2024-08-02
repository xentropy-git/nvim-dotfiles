require("config.lazy")

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.number = true
vim.opt.showmode = false
vim.keymap.set('n', '<C-n>', ':NERDTreeToggle<CR>', { desc = "Toggle NERDTree" })
vim.opt.clipboard = 'unnamedplus'


