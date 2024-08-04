vim.g.mapleader = ' '
vim.opt.number = true
vim.opt.showmode = false
vim.keymap.set('n', '<C-n>', ':NERDTreeToggle<CR>', { desc = "Toggle NERDTree" })
vim.opt.clipboard = 'unnamedplus'

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-a>", 'copilot#Accept("<CR>")', { silent = true, expr = true })


