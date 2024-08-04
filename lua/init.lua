
vim.api.nvim_create_augroup('FileTypeSetup', { clear = true })

vim.api.nvim_create_autocmd('BufRead,BufNewFile', {
  group = 'FileTypeSetup',
  pattern = '*.html',
  command = 'setlocal filetype=htmldjango',
})
