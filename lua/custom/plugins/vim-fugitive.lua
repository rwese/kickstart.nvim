vim.keymap.set('n', '<leader>gc', '<cmd>Git commit<CR>', { desc = 'Git commit' })
vim.keymap.set('n', '<leader>gg', '<cmd>Git<CR>', { desc = 'Git status' })

return {
  'tpope/vim-fugitive',
}
