vim.keymap.set('n', '<leader>gc', '<cmd>Git commit<CR>', { desc = '[G]it [c]ommit' })
vim.keymap.set('n', '<leader>gs', '<cmd>Git<CR>', { desc = '[G]it [s]tatus' })

return {
  'tpope/vim-fugitive',
}
