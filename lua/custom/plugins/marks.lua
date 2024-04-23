vim.keymap.set('n', '<leader>mD', '<Plug>(Marks-deletebuf)<CR>', { desc = '[M]arks: [D]elete all', noremap = true, silent = true })
vim.keymap.set('n', '<leader>md', '<Plug>(Marks-deleteline)<CR>', { desc = '[M]arks: [d]elete line', noremap = true, silent = true })

return {
  'chentoast/marks.nvim',
  config = function()
    require('marks').setup()
  end,
}
