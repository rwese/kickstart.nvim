return {
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
    config = function()
      require('gitsigns').setup()

      vim.keymap.set('n', '<leader>gp', '<CMD>Gitsigns preview_hunk<CR>', { desc = '[G]it [p]review hunk' })
      vim.keymap.set({ 'n', 'v' }, '<leader>ghr', '<CMD>Gitsigns reset_hunk<CR>', { desc = '[G]it [h]unk [r]eset' })

      vim.keymap.set('n', '<leader>gb', '<CMD>Gitsigns blame_line<CR>', { desc = '[G]it [b]lame line' })
      vim.keymap.set('n', '<leader>gB', '<CMD>Git blame<CR>', { desc = '[G]it [B]lame' })

      vim.keymap.set('n', '<leader>Ghd', '<CMD>Gitsigns next_hunk<CR>', { desc = '[G]it next [h]unk [d]own' })
      vim.keymap.set('n', '<leader>Ghu', '<CMD>Gitsigns prev_hunk<CR>', { desc = '[G]it next [h]unk [u]p' })
    end,
  },
}
