return {
  'Exafunction/codeium.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'hrsh7th/nvim-cmp',
  },
  config = function()
    require('codeium').setup {
      enabled = true, -- Enable Codeium by default
      idle_delay = 500, -- Set the idle delay (in milliseconds)
      keymaps = {
        accept = '<C-.>', -- Set the keymap to accept the completion
        -- cycle_completions = '<C-,>', -- Set the keymap to cycle through completions (uncomment if needed)
        -- clear = '<C-x>', -- Set the keymap to clear the current completion (uncomment if needed)
      },
    }
  end,
}
