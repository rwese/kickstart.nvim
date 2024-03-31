return {
  'Exafunction/codeium.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'hrsh7th/nvim-cmp',
  },
  config = function()
    require('codeium').setup {}
    local cmp = require 'cmp'
    local luasnip = require 'luasnip'
    luasnip.config.setup {}
    cmp.setup {
      sources = {
        { name = 'codeium' },
      },
    }

    vim.g.codeium_enabled = true -- Enable Codeium by default
    vim.g.codeium_idle_delay = 500 -- Set the idle delay (in milliseconds)
    vim.keymap.set('i', '<S-left>', function()
      return vim.fn['codeium#Complete']()
    end, { expr = true })
    -- vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true })
    -- vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
    -- vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
    -- vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
  end,
}
