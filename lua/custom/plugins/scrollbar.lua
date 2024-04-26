return {
  'petertriho/nvim-scrollbar',
  config = function()
    require('scrollbar').setup {
      handle = {
        text = '  ',
      },
      marks = {
        Cursor = { text = '💠' },
        Search = { text = { '--', '==' }, color = '#FFFF00' },
        Error = { text = { '--', '==' } },
        Warn = { text = { '--', '==' } },
        Info = { text = { '--', '==' } },
        Hint = { text = { '--', '==' } },
        Misc = { text = { '--', '==' } },
      },
    }
    require('gitsigns').setup()
    require('scrollbar.handlers.gitsigns').setup()
    require('scrollbar.handlers.search').setup()
  end,
  dependencies = {
    -- 'neoclide/coc.nvim',
    'kevinhwang91/nvim-hlslens',
  },
}
