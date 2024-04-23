return {
  'petertriho/nvim-scrollbar',
  config = function()
    require('scrollbar').setup()
    require('gitsigns').setup()
    require('scrollbar.handlers.gitsigns').setup()
    require('scrollbar.handlers.search').setup()
  end,
  dependencies = { 'neoclide/coc.nvim', 'kevinhwang91/nvim-hlslens' },
}
