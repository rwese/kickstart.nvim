return {
  'tpope/vim-fugitive',
  conf = function()
    local fugitive = require 'fugitive'

    fugitive.setup {}
  end,
}
