return {
  'ggandor/leap.nvim',
  opts = {
    case_sensitive = false,
  },
  config = function(opts)
    local leap = require 'leap'
    leap.setup(opts)
    leap.set_default_keymaps()
  end,
}
